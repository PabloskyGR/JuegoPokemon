using DTO;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Services
{
    public class ServicePokemon
    {
        private static string baseUrl = "https://pokeapi.co/api/v2/pokemon";

        /// <summary>
        /// 
        /// </summary>
        /// <param name="offset"></param>
        /// <param name="limit"></param>
        /// <returns></returns>
        /// <exception cref="Exception"></exception>

        public static async Task<List<ClsPokemon>> getPokemon(int offset, int limit)
        {
            List<ClsPokemon> listadoPokemon = new List<ClsPokemon>();
            using (HttpClient httpClient = new HttpClient())
            {
                try
                {
                    string url = $"{baseUrl}?offset={offset}&limit={limit}";
                    HttpResponseMessage response = await httpClient.GetAsync(url);
                    if (response.IsSuccessStatusCode)
                    {
                        string json = await response.Content.ReadAsStringAsync();
                        var responseObject = JsonConvert.DeserializeObject<dynamic>(json);
                        foreach (var result in responseObject.results)
                        {
                            // Obtener detalles de cada Pokémon
                            string pokemonUrl = result.url;
                            var pokemonResponse = await httpClient.GetAsync(pokemonUrl);
                            if (pokemonResponse.IsSuccessStatusCode)
                            {
                                string pokemonJson = await pokemonResponse.Content.ReadAsStringAsync();
                                var pokemonData = JsonConvert.DeserializeObject<dynamic>(pokemonJson);
                                string nombre = pokemonData.name.ToString().ToUpper()[0] + pokemonData.name.ToString().Substring(1); // Capitalizar primera letra
                                string urlImagen = pokemonData.sprites.front_default;
                                int id = (int)pokemonData.id;
                                listadoPokemon.Add(new ClsPokemon(nombre, urlImagen, id));
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    throw new Exception("Error al obtener los datos de la API", ex);
                }
            }
            return listadoPokemon;
        }

        /// <summary>
        /// Obtiene un Pokémon específico por su ID.
        /// </summary>
        /// <param name="id">ID del Pokémon.</param>
        /// <returns>ClsPokemon con nombre, URL de imagen, e ID.</returns>
        public static async Task<ClsPokemon> GetPokemonById(int id)
        {
            using (HttpClient httpClient = new HttpClient())
            {
                try
                {
                    string url = $"{baseUrl}/{id}";
                    HttpResponseMessage response = await httpClient.GetAsync(url);
                    if (response.IsSuccessStatusCode)
                    {
                        string json = await response.Content.ReadAsStringAsync();
                        var pokemonData = JsonConvert.DeserializeObject<dynamic>(json);
                        string nombre = pokemonData.name.ToString().ToUpper()[0] + pokemonData.name.ToString().Substring(1); // Capitalizar primera letra
                        string urlImagen = pokemonData.sprites.front_default;
                        return new ClsPokemon(nombre, urlImagen, id);
                    }
                    throw new Exception($"No se encontró el Pokémon con ID {id}");
                }
                catch (Exception ex)
                {
                    throw new Exception("Error al obtener el Pokémon por ID", ex);
                }
            }
        }
    }
}
