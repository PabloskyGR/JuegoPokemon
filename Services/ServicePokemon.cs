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
            HttpClient httpClient = new HttpClient();

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
                        string pokemonUrl = result.url;
                        var pokemonResponse = await httpClient.GetAsync(pokemonUrl);

                        if (pokemonResponse.IsSuccessStatusCode)
                        {
                            string pokemonJson = await pokemonResponse.Content.ReadAsStringAsync();
                            var pokemonData = JsonConvert.DeserializeObject<dynamic>(pokemonJson);
                            string nombre = pokemonData.name.ToString().ToUpper()[0] + pokemonData.name.ToString().Substring(1); // Capitalizar primera letra
                            string urlImagen = pokemonData.sprites.front_default;
                            listadoPokemon.Add(new ClsPokemon(nombre, urlImagen));
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                throw new Exception("Error al obtener los datos de la API", ex);
            }

            return listadoPokemon;
        }

       
    }
}
