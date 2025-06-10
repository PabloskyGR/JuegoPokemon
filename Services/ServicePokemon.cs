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
        /// Servicio para obtener un listado de pokemons de la api publica
        /// </summary>
        /// <param name="offset">Parametro de entrada que sirve para saber por donde empezar a coger pokemons, asi seleccionamos la generacion</param>
        /// <param name="limit">Parametro de entrada que que sirve el limite de que pokemons hay que coger, asi seleccionamos la generacion los limites</param>
        /// <returns>Devuelve el listado de pokemons dpendiendo de la generacion que elija el usuario</returns>
        /// <exception cref="Exception"></exception>
        public static async Task<List<ClsPokemon>> getPokemon(int offset, int limit)
        {
            string miCadenaUrl = $"{baseUrl}?offset={offset}&limit={limit}";

            List<ClsPokemon> listadoPokemon = new List<ClsPokemon>();
            HttpClient miHttpClient = new HttpClient();
            HttpResponseMessage miCodigoRespuesta;
            string textoJsonRespuesta;

            try
            {
                miCodigoRespuesta = await miHttpClient.GetAsync(miCadenaUrl);

                if (miCodigoRespuesta.IsSuccessStatusCode)
                {
                    textoJsonRespuesta = await miCodigoRespuesta.Content.ReadAsStringAsync();
                    var objetoRespuesta = JsonConvert.DeserializeObject<dynamic>(textoJsonRespuesta);

                    foreach (var resultado in objetoRespuesta.results)
                    {
                        string urlPokemon = resultado.url;
                        HttpResponseMessage respuestaPokemon = await miHttpClient.GetAsync(urlPokemon);

                        if (respuestaPokemon.IsSuccessStatusCode)
                        {
                            string jsonPokemon = await respuestaPokemon.Content.ReadAsStringAsync();
                            var datosPokemon = JsonConvert.DeserializeObject<dynamic>(jsonPokemon);

                            string nombre = datosPokemon.name.ToString().ToUpper()[0] + datosPokemon.name.ToString().Substring(1);
                            string urlImagen = datosPokemon.sprites.front_default;

                            listadoPokemon.Add(new ClsPokemon(nombre, urlImagen));
                        }
                    }
                }
                else
                {
                    listadoPokemon = null;
                }

                miHttpClient.Dispose();
            }
            catch (Exception)
            {
                throw new Exception("No se pudo obtener el listado de Pokémon");
            }

            return listadoPokemon;
        }



    }
}
