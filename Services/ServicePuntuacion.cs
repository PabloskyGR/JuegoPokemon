using CapaENT;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;

namespace Services
{
    public class ServicePuntuacion
    {
        /// <summary>
        /// 
        /// </summary>
        private static string baseUrl = "http://localhost:5111/api/puntuaciones";

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        /// <exception cref="Exception"></exception>
        public static async Task<List<ClsPuntuacion>> getPuntucaciones()
        {
            string miCadenaUrl = baseUrl;

            List<ClsPuntuacion> listadoPuntuaciones;
            HttpClient miHttpClient;
            HttpResponseMessage miCodigoRespuesta;
            string textoJsonRespuesta;

            listadoPuntuaciones = new List<ClsPuntuacion>();
            miHttpClient = new HttpClient();

            try
            {
                miCodigoRespuesta = await miHttpClient.GetAsync(miCadenaUrl);

                if (miCodigoRespuesta.IsSuccessStatusCode)
                {
                    textoJsonRespuesta = await miCodigoRespuesta.Content.ReadAsStringAsync();
                    miHttpClient.Dispose();

                    listadoPuntuaciones = JsonConvert.DeserializeObject<List<ClsPuntuacion>>(textoJsonRespuesta);
                } else
                {
                    listadoPuntuaciones = null;
                }
            }
            catch (Exception)
            {
                throw new Exception("No se pudo obtener el listado de puntuaciones");
            }

            return listadoPuntuaciones;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="puntuacion"></param>
        /// <returns></returns>
        /// <exception cref="Exception"></exception>
        public static async Task<HttpStatusCode> postPuntuacion(ClsPuntuacion puntuacion)
        {
            string miCadenaUrl = baseUrl;

            HttpClient mihttpClient = new HttpClient();
            string datos;
            HttpContent contenido;

            HttpResponseMessage miRespuesta = new HttpResponseMessage();

            try
            {
                datos = JsonConvert.SerializeObject(puntuacion);
                contenido = new StringContent(datos, System.Text.Encoding.UTF8, "application/json");
                miRespuesta = await mihttpClient.PostAsync(baseUrl, contenido);
            }
            catch (Exception)
            {
                throw new Exception("No se pudo obtener el listado de puntuaciones");
            }

            return miRespuesta.StatusCode;
        }
    }
}
