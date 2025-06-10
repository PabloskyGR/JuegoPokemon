using CapaDAL;
using CapaENT;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaBL
{
    public class ClsManejadoraPartidasBL
    {
        /// <summary>
        /// Método estatico que llama a un metodo de la capa DAL que devuelve el listado de puntuaciones
        /// Pre: La conexion a la base de datos debe estar abierta
        /// Post: Ninguna
        /// </summary>
        /// <returns>Develve el listado de puntuaciones que haya en la base de datos</returns>
        public static List<ClsPuntuacion> listadoPuntuacionesBL()
        {
            return ClsManejadoraPartidasDAL.listadoPuntuacionesDAL();
        }

        /// <summary>
        /// Metodo estatico que llama a un metodo de la capa DAL que inserta una puntuacion en la base de datos
        /// Pre: La conexion a la base de datos debe estar abierta
        /// Post: Ninguna
        /// </summary>
        /// <param name="puntuacion"></param>
        /// <returns>Devuelve el numero de filas afectadas, 1 si se ha insertado y 0 si no se ha insertado nada</returns>
        public static int insertarPuntuacionBL(ClsPuntuacion puntuacion)
        {
            return ClsManejadoraPartidasDAL.insertarPuntuacionDAL(puntuacion);
        }
    }
}
