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
        /// 
        /// </summary>
        /// <returns></returns>
        public static List<ClsPuntuacion> listadoPuntuacionesBL()
        {
            return ClsManejadoraPartidasDAL.listadoPuntuacionesDAL();
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="puntuacion"></param>
        /// <returns></returns>
        public static int insertarPuntuacionBL(ClsPuntuacion puntuacion)
        {
            return ClsManejadoraPartidasDAL.insertarPuntuacionDAL(puntuacion);
        }
    }
}
