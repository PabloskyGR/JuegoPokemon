using CapaENT;
using Microsoft.Data.SqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDAL
{
    public class ClsManejadoraPartidasDAL
    {

        private static ClsConexion conexion = new ClsConexion();

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        public static List<ClsPuntuacion> listadoPuntuacionesDAL()
        {
            List<ClsPuntuacion> listadoPuntuaciones = new List<ClsPuntuacion>();

            SqlCommand miComando = new SqlCommand();

            SqlDataReader miLector;

            ClsPuntuacion puntuacion;

            try
            {
                SqlConnection conexionBBDD = conexion.getConnection();

                miComando.CommandText = "select * from Puntuaciones";

                miComando.Connection = conexionBBDD;

                miLector = miComando.ExecuteReader();

                if (miLector.HasRows)
                {
                    while (miLector.Read())
                    {
                        int id = 0;
                        string nombre = "";
                        int puntos = 0;


                        if (miLector["id"] != DBNull.Value)
                        {
                            id = (int)miLector["id"];
                        }
                        if (miLector["nombre"] != DBNull.Value)
                        {
                            nombre = (string)miLector["nombre"];
                        }
                        if (miLector["puntuacion"] != DBNull.Value)
                        {
                            puntos = (int)miLector["puntuacion"];
                        }

                        puntuacion = new ClsPuntuacion(id, nombre, puntos);

                        listadoPuntuaciones.Add(puntuacion);

                    }
                }

                miLector.Close();

                conexionBBDD.Close();
            }

            catch(Exception ex)
            {
                throw ex;
            }

            return listadoPuntuaciones;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="puntuacion"></param>
        /// <returns></returns>
        public static int insertarPuntuacionDAL(ClsPuntuacion puntuacion)
        {
            int numeroFilasAfectadas = 0;

            SqlCommand miComando = new SqlCommand();

            try
            {
                SqlConnection conexionBBDD = conexion.getConnection();
                miComando.Connection = conexionBBDD;

                miComando.CommandText = "INSERT INTO Puntuaciones (nombre, puntuacion) VALUES (@nombre, @puntuacion)";

                miComando.Parameters.Add("@nombre", System.Data.SqlDbType.VarChar).Value = puntuacion.Nombre;
                miComando.Parameters.Add("@puntuacion", System.Data.SqlDbType.Int).Value = puntuacion.Puntuacion;

                numeroFilasAfectadas = miComando.ExecuteNonQuery();
            }

            catch(Exception ex)
            {
                throw ex;
            }

            finally
            {
                if (miComando.Connection.State == System.Data.ConnectionState.Open)
                {
                    miComando.Connection.Close();
                }
            }

            return numeroFilasAfectadas;
        }
    }
}
