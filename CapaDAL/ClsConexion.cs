using Microsoft.Data.SqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDAL
{
    public class ClsConexion
    {
        /// <summary>
        /// Metodo para obtener la conexion a la base de datos de azure 
        /// Pre: Ninguna
        /// Post: Ninguna
        /// </summary>
        /// <returns>Devuelve la conexion</returns>
        public SqlConnection getConnection()
        {
            SqlConnection connection = new SqlConnection();

            try
            {
                connection.ConnectionString = "server=pablosky.database.windows.net;database=PabloskyBBDD;uid=usuario;pwd=LaCampana123;trustServerCertificate=true;";
                connection.Open();
            }
            catch (SqlException ex)
            {
                throw;
            }

            return connection;
        }
    }
}
