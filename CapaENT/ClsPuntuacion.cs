using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaENT
{
    public class ClsPuntuacion
    {
        #region atributos
        private int id;
        private string nombre;
        private int puntuacion;
        #endregion

        #region propiedades
        public int Id
        {
            get { return id; }
        }
        public string Nombre
        {
            get { return nombre; }
            set { nombre = value; }
        }

        public int Puntuacion
        {
            get { return puntuacion; }
            set { puntuacion = value; }
        }
        #endregion

        #region constructores
        public ClsPuntuacion()
        {

        }

        [JsonConstructor] // Para no tener que poner set en la puntuacion, usamos este constructor con JsonConstructor para que el
                          // deserializador del metodo getPuntuaciones() reconozca la puntuacion y pueda crear las pyuntuaciones con todos sus datos
        public ClsPuntuacion(int id, string nombre, int puntuacion)
        {
            this.id = id;
            this.nombre = nombre;
            this.puntuacion = puntuacion;
        }
        #endregion
    }
}
    