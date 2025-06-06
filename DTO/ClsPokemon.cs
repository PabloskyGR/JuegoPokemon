using System;
using Newtonsoft.Json;

namespace DTO
{
    public class ClsPokemon
    {
        #region atributos
        private string nombre;
        private string urlImagen; // URL del sprite del Pokémon (ej. sprites.front_default)
        #endregion

        #region propiedades
        public string Nombre
        {
            get { return nombre; }
        }

        public string UrlImagen
        {
            get { return urlImagen; }
        }
        #endregion

        #region constructores
        public ClsPokemon()
        {
        }

        [JsonConstructor]
        public ClsPokemon(string nombre, string urlImagen)
        {
            this.nombre = nombre;
            this.urlImagen = urlImagen;
        }
        #endregion
    }
}