using System;

namespace DTO
{
    public class ClsPokemon
    {
        #region atributos
        private string nombre;
        private string urlImagen; // URL del sprite del Pokémon (ej. sprites.front_default)
        private int id;
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

        public int Id
        {
            get { return id; }
        }
        #endregion

        #region constructores
        public ClsPokemon()
        {
        }

        public ClsPokemon(string nombre, string urlImagen, int id)
        {
            this.nombre = nombre;
            this.urlImagen = urlImagen;
            this.id = id;
        }
        #endregion
    }
}