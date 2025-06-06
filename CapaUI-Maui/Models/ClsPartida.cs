    using CapaENT;
    using CapaUI_Maui.Models.Utils;
    using DTO;
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Runtime.CompilerServices;
    using System.Text;
    using System.Threading.Tasks;

    namespace CapaUI_Maui.Models
    {
        public class ClsPartida : ClsVMBase
        {

            private ClsPokemon pokemonSeleccionado;
            private ClsPokemon pokemonCorrecto;
            private List<ClsPokemon> opciones;
            private bool esCorrecto;

            public ClsPokemon PokemonSeleccionado
        {
                get { return pokemonSeleccionado; }
                set { pokemonSeleccionado = value; comprobarRespuesta();  }
            }

            public ClsPokemon PokemonCorrecto
            {
               get { return pokemonCorrecto; }
            }

            public List<ClsPokemon> Opciones
            {
                get { return opciones; }
            }

            public bool EsCorrecto
            {
                get { return esCorrecto; }
            }
  
            public ClsPartida()
            {
                pokemonCorrecto = new ClsPokemon();
                opciones = new List<ClsPokemon>();
            }

            public ClsPartida(ClsPokemon pokemonCorrecto, List<ClsPokemon> opciones)
            {
                this.pokemonCorrecto = pokemonCorrecto;
                this.opciones = opciones;
                this.pokemonSeleccionado = null;
            }

        private void comprobarRespuesta()
        {
            if (PokemonSeleccionado == null)
            {
                esCorrecto = false;
            }
            else
            {
                esCorrecto = PokemonSeleccionado == PokemonCorrecto;
            }
        }

    }
}
