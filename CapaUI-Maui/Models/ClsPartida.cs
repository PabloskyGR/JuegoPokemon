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

            private string nombreSeleccionado;
            private ClsPokemon pokemonCorrecto;
            private List<ClsPokemon> opciones;

            public string NombreSeleccionado
            {
                get { return nombreSeleccionado; }
                set { nombreSeleccionado = value; NotifyPropertyChanged(nameof(NombreSeleccionado)); }
            }

            public ClsPokemon PokemonCorrecto
            {
               get { return pokemonCorrecto; }
               set { pokemonCorrecto = value; NotifyPropertyChanged(nameof(PokemonCorrecto)); }
            }

            public List<ClsPokemon> Opciones
            {
                get { return opciones; }
                set { opciones = value; NotifyPropertyChanged(nameof(Opciones)); }
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
                this.nombreSeleccionado = string.Empty;
            }

    }
    }
