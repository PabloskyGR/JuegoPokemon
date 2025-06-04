using CapaUI_Maui.Models.Utils;
using CapaUI_Maui.Views;
using DTO;
using Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaUI_Maui.ViewModels
{
    public class SeleccionGeneracionVM
    {
        #region atributos
        private List<string> generaciones;
        private string generacionSeleccionada;
        private DelegateCommand botonGeneracionCommand;
        #endregion

        #region propiedades
        public List<string> Generaciones
        {
            get { return generaciones; }
        }

        public string GeneracionSeleccionada
        {
            get { return generacionSeleccionada; }
            set { generacionSeleccionada = value; }
        }

        public DelegateCommand BotonGeneracionCommand
        {
            get { return botonGeneracionCommand; }
        }
        #endregion

        #region constructores
        public SeleccionGeneracionVM()
        {
            generaciones = new List<string>() { "--Seleccione una generación--", "Generación 1", "Generación 2", "Generación 3", "Generación 4", "Generación 5", "Generación 6", "Generación 7", "Generación 8", "Generación 9" };
            generacionSeleccionada = generaciones[0];
            botonGeneracionCommand = new DelegateCommand(jugar/*, puedeJugar*/);
        }
        #endregion

        #region metodos
        public async void jugar()
        {
            List<ClsPokemon> listadoPokemons = new List<ClsPokemon>();

            if (generacionSeleccionada != "--Seleccione una generación--")
            {
                switch (generacionSeleccionada)
                {
                    case "Generación 1":
                        listadoPokemons = await ServicePokemon.getPokemon(0, 151); 
                        break;
                    case "Generación 2":
                        listadoPokemons = await ServicePokemon.getPokemon(151, 100); 
                        break;
                    case "Generación 3":
                        listadoPokemons = await ServicePokemon.getPokemon(251, 135);
                        break;
                    case "Generación 4":
                        listadoPokemons = await ServicePokemon.getPokemon(386, 107); 
                        break;
                    case "Generación 5":
                        listadoPokemons = await ServicePokemon.getPokemon(493, 156); 
                        break;
                    case "Generación 6":
                        listadoPokemons = await ServicePokemon.getPokemon(649, 72); 
                        break;
                    case "Generación 7":
                        listadoPokemons = await ServicePokemon.getPokemon(721, 88); 
                        break;
                    case "Generación 8":
                        listadoPokemons = await ServicePokemon.getPokemon(809, 96);
                        break;
                    case "Generación 9":
                        listadoPokemons = await ServicePokemon.getPokemon(905, 105); 
                        break;
                    default:
                        listadoPokemons = new List<ClsPokemon>();
                        break;
                }

                await Application.Current.MainPage.Navigation.PushAsync(new JuegoPage(listadoPokemons));

            } else
            {
                await Application.Current.MainPage.DisplayAlert("Error", "Debe seleccionar una generación", "Aceptar");
            }
        }

        //public bool puedeJugar()
        //{
        //    bool habilitar = false;

        //    if (generacionSeleccionada != "--Seleccione una generación--")
        //    {
        //        habilitar = true;
        //    }
             
        //    return habilitar;
        //}
        #endregion
    }
}
