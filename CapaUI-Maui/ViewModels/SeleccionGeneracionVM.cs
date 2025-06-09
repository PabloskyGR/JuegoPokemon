using CapaUI_Maui.Models.Utils;
using CapaUI_Maui.Views;
using DTO;
using Services;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Microsoft.Maui.Controls;
using System.Windows.Input;

namespace CapaUI_Maui.ViewModels
{
    public class SeleccionGeneracionVM : ClsVMBase
    {
        #region atributos
        private List<string> generaciones;
        private string generacionSeleccionada;
        private DelegateCommand botonGeneracionCommand;
        private IDispatcherTimer contadorTimer;
        private int contadorPreparacion;
        private bool mostrarPreparacion;
        private bool mostrarCargando;

        private List<ClsPokemon> listadoPokemons;
        #endregion

        #region propiedades
        public List<string> Generaciones
        {
            get { return generaciones; }
        }

        public string GeneracionSeleccionada
        {
            get { return generacionSeleccionada; }
            set
            {
                if (generacionSeleccionada != value)
                {
                    generacionSeleccionada = value;
                    botonGeneracionCommand.RaiseCanExecuteChanged();
                    NotifyPropertyChanged(nameof(GeneracionSeleccionada));
                }
            }
        }

        public DelegateCommand BotonGeneracionCommand
        {
            get { return botonGeneracionCommand; }
        }

        public int ContadorPreparacion
        {
            get { return contadorPreparacion; }
        }

        public bool MostrarPreparacion
        {
            get { return mostrarPreparacion; }
        }

        public bool MostrarCargando
        {
            get { return mostrarCargando; }
        }
        #endregion

        #region constructores
        public SeleccionGeneracionVM()
        {
            generaciones = new List<string>()
            {
                "--Seleccione una generación--",
                "Generación 1",
                "Generación 2",
                "Generación 3",
                "Generación 4",
                "Generación 5",
                "Generación 6",
                "Generación 7",
                "Generación 8",
                "Generación 9"
            };
            generacionSeleccionada = generaciones[0];
            botonGeneracionCommand = new DelegateCommand(jugar, puedeJugar);

            mostrarPreparacion = false;
            mostrarCargando = false;
            contadorPreparacion = 0;
        }
        #endregion

        #region métodos
        private async void jugar()
        {

            // Iniciar cuenta regresiva
            mostrarPreparacion = false;
            mostrarCargando = true;
            NotifyPropertyChanged(nameof(MostrarPreparacion));
            NotifyPropertyChanged(nameof(MostrarCargando));

            listadoPokemons = await obtenerPokemons();

            if (listadoPokemons.Count > 0)
            {
                contadorPreparacion = 5;
                mostrarPreparacion = true;
                mostrarCargando = false;
                NotifyPropertyChanged(nameof(MostrarPreparacion));
                NotifyPropertyChanged(nameof(MostrarCargando));
                NotifyPropertyChanged(nameof(ContadorPreparacion));

                contadorTimer = Application.Current.Dispatcher.CreateTimer();
                contadorTimer.Interval = TimeSpan.FromSeconds(1);
                contadorTimer.Tick += contadorTimer_Tick;
                contadorTimer.Start();
            }
        }

        private async void contadorTimer_Tick(object sender, EventArgs e)
        {
            if (ContadorPreparacion > 0)
            {
                contadorPreparacion--;
                NotifyPropertyChanged(nameof(ContadorPreparacion));
            }
            else
            {
                contadorTimer.Stop();
                mostrarPreparacion = false;
                NotifyPropertyChanged(nameof(MostrarPreparacion));

                await Application.Current.MainPage.Navigation.PushAsync(new JuegoPage(listadoPokemons));
            }
        }

        private bool puedeJugar()
        {
            bool puedeJugar = false;

            if (generacionSeleccionada != "--Seleccione una generación--")
            {
                puedeJugar = true;
            }
            return puedeJugar;
        }

        public async Task<List<ClsPokemon>> obtenerPokemons()
        {
            // Llamada a la API y navegación
            List<ClsPokemon> listadoPokemons = new List<ClsPokemon>();

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

            return listadoPokemons;
        }
        #endregion
    }
}
