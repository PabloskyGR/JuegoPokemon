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
            // LLenamos el listado de generaciones con strings para mostrar en la vista
            generaciones = new List<string>()
            {
                "--Seleccione una generación--", "Generación 1", "Generación 2", "Generación 3", "Generación 4", "Generación 5", "Generación 6", "Generación 7", "Generación 8", "Generación 9"
            };
            // Inicializamos la genercion seleccionada con la primera opcion de la lista, que es la opcion predeterminada
            generacionSeleccionada = generaciones[0];
            botonGeneracionCommand = new DelegateCommand(jugar, puedeJugar);

            // Inicializamos los atributos para que no se muestren antes de darle al boton de jugar
            mostrarPreparacion = false;
            mostrarCargando = false;
            contadorPreparacion = 0;
        }
        #endregion

        #region métodos
        /// <summary>
        /// Método que se ejecutará cuando se pulse el command de jugar
        /// </summary>
        private async void jugar()
        {

            // Como ya ha pulsado el boton de jugar, ponemos a true el mostrarCargando para que muestre el activityIndicator y el label mientras cargan los pokemons de la pi
            mostrarCargando = true;
            NotifyPropertyChanged(nameof(MostrarCargando));

            // Rellenamos el listado de pokemons con los pokemons de la generacion seleccionada
            listadoPokemons = await obtenerPokemons();

            // Una vez el listado se haya llenado, ponemos a false el mostrarCargando para que se quite el activityIndicator y el label y ponemos a true el mostrarPreparacion
            // y le damos el valor al contador de 5 segundos y comenzamos el timer para la cuenta atras
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

        /// <summary>
        /// Método para la cuenta atras del contador para iniciar la pertida
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private async void contadorTimer_Tick(object sender, EventArgs e)
        {
            // En caso de que en el contador queden aun segundos, se va restando uno al tiempo y se notifica a la vista
            if (ContadorPreparacion > 0)
            {
                contadorPreparacion--;
                NotifyPropertyChanged(nameof(ContadorPreparacion));
            }
            else
            {
                // Una vez el contador sea 0, el timer se para, para que no se ponga en valores negativos y ponemos a false el mostrarPreparacion, y navegamos a la vista del juego ya que esta el juego listo
                contadorTimer.Stop();
                mostrarPreparacion = false;
                NotifyPropertyChanged(nameof(MostrarPreparacion));

                await Application.Current.MainPage.Navigation.PushAsync(new JuegoPage(listadoPokemons));
            }
        }

        /// <summary>
        /// Método para usar el canExecute del command y poder jugar solo si se ha seleccionado una generacion
        /// </summary>
        /// <returns></returns>
        private bool puedeJugar()
        {
            bool puedeJugar = false;

            // En caso de que se haya seleccionado una generacion distinta de la predeterminada, se puede jugar
            if (generacionSeleccionada != "--Seleccione una generación--")
            {
                puedeJugar = true;
            }
            return puedeJugar;
        }

        /// <summary>
        /// Método para obetener los pokemons dependiendo de la generacion seleccionada del picker
        /// </summary>
        /// <returns>Devuelve el listado con los pokemons de la generacion seleccionada</returns>
        public async Task<List<ClsPokemon>> obtenerPokemons()
        {
            List<ClsPokemon> listadoPokemons = new List<ClsPokemon>();

            // Como el listado de generaciones son strings, usamos un switch para comprobar cada caso y llamar al servicio de la api de pokemons y obtener los pokemons de la generacion seleccionada
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
