using CapaENT;
using CapaUI_Maui.Models;
using CapaUI_Maui.Models.Utils;
using CapaUI_Maui.Views;
using DTO;
using Services;
using System.Collections.ObjectModel;

namespace CapaUI_Maui.ViewModels
{
    public class JuegoVM : ClsVMBase
    {
        #region atributos
        // Atributos que solo hara falta en la clase
        private ObservableCollection<ClsPartida> partidas;
        private IDispatcherTimer timerGlobal;
        private IDispatcherTimer mensajeTimer;
        private int indicePartidaActual;

        private List<ClsPokemon> listadoPokemons;

        // Atributos que tendrán una propiedades para que la vista pueda usarlos
        private ClsPartida partidaActual;
        private ClsPokemon pokemonSeleccionado; // Atributo que está también en el modelo pero para que la vista pueda usarlo
        private Color colorMensaje;
        private DelegateCommand botonGuardarCommand;
        private DelegateCommand botonCancelarCommand;
        private int puntos;
        private int rondas;
        private int tiempo;
        private bool mostrarGuardar;
        private bool mostrarJuego;
        private bool mostrarMensaje;
        private string nombreJugador;
        private string mensajePuntos;
        #endregion

        #region propiedades 
        public ClsPartida PartidaActual
        {
            get { return partidaActual; }
        }

        public int Puntos
        {
            get { return puntos; }
        }

        public int Rondas
        {
            get { return rondas; }
        }

        public int Tiempo
        {
            get { return tiempo; }
        }

        public bool MostrarJuego
        {
            get { return mostrarJuego; }
        }

        public bool MostrarGuardar
        {
            get { return mostrarGuardar; }
        }

        public DelegateCommand BotonGuardarCommand
        {
            get { return botonGuardarCommand; }
        }

        public DelegateCommand BotonCancelarCommand
        {
            get { return botonCancelarCommand; }
        }

        public string NombreJugador
        {
            get { return nombreJugador; }
            set { 
                    nombreJugador = value;
                botonGuardarCommand.RaiseCanExecuteChanged();
            }
        }

        public string MensajePuntos
        {
            get { return mensajePuntos; }
        }

        public bool MostrarMensaje
        {
            get { return mostrarMensaje; }
        }

        public Color ColorMensaje
        {
            get { return colorMensaje; }
        }

        public ClsPokemon PokemonSeleccionado
        {
            get { return pokemonSeleccionado; }
            set
            {
                if (partidaActual != null && value != null)
                {
                    partidaActual.PokemonSeleccionado = value;
                    comprobarRespuesta(partidaActual.PokemonSeleccionado); 
                }
            }
        }
        #endregion

        #region constructores
        public JuegoVM()
        {
        }

        public JuegoVM(List<ClsPokemon> listadoPokemons)
        {
            this.listadoPokemons = listadoPokemons;
            partidas = new ObservableCollection<ClsPartida>();
            puntos = 0;
            rondas = 1;
            tiempo = 5;
            mostrarGuardar = false;
            mostrarMensaje = false;
            mostrarJuego = true;
            nombreJugador = "";
            mensajePuntos = "";
            colorMensaje = Colors.Transparent;
            indicePartidaActual = 0;
            pokemonSeleccionado = null;
            botonGuardarCommand = new DelegateCommand(guardarPuntuacion, puedeGuardar);
            botonCancelarCommand = new DelegateCommand(Cancelar);
            iniciarJuego();
        }
        #endregion

        #region Métodos
        private void iniciarJuego()
        {
            crearPartidas();
            siguientePartida();
            iniciarTemporizadorPregunta();
        }

        private void iniciarTemporizadorPregunta()
        {
            tiempo = 5;
            NotifyPropertyChanged(nameof(Tiempo));

            timerGlobal = Application.Current.Dispatcher.CreateTimer();
            timerGlobal.Interval = TimeSpan.FromSeconds(1);
            timerGlobal.Tick += timer_Tick;
            timerGlobal.Start();
        }

        private async void timer_Tick(object sender, EventArgs e)
        {
            if (tiempo > 0)
            {
                tiempo--;
                NotifyPropertyChanged(nameof(Tiempo));
            }
            else
            {
                timerGlobal.Stop(); // Stop any existing timer
                comprobarRespuesta(null);
            }
        }

        private void crearPartidas()
        {
            Random random = new Random();
            for (int i = 0; i < 20; i++)
            {
                ClsPokemon pokemonCorrecto = listadoPokemons[random.Next(listadoPokemons.Count)];

                List<ClsPokemon> opcionesIncorrectas = new List<ClsPokemon>();
                while (opcionesIncorrectas.Count < 3)
                {
                    ClsPokemon opcion = listadoPokemons[random.Next(listadoPokemons.Count)];
                    if (opcion.Nombre != pokemonCorrecto.Nombre && !opcionesIncorrectas.Any(p => p.Nombre == opcion.Nombre))
                    {
                        opcionesIncorrectas.Add(opcion);
                    }
                }

                List<ClsPokemon> opciones = new List<ClsPokemon> { pokemonCorrecto };
                opciones.AddRange(opcionesIncorrectas);
                opciones = opciones.OrderBy(x => random.Next()).ToList();

                ClsPartida partida = new ClsPartida(pokemonCorrecto, opciones);
                partidas.Add(partida);
            }
        }

        private void siguientePartida()
        {
            // Comprobamos si quedan partidas en la lista para jugar, para que asi no siga y evitar un IndexOutOfRangeException
            if (indicePartidaActual < partidas.Count)
            {
                partidaActual = partidas[indicePartidaActual];
                pokemonSeleccionado = null;
                NotifyPropertyChanged(nameof(PartidaActual));
                NotifyPropertyChanged(nameof(Rondas));
                indicePartidaActual++;
            }
        }

        private void comprobarRespuesta(ClsPokemon seleccion)
        {
            timerGlobal.Stop();

            // Mientras hayan menos o igual de 20 rondas se sigue comrpobando las partidas,
            // para asi evitar qyue cuando acaben las partidas no isga la puntuacion restando por no responder
            if (rondas <= 20) 
            {
                if (seleccion == null)
                {
                    puntos -= 1;
                    mensajePuntos = "¡Tiempo agotado! (-1 punto)";
                    colorMensaje = Colors.Orange;
                }
                else if (partidaActual.EsCorrecto)
                {
                    puntos += tiempo;
                    mensajePuntos = $"¡Correcto! (+{tiempo} puntos)";
                    colorMensaje = Colors.Green;
                }
                else
                {
                    puntos -= 1;
                    mensajePuntos = "¡Incorrecto! (-1 punto)";
                    colorMensaje = Colors.Red;
                }

                mostrarMensaje = true;
                NotifyPropertyChanged(nameof(Puntos));
                NotifyPropertyChanged(nameof(MensajePuntos));
                NotifyPropertyChanged(nameof(MostrarMensaje));
                NotifyPropertyChanged(nameof(ColorMensaje));

                mensajeTimer = Application.Current.Dispatcher.CreateTimer();
                mensajeTimer.Interval = TimeSpan.FromSeconds(1);
                mensajeTimer.Tick += mensajeTimer_Tick;
                mensajeTimer.Start();

                rondas++; // Incrementamos ronda aquí, después de evaluar la respuesta
                NotifyPropertyChanged(nameof(Rondas));

                // Volvemos a comprobar para que no se añada una ronda extra y quite un punto por restarse el teimpo
                if (rondas <= 20)
                {
                    siguientePartida();
                    iniciarTemporizadorPregunta();
                }
                else
                {
                    // Final del juego
                    mensajeTimer.Stop();
                    mostrarGuardar = true;
                    mostrarJuego = false;
                    NotifyPropertyChanged(nameof(MostrarGuardar));
                    NotifyPropertyChanged(nameof(MostrarJuego));
                }
            }
        }

        private void mensajeTimer_Tick(object sender, EventArgs e)
        {
            mensajeTimer.Stop();
            mostrarMensaje = false;
            colorMensaje = Colors.Transparent;
            NotifyPropertyChanged(nameof(MostrarMensaje));
            NotifyPropertyChanged(nameof(ColorMensaje));
        }

        private async void guardarPuntuacion()
        {
            if (nombreJugador != string.Empty && nombreJugador != null)
            {
                ClsPuntuacion puntuacion = new ClsPuntuacion(0, nombreJugador, puntos);
                var statusCode = await ServicePuntuacion.postPuntuacion(puntuacion);

                if (statusCode != System.Net.HttpStatusCode.OK)
                {
                    await Application.Current.MainPage.DisplayAlert("Error", $"No se pudo guardar la puntuación. Status: {statusCode}", "OK");
                }
            }

            await Application.Current.MainPage.Navigation.PushAsync(new GeneracionPage());
        }

        private bool puedeGuardar()
        {

            bool guardar = false;

            if (nombreJugador != string.Empty)
            {
                guardar = true;
            }

            return guardar;
        }

        private async void Cancelar()
        {
            await Application.Current.MainPage.Navigation.PushAsync(new GeneracionPage());
        }
        #endregion
    }
}