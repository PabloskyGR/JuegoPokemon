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
                    partidaActual.PokemonSeleccionado = value; // Asignamos el valor del seleccionado al pokemon de la partidaActual
                    comprobarRespuesta(partidaActual.PokemonSeleccionado); // Cada vez que hagamos clic en un pokemon, al estar seteandoo la propiedades, comprobamos cada vez si la respuesta es correcta llamando al metodo privado comprobarRespuesta
                }
            }
        }
        #endregion

        #region constructores
        public JuegoVM()
        {
        }

        // Usamos este constructor para poder usar el listado que recibamos de la vista de seleccion de generacion
        public JuegoVM(List<ClsPokemon> listadoPokemons)
        {
            // Inicializamos todos los atributos
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
            botonCancelarCommand = new DelegateCommand(cancelar);
            // Iniciamos la primera ronda del juego
            iniciarJuego();
        }
        #endregion

        #region Métodos
        // Metodo para iniciar el juego que lo llamaremos desde el constructor
        private void iniciarJuego()
        {
            // Creamos las partidas para tener las 20 rondas
            crearPartidas();
            // Iniciamos la primera ronda
            siguientePartida();
            // Iniciamos el temporizador de cada ronda
            iniciarTemporizadorPregunta();
        }

        /// <summary>
        /// Metodo para iniciar el temporizador de cada ronda, que empezara en 5 segundos
        /// </summary>
        private void iniciarTemporizadorPregunta()
        {
            // iniciamos el temporizador en 5 y notificamos a la vista
            tiempo = 5;
            NotifyPropertyChanged(nameof(Tiempo));

            // Creamos el temporizador y llamamos al metodo timer_Tick que se encargara de restar el tiempo
            timerGlobal = Application.Current.Dispatcher.CreateTimer();
            timerGlobal.Interval = TimeSpan.FromSeconds(1);
            timerGlobal.Tick += timer_Tick;
            timerGlobal.Start();
        }

        /// <summary>
        /// Metodo que se encargara de restar el tiempo de cada ronda
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private async void timer_Tick(object sender, EventArgs e)
        {
            // En caso de que quede tiempo restante, se va restando uno al tiempo y se notifica a la vista
            if (tiempo > 0)
            {
                tiempo--;
                NotifyPropertyChanged(nameof(Tiempo));
            }
            // En caso de que no quede tiempo restante, se para el temporizador y se llama al metodo para comprobar la respuesta ya que esta la opción de quedarse sin tiempo, en ese caso
            // hay que comprobar la respuesta que como se ha acabdo el tiempo se da por hecho que no se ha seleccionado nada y por eso enviamos un null
            else
            {
                timerGlobal.Stop();
                comprobarRespuesta(null);
            }
        }

        /// <summary>
        /// Metodo para crear las 20 rondas que usaremos para el juego 
        /// </summary>
        private void crearPartidas()
        {
            Random random = new Random();
            // Para crear las 20 rondas creamos un pokemon correcto y 3 incorrectos
            for (int i = 0; i < 20; i++)
            {
                // Dentro del listado de pokemons que habremos rellenado en el constructor, elegimos uno al azar y lo guardamos como pokemon correcto
                ClsPokemon pokemonCorrecto = listadoPokemons[random.Next(listadoPokemons.Count)];

                // Para coger las otras opciones incorrectas, creamos un listado para guardar las 3 opciones incorrectas
                List<ClsPokemon> opcionesIncorrectas = new List<ClsPokemon>();
                // Mientras no haya 3 opciones incorrectas, elegimos un pokemon al azar y lo anadimos al listado de opciones incorrectas
                while (opcionesIncorrectas.Count < 3)
                {
                    // Cogemos un pokemon al azar
                    ClsPokemon opcion = listadoPokemons[random.Next(listadoPokemons.Count)];
                    // Comprobamos que el pokemon elegido no sea el pokemon correcto y que no este ya en el listado de opciones incorrectas
                    if (opcion.Nombre != pokemonCorrecto.Nombre && !opcionesIncorrectas.Any(p => p.Nombre == opcion.Nombre))
                    {
                        // En caso de que no sea el pokemon correcto y no este en el listado de opciones incorrectas, lo anadimos al listado
                        opcionesIncorrectas.Add(opcion);
                    }
                }
                // Una vez tenemos las 3 opciones incorrectas, y el pokemon correcto, creamos un listado con las 4 opciones y añadimos el pokemon correcto al principio
                List<ClsPokemon> opciones = new List<ClsPokemon> { pokemonCorrecto };
                // Lluego al listado de opciones añadimos el listado de opciones incorrectas
                opciones.AddRange(opcionesIncorrectas);
                // Una vez ya estan añadidas las 4 opciones, las ordenamos al azar
                opciones = opciones.OrderBy(x => random.Next()).ToList();

                // Creamos la partida y le pasamos el listado con las 4 opciones, y el pokemon correcto para saber cual de los 4 es el correcto
                ClsPartida partida = new ClsPartida(pokemonCorrecto, opciones);
                // Añadimos la partida a la lista de partidas
                partidas.Add(partida);
            }
        }

        /// <summary>
        /// Metodo para pasar a la siguiente ronda
        /// </summary>
        private void siguientePartida()
        {
            // Comprobamos si quedan partidas en la lista para jugar, para que asi no siga y evitar un IndexOutOfRangeException
            if (indicePartidaActual < partidas.Count)
            {
                // En caso de que si haya partidas en la lista, se pasa a la siguiente partida, dandole a la partida actual, la siguiente partida del listado de partidas 
                partidaActual = partidas[indicePartidaActual];
                // Ponemos el pokemon seleccionado a null y notificamos a la vista los cambios para que se actualice la partida en la vista
                pokemonSeleccionado = null;
                NotifyPropertyChanged(nameof(PartidaActual));
                // Incrementamos el indice de la partida actual para asi pasar a la siguiente la proxima ronda
                indicePartidaActual++;
            }
        }

        /// <summary>
        /// Metodo para comprobar la respuesta que recibirá la opcion seleccionada por parámetro
        /// </summary>
        /// <param name="seleccion"></param>
        private void comprobarRespuesta(ClsPokemon seleccion)
        {
            // Paramos el temporizador de la ronda
            timerGlobal.Stop();

            // Mientras hayan menos o igual de 20 rondas se sigue comrpobando las partidas,
            // para asi evitar que cuando acaben las partidas no se siga restando los puntos por no responder
            if (rondas <= 20) 
            {
                // Comprobamos si el seleccionado es null (Le pasareemos como dijimos antes, cuando se acabe el tiempo)
                if (seleccion == null)
                {
                    // Restamos un punto por no responder
                    puntos -= 1;
                    // Al atributo del mensaje de los puntos, le pasamos el mensaje de que se ha quedado sin tiempo y que tiene un punto menos
                    mensajePuntos = "¡Tiempo agotado! (-1 punto)";
                    // Para cuando se quede sin tiempo al mensaje le pondremos el color naranja para que visualmente se vea que se ha quedado sin tiempo
                    colorMensaje = Colors.Orange;
                }
                // En caso de que el pokemon seleccionado sea el pokemon correcto
                else if (partidaActual.EsCorrecto)
                {
                    // Sumamos la cantidad de tiempo con el que ha respondido al total de puntos
                    puntos += tiempo;
                    // Al atributo del mensaje de los puntos, le pasamos el mensaje de que ha respondido correctamente y que tiene x puntos mas
                    mensajePuntos = $"¡Correcto! (+{tiempo} puntos)";
                    // Para cuando se responda correctamente al mensaje le pondremos el color verde para que visualmente se vea que se ha respondido correctamente
                    colorMensaje = Colors.Green;
                }
                // En caso de que el pokemon seleccionado sea el pokemon incorrecto
                else
                {
                    // Restamos un punto por fallar
                    puntos -= 1;
                    // Al atributo del mensaje de los puntos, le pasamos el mensaje de que ha fallado y que tiene un punto menos
                    mensajePuntos = "¡Incorrecto! (-1 punto)";
                    // Para cuando se responda incorrectamente al mensaje le pondremos el color rojo para que visualmente se vea que se ha respondido incorrectamente
                    colorMensaje = Colors.Red;
                }

                // Ponemos a true el atributo mostrarMensaje para que se muestre el mensaje de los puntos y notificamos a la vista todos los cambios para que se actualice
                mostrarMensaje = true;
                NotifyPropertyChanged(nameof(Puntos));
                NotifyPropertyChanged(nameof(MensajePuntos));
                NotifyPropertyChanged(nameof(MostrarMensaje));
                NotifyPropertyChanged(nameof(ColorMensaje));

                // Para que el mensaje de los puntos se muestre por un segundo creamos un temporizador el cual tenga de intervalo 1 segundo y llamamos al metodo mensajeTimer_Tick
                // que se encargara de parar el temporizador cuando acabe el segundo del intervalo
                mensajeTimer = Application.Current.Dispatcher.CreateTimer();
                mensajeTimer.Interval = TimeSpan.FromSeconds(1);
                mensajeTimer.Tick += mensajeTimer_Tick;
                mensajeTimer.Start();

                // Incrementamos el numero de rondas y notificamos a la vista
                rondas++;
                NotifyPropertyChanged(nameof(Rondas));

                // Volvemos a comprobar para que no se añada una ronda extra y quite un punto por restarse el teimpo
                if (rondas <= 20)
                {
                    // Como ya hemos comprobado esta ronda, llamamos al metodo siguientePartida para pasar a la siguiente ronda
                    siguientePartida();
                    // Y volvemos a iniciar el temporizador
                    iniciarTemporizadorPregunta();
                }
                // En caso de que se acaben las rondas
                else
                {
                    // Paramos el temporizador de mostrar el mensaje de los puntos
                    mensajeTimer.Stop();
                    // Ponemos a false el mostraJuego para que se quite el juego que ya ha acabado y ponemos a true el mostrarGuardar para que se muestre la pantalla de guardar puntuacion
                    mostrarGuardar = true;
                    mostrarJuego = false;
                    // Notificamos a la vista los cambios para que se quite el juego y se muestre la pantalla de guardar
                    NotifyPropertyChanged(nameof(MostrarGuardar));
                    NotifyPropertyChanged(nameof(MostrarJuego));
                }
            }
        }

        /// <summary>
        /// Metodo para parar el temporizador de mostrar el mensaje de los puntos
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void mensajeTimer_Tick(object sender, EventArgs e)
        {
            // Paramos el temporizador
            mensajeTimer.Stop();
            // Ponemos a false el mostrarMensaje para que se quite el mensaje de los puntos y ponemos a transparente el color del mensaje para que no se vea cuando haya pasado el segundo del intervalo
            mostrarMensaje = false;
            colorMensaje = Colors.Transparent;
            // Notificamos a la vista los cambios para que se quite el mensaje de los puntos y se quite el color del mensaje
            NotifyPropertyChanged(nameof(MostrarMensaje));
            NotifyPropertyChanged(nameof(ColorMensaje));
        }

        /// <summary>
        /// Metodo para guardar la puntuacion cuando acabe el juego
        /// </summary>
        private async void guardarPuntuacion()
        {
            // Comprobamos que el nombre introducido no este vacio y que no sea null
            if (nombreJugador != string.Empty && nombreJugador != null)
            {
                // En caso de que sea válido, creamos un objeto de tipo ClsPuntuacion y le damos los puntos conseguidos y el nombre introducido (el id da igual porque sera autoincrementado)
                ClsPuntuacion puntuacion = new ClsPuntuacion(0, nombreJugador, puntos);

                // Hacemos el post de la puntuacion llamando al servicio de la api de puntuaciones
                var statusCode = await ServicePuntuacion.postPuntuacion(puntuacion);

                // En caso de que la puntuacion no se haya podido guardar mostramos un display alert de error con el statusCode que ha devuelto el post
                if (statusCode != System.Net.HttpStatusCode.OK)
                {
                    await Application.Current.MainPage.DisplayAlert("Error", $"No se pudo guardar la puntuación. Status: {statusCode}", "OK");
                }
            }

            // Una vez guardada la puntuacion, navegamos a la vista de la generacion para volver a empezar otra partida
            await Application.Current.MainPage.Navigation.PushAsync(new GeneracionPage());
        }

        /// <summary>
        /// Metodo para usar el canExecute del command y poder guardar la puntuacion solo si se ha introducido un nombre válido
        /// </summary>
        /// <returns></returns>
        private bool puedeGuardar()
        {

            bool guardar = false;

            if (nombreJugador != string.Empty && nombreJugador != null)
            {
                guardar = true;
            }

            return guardar;
        }

        /// <summary>
        /// Metodo para cancelar la partida y volver a la pantalla de seleccionar generacion
        /// </summary>
        private async void cancelar()
        {
            await Application.Current.MainPage.Navigation.PushAsync(new GeneracionPage());
        }
        #endregion
    }
}