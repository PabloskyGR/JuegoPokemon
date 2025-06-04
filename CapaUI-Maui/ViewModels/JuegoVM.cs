using CapaUI_Maui.Models;
using CapaUI_Maui.Models.Utils;
using DTO;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaUI_Maui.ViewModels
{
    public class JuegoVM: ClsVMBase
    {
        #region atributos
        private ObservableCollection<ClsPartida> partidas;
        private ClsPartida partidaActual;
        private int puntos;
        private int rondas;
        private int tiempo;
        private bool mostrarGuardar;
        private DelegateCommand botonGuardar;
        private string nombreJugador;
        private ClsPokemon pokemonSeleccionado;
        #endregion

        #region propiedades
        public ObservableCollection<ClsPartida> Partidas
        {
            get { return partidas; }
        }
        
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

        public bool MostrarGuardar
        {
            get { return mostrarGuardar; }
        }

        public DelegateCommand BotonGuardar
        {
            get { return botonGuardar; }
        }

        public string NombreJugador
        {
            get { return nombreJugador; }
            set { nombreJugador = value; }
        }

        public ClsPokemon PokemonSeleccionado
        {
            get { return pokemonSeleccionado; }
            set
            {
                if (pokemonSeleccionado != value)
                {
                    pokemonSeleccionado = value;
                    NotifyPropertyChanged(nameof(PokemonSeleccionado));

                    if (pokemonSeleccionado != null && !MostrarGuardar)
                    {
                        // Actualizar modelo
                        partidaActual.NombreSeleccionado = pokemonSeleccionado.Nombre;

                        // Procesar respuesta
                        _ = SeleccionarRespuesta(pokemonSeleccionado.Nombre, partidaActual.Opciones);

                        // Limpiar selección para permitir nueva selección
                        PokemonSeleccionado = null;
                    }
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
            partidas = new ObservableCollection<ClsPartida>();
            partidaActual = new ClsPartida();
            puntos = 0;
            rondas = 0;
            tiempo = 5;
            mostrarGuardar = false;
            botonGuardar = new DelegateCommand(GuardarPuntuacion, PuedeGuardar);
            IniciarRonda(listadoPokemons);
        }
        #endregion

        #region métodos
        public void IniciarRonda(List<ClsPokemon> listadoPokemons)
        {
            if (rondas < 20)
            {
                rondas++;
                NotifyPropertyChanged(nameof(Rondas));

                var random = new Random();
                var pokemonCorrecto = listadoPokemons[random.Next(listadoPokemons.Count)];

                var opcionesIncorrectas = listadoPokemons
                    .Where(p => p.Id != pokemonCorrecto.Id)
                    .OrderBy(x => random.Next())
                    .Take(3)
                    .ToList();

                var opciones = new List<ClsPokemon> { pokemonCorrecto };
                opciones.AddRange(opcionesIncorrectas);
                opciones = opciones.OrderBy(x => random.Next()).ToList();

                // Crear nueva partidaActual
                partidaActual = new ClsPartida
                {
                    PokemonCorrecto = pokemonCorrecto,
                    Opciones = opciones,
                    NombreSeleccionado = string.Empty
                };

                partidas.Add(partidaActual);
                PokemonSeleccionado = null;
                NotifyPropertyChanged(nameof(PartidaActual));
                NotifyPropertyChanged(nameof(Partidas));
            }
            else
            {
                mostrarGuardar = true;
                NotifyPropertyChanged(nameof(MostrarGuardar));
            }
        }


        public async Task SeleccionarRespuesta(string nombreSeleccionado, List<ClsPokemon> listadoPokemons)
        {
            // Calcular puntuación
            if (nombreSeleccionado == PartidaActual.PokemonCorrecto.Nombre)
            {
                puntos += 5;
            }
            else
            {
                puntos -= 1;
            }
            NotifyPropertyChanged(nameof(Puntos));

            // Mostrar resultado
            string mensaje = nombreSeleccionado == PartidaActual.PokemonCorrecto.Nombre ? "¡Correcto! +5 puntos" : "Incorrecto, -1 punto";
            await Application.Current.MainPage.DisplayAlert("Resultado", mensaje, "Continuar");

            // Pasar a siguiente ronda solo si no estamos en la fase de guardar
            if (!MostrarGuardar)
            {
                IniciarRonda(listadoPokemons);
            }
        }

        private async void GuardarPuntuacion()
        {
            if (!string.IsNullOrWhiteSpace(nombreJugador))
            {
                try
                {
                    // TODO: Llamar al servicio de la API para guardar la puntuación
                    // Ejemplo: await PuntuacionService.GuardarPuntuacion(nombreJugador, puntos);
                    await Application.Current.MainPage.DisplayAlert("Éxito", $"Puntuación de {puntos} guardada para {nombreJugador}", "Aceptar");
                }
                catch (Exception ex)
                {
                    await Application.Current.MainPage.DisplayAlert("Error", $"No se pudo guardar la puntuación: {ex.Message}", "Aceptar");
                }
            }
            await Application.Current.MainPage.Navigation.PopAsync();
        }

        private bool PuedeGuardar()
        {
            if (string.IsNullOrWhiteSpace(nombreJugador))
            {
                return false;
            }
            return true;
        }
        #endregion
    }
}
