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
        private int puntosTotales;
        private int rondaActual;
        private int tiempoRestante;
        private ClsPokemon pokemonCorrecto;
        private List<ClsPokemon> opciones;
        private int generacion;

        public string NombreSeleccionado
        {
            get { return nombreSeleccionado; }
            set { nombreSeleccionado = value; }
        }

        public int PuntosTotales
        {
           get { NotifyPropertyChanged("PuntosTotales"); return puntosTotales; }
        }

        public int RondaActual
        {
            get { NotifyPropertyChanged("RondaActual"); return rondaActual; }
        }

        public int TiempoRestante
        {
            get { NotifyPropertyChanged("TiempoRestante"); return tiempoRestante; }
        }

        public ClsPokemon PokemonCorrecto
        {
           get { return pokemonCorrecto; }
        }

        public List<ClsPokemon> Opciones
        {
            get { NotifyPropertyChanged("Opciones"); return opciones; }
        }
        public int Generacion
        {
            get { return generacion; }
        }

        public ClsPartida()
        {
            opciones = new List<ClsPokemon>();
        }

        public ClsPartida(int generacion)
        {
            this.generacion = generacion;
            opciones = new List<ClsPokemon>();
            rondaActual = 0;
            puntosTotales = 0;
            tiempoRestante = 5;
        }

        public void ReiniciarPartida()
        {
            nombreSeleccionado = null;
            puntosTotales = 0;
            rondaActual = 0;
            tiempoRestante = 5;
            pokemonCorrecto = null;
            opciones = new List<ClsPokemon>();
        }

        public void ActualizarPuntos(bool acertado, bool sinTiempo)
        {
            if (acertado)
            {
                puntosTotales += 1;
            }
            else if (sinTiempo)
            {
                puntosTotales -= 1;
            }

            NotifyPropertyChanged("PuntosTotales");
        }

    }
}
