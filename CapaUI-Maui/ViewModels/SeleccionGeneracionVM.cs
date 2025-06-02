using CapaUI_Maui.Models.Utils;
using CapaUI_Maui.Views;
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
            if (generacionSeleccionada != "--Seleccione una generación--")
            {
                await Application.Current.MainPage.Navigation.PushAsync(new JuegoPage(generacionSeleccionada));
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
