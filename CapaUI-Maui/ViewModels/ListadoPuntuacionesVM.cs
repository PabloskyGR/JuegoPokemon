﻿using CapaENT;
using CapaUI_Maui.Models.Utils;
using Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaUI_Maui.ViewModels
{
    public class ListadoPuntuacionesVM: ClsVMBase
    {
        #region atributos
        private List<ClsPuntuacion> listadoPuntuaciones;
        #endregion

        #region propiedades
        public List<ClsPuntuacion> ListadoPuntuaciones
        {
            get { return listadoPuntuaciones; }
        }
        #endregion

        #region constructores
        public ListadoPuntuacionesVM()
        {

        }
        #endregion

        #region metodos
        /// <summary>
        /// Método que usaremos en el codigo behind de la vista, que lo llamaremos en un método OnAppaering para cada vez que se muestre la vista se actualizara el listado
        /// </summary>
        /// <returns>Devolvera el listado actualizado</returns>
        public async Task actualizarListadoPuntuaciones()
        {
            List<ClsPuntuacion> listado = await ServicePuntuacion.getPuntucaciones();

            if (listado != null)
            {
                listadoPuntuaciones = listado.OrderByDescending(r => r.Puntuacion).ToList();
            }
            else
            {
                listadoPuntuaciones = new List<ClsPuntuacion>(); 
            }

            NotifyPropertyChanged(nameof(ListadoPuntuaciones));
        }
        #endregion
    }
}
