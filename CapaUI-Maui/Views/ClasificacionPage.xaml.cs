using CapaUI_Maui.ViewModels;

namespace CapaUI_Maui.Views;

public partial class ClasificacionPage : ContentPage
{

	ListadoPuntuacionesVM vm;

	public ClasificacionPage()
	{
		InitializeComponent();
		// Le damos con bindingConext el ListadoPuntuacionesVM
        vm = (ListadoPuntuacionesVM)this.BindingContext; 
	}

	/// <summary>
	/// Método que se ejecuta cada vez que se abre la ClasificacionPage
	/// </summary>
    protected override void OnAppearing()
    {
        base.OnAppearing();
		// LLama al metodo que actualiza el listado, asi cada vez que se abre la ClasificacionPage se actualiza el listado en caso de que haya cambios
		vm.actualizarListadoPuntuaciones();
    }
}