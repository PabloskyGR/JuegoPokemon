using CapaUI_Maui.ViewModels;

namespace CapaUI_Maui.Views;

public partial class ClasificacionPage : ContentPage
{

	ListadoPuntuacionesVM vm;

	public ClasificacionPage()
	{
		InitializeComponent();
        vm = (ListadoPuntuacionesVM)this.BindingContext;
	}

    protected override void OnAppearing()
    {
        base.OnAppearing();
		vm.actualizarListadoPuntuaciones();
    }
}