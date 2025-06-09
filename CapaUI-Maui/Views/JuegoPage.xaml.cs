using CapaUI_Maui.ViewModels;
using DTO;

namespace CapaUI_Maui.Views;

public partial class JuegoPage : ContentPage
{
    private JuegoVM viewModel;

    public JuegoPage(List<ClsPokemon> listadoPokemons)
    {
        InitializeComponent();
        viewModel = new JuegoVM(listadoPokemons);
        BindingContext = viewModel;
    }
}