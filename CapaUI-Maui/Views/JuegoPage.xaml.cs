using CapaUI_Maui.ViewModels;
using DTO;

namespace CapaUI_Maui.Views;

public partial class JuegoPage : ContentPage
{
    private JuegoVM viewModel;

    // Como la vista de seleccion de generacion envia el listado de pokemons, la vista del juego tendra un cosntrcutor que reciba ese listado para asi usarlo en el vm
    public JuegoPage(List<ClsPokemon> listadoPokemons)
    {
        InitializeComponent();
        // Le pasamos al vm (que tendra un constructor que reciba el listado), el listado que recibe el constructor de la vista para asi poder usar los pokemons de la generacion seleccionada
        viewModel = new JuegoVM(listadoPokemons);
        BindingContext = viewModel;
    }
}