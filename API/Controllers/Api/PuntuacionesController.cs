using CapaBL;
using CapaENT;
using Microsoft.AspNetCore.Mvc;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace CapaUI_ASP.Controllers.Api
{
    [Route("api/[controller]")]
    [ApiController]
    public class PuntuacionesController : ControllerBase
    {

        [HttpGet]
        public IActionResult Get()
        {
            IActionResult salida;
            List<ClsPuntuacion> listadoCompleto = new List<ClsPuntuacion>();
            try
            {
                listadoCompleto = ClsManejadoraPartidasBL.listadoPuntuacionesBL();
                if (listadoCompleto.Count() == 0)
                {
                    salida = NoContent();
                }
                else
                {
                    salida = Ok(listadoCompleto);
                }
            }
            catch
            {
                salida = BadRequest();
            }

            return salida;
        }

        [HttpPost]
        public IActionResult Post([FromBody] ClsPuntuacion puntuacion)
        {
            int numeroFilasAfectadas;
            IActionResult salida;

            if (puntuacion == null)
            {
                salida = NoContent();
            }
            else
            {
                try
                {
                    numeroFilasAfectadas = ClsManejadoraPartidasBL.insertarPuntuacionBL(puntuacion);
                    salida = Ok(numeroFilasAfectadas);
                }
                catch
                {
                    salida = BadRequest();
                }
            }

            return salida;
        }

    }
}
