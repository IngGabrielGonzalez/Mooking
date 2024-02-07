using Mooking.Entities;
using Mooking.VUELOS.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mooking.Paginas
{
    public partial class RegistrarVuelos : System.Web.UI.Page
    {
        Negocios ng = new Negocios();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                List<Estados> lista = new List<Estados>();
                lista = ng.MostrarEstados();

                OrigenDelVuelo.Items.Add("-Seleccionar Origen-");
                DestinoDelVuelo.Items.Add("-Seleccionar Destino-");

                foreach (Estados estado in lista)
                {
                    OrigenDelVuelo.Items.Add(estado.nombre.ToString());
                    DestinoDelVuelo.Items.Add(estado.nombre.ToString());
                }

            }
        }
    }
}