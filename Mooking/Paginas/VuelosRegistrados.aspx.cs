using Mooking.VUELOS.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mooking.Paginas
{
    public partial class VuelosRegistrados : System.Web.UI.Page
    {
        Negocios ng = new Negocios();
        protected void Page_Load(object sender, EventArgs e)
        {
            MostrarVuelos.DataSource = ng.MostrarVuelos();
            MostrarVuelos.DataBind();
        }
    }
}