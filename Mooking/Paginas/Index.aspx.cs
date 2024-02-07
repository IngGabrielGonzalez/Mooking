using Mooking.VUELOS.BLL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mooking
{
    public partial class Index : System.Web.UI.Page
    {
        Negocios ng = new Negocios();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                // Llenar el DataTable con datos de tu base de datos o de alguna otra fuente
                // Supongamos que tienes una lista de objetos llamada "cardsDataList"
                GridView1.DataSource = ng.MostrarVuelosModal();
                GridView1.DataBind();
            }
        }
    }
}