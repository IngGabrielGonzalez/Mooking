
using Mooking.Entities;

using Mooking.VUELOS.BLL;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mooking.Paginas
{
    public partial class BuscarPorId : System.Web.UI.Page
    {
        Negocios ng = new Negocios();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DropdownIdVuelos.AutoPostBack = true;
                List<Vuelos> lista = new List<Vuelos>();
                lista = ng.MostrarPorId();
                DropdownIdVuelos.Items.Add("-Seleccionar Id-");


                foreach (Vuelos vuelo in lista)
                {
                    DropdownIdVuelos.Items.Add(vuelo.id_vuelo.ToString());
                }

            }
        }


        protected void DropdownIdVuelos_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                int seleccionado = DropdownIdVuelos.SelectedIndex;
                MostrarGridNuevo.DataSource = ng.MostrarPorIndex(seleccionado);
                MostrarGridNuevo.DataBind();
            }
            catch (Exception)
            {

            }
        }
    }
}