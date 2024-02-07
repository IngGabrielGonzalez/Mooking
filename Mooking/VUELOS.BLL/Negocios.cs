

using Mooking.Entities;
using Mooking.VUELOS.DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;


namespace Mooking.VUELOS.BLL
{
    public class Negocios
    {
        Datos ObjDal = new Datos();
        public Negocios() { 
            
        }
        public DataTable MostrarVuelos()
        {
            DataTable obtenerDatos = new DataTable();
            obtenerDatos = ObjDal.ObtenerVuelosModal();
            return obtenerDatos;
        }

        public DataTable MostrarVuelosModal()
        {
            //Creamos un objeto DataTable
            DataTable obtenerVuelos = new DataTable();
            return obtenerVuelos = ObjDal.ObtenerVuelos();
        }

        public List<Vuelos> MostrarPorId()
        {
            return ObjDal.BuscarPorId();
        }

        public DataTable MostrarPorIndex(int id)
        {
            DataTable obtenerDatos = new DataTable();
            return obtenerDatos = ObjDal.BuscarConIdSeleccionado(id);
        }
        public List<Estados> MostrarEstados()
        {
            return ObjDal.ObtenerEstados();
        }
    }
}