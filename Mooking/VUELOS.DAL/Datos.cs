using Mooking.Entities;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing.Drawing2D;
using System.Linq;
using System.Web;

namespace Mooking.VUELOS.DAL
{
    public class Datos
    {

        string cc = System.Configuration.ConfigurationManager.ConnectionStrings["conectaVuelo"].ConnectionString;
        public Datos() { 
           
            
        }
        public DataTable ObtenerVuelos()
        {
            //Creamos un DataTable
            DataTable dt = new DataTable();

            SqlConnection conexion = new SqlConnection(cc);

            SqlCommand comando = new SqlCommand("ObtenerVuelos", conexion);

            SqlDataAdapter da = new SqlDataAdapter(comando);
                    
            conexion.Open();
            da.Fill(dt);
            return dt;
        }

        public DataTable ObtenerVuelosModal()
        {
            DataTable dt = new DataTable();
            SqlConnection conexion = new SqlConnection(cc);
            SqlCommand comando = new SqlCommand("ObtenerVuelosModal", conexion);
            SqlDataAdapter da = new SqlDataAdapter(comando);
            conexion.Open();
            da.Fill(dt);
            return dt;
        }

        public List<Vuelos> BuscarPorId()
        {
            List<Vuelos> lista= new List<Vuelos>();
            SqlConnection conexion = new SqlConnection(cc);
            SqlCommand comando = new SqlCommand("ObtenerVuelos", conexion);
            conexion.Open();
            SqlDataReader Lector = comando.ExecuteReader();

            while (Lector.Read())
            {
                Vuelos Linea = new Vuelos()
                {
                    id_vuelo = (int)Lector["id_vuelo"],
                };
                lista.Add(Linea);
            }
            conexion.Close();
            return lista;
        }

        public DataTable BuscarConIdSeleccionado(int id)
        {
            DataTable dt = new DataTable();
            SqlConnection conexion = new SqlConnection(cc);
            SqlCommand comando = new SqlCommand("ObtenerVueloPorId", conexion);
            comando.Parameters.AddWithValue("@id_vuelo", id);
            comando.CommandType= CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(comando);
            conexion.Open();
            da.Fill(dt);
            return dt;
        }
        public List<Estados> ObtenerEstados()
        {

            DataTable dt = new DataTable();
            List<Estados> lista = new List<Estados>();
            SqlConnection conexion = new SqlConnection(cc);
            SqlCommand comando = new SqlCommand("ObtenerEstados", conexion);
            conexion.Open();
            SqlDataReader Lector = comando.ExecuteReader();

            while (Lector.Read())
            {
                Estados Linea = new Estados()
                {
                    nombre = (string)Lector["nombre"],
                };
                lista.Add(Linea);
            }
            conexion.Close();
            return lista;
        }
    }
}