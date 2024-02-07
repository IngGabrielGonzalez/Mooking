using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Mooking.Entities
{
    public class Vuelos
    {
        public int id_vuelo { get; set; }
        public string clave { get; set; }
        public string origen_vuelo { get; set; }
        public string destino_vuelo { get; set; }
        public DateTime fecha_vuelo { get; set; }
        public double precio_vuelo { get; set; }
        public string imagen_vuelo { get; set; }
        public int cantidad_boletos { get; set; }
    }
}