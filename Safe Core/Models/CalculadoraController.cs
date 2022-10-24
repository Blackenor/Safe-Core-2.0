using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Safe_Core.Models;

namespace Safe_Core.Models
{
    public class CalculadoraController : Controller
    {
        // GET: Calculadora
        public ActionResult Calculator()
        {
            return View();
        }
    }

    public class CalculadoraViewModel
    {
        public int Operador1 { get; set; }
        public int Operador2 { get; set; }

        public string Accion { get; set; }
        public int Respuesta { get; set; }
    }

}