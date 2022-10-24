using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Safe_Core.Models;

namespace Safe_Core.Controllers
{
    public class CalculatorController : Controller
    {
        // GET: Calculator
        [HttpPost]
        public ActionResult Calcular (CalculadoraViewModel objCalculadora)
        {
            if ("%".Equals(objCalculadora.Accion)) {
                objCalculadora.Respuesta = objCalculadora.Operador1 + objCalculadora.Operador2;
                objCalculadora.Respuesta = objCalculadora.Respuesta / 100;
                int ViewData = objCalculadora.Respuesta;
            }

            return View("Calculadora", objCalculadora.Respuesta);
        }
    }

}