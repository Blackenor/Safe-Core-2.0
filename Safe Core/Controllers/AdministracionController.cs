using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SafeCore.BLL;

namespace Safe_Core.Controllers
{
    public class AdministracionController : Controller
    {
        // GET: Administracion
        public ActionResult Actividades()
        {
            ViewBag.Actividades = new VisitasTerreno().ReadAll();

            return View();
        }

        public ActionResult CalculoA()
        {
            // EL CÁLCULO ES CANT DE ACCIDENTES POR CANT DE SERVICIOS

            ViewBag.CalculoA = new ReporteAccidente().ReadAll();

            ViewBag.Servicio = new Servicio().ReadAll();

            return View();
        }

        public ActionResult PlanificarVisita()
        {
            // MÉTODO CREATE

            return View();
        }

        public ActionResult CrearCapacitacion()
        {
            // MÉTODO CREATE

            return View();
        }


    }
}