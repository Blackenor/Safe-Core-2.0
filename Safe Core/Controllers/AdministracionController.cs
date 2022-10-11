using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Safe_Core.Controllers
{
    public class AdministracionController : Controller
    {
        // GET: Administracion
        public ActionResult Actividades()
        {
            return View();
        }

        public ActionResult CalculoA()
        {
            return View();
        }

        public ActionResult PlanificarVisita()
        {
            return View();
        }

        public ActionResult CrearCapacitacion()
        {
            return View();
        }


    }
}