using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SafeCore.BLL;

namespace Safe_Core.Controllers
{
    public class ActMejoraController : Controller
    {
        // GET: ActMejora
        public ActionResult IngresarMejora()
        {

            return View();
        }

        public ActionResult RevisarMejora()
        {
            ViewBag.ActividadMejora = new ActividadMejora().ReadAll();

            return View();
        }
    }
}