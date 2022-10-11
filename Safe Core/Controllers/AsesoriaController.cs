using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Safe_Core.Controllers
{
    public class AsesoriaController : Controller
    {
        // GET: Asesoria
        public ActionResult IngresarAsesoria()
        {
            return View();
        }

        public ActionResult AsesoriaEspecial()
        {
            return View();
        }
    }
}