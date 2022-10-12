using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Safe_Core.Controllers
{
    public class ChecklistController : Controller
    {
        // GET: Checklist
        public ActionResult Crearcheck()
        {
            return View();
        }

        public ActionResult Responder()
        {
            return View();
        }
    }
}