using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Safe_Core.Controllers
{
    public class PersonalController : Controller
    {
        // GET: Personal
        public ActionResult HistorialAtrasos()
        {
            return View();
        }
        public ActionResult Profesionales()
        {
            return View();
        }
        public ActionResult PagosClientes()
        {
            return View();
        }
        public ActionResult Clientes()
        {
            return View();
        }
    }
}