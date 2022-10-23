using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SafeCore.BLL;

namespace Safe_Core.Controllers
{
    public class ReportController : Controller
    {
        // GET: Report
        public ActionResult ReportGlobal()
        {
            ViewBag.ReporteGlobal = new ReporteGlobal().ReadAll();
            return View();
        }
        public ActionResult ReportAccidente()
        {
            return View();
        }
        public ActionResult ReportClient()
        {
            ViewBag.ReporteCliente = new ReporteCliente().ReadAll();
            return View();
        }
    }
}