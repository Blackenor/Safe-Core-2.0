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
            ViewBag.ReporteAccidente = new ReporteAccidente().ReadAll();
            return View();
        }
        public ActionResult CreateReportAccidente() 
        {
            return View();
        }
        [HttpPost]
        public ActionResult CreateReportAccidente(ReporteAccidente report)
        {
            try
            {
                report.Create();
                TempData["mensaje"] = "Reporte de accidente creado correctamente";
                return View();
            }
            catch
            {
                TempData["mensaje"] = "Error al crear reporte de accidente";
                return View();
            }
        }

        public ActionResult ReportClient()
        {
            ViewBag.ReporteCliente = new ReporteCliente().ReadAll();
            return View();
        }
        public ActionResult CreateReportClient()
        {
            return View();
        }
        [HttpPost]
        public ActionResult CreateReportClient(ReporteCliente report)
        {
            try
            {
                report.Create();
                TempData["mensaje"] = "Reporte de cliente creado correctamente";
                return View();
            }
            catch
            {
                TempData["mensaje"] = "Error al crear reporte cliente";
                return View();
            }
        }
    }
}