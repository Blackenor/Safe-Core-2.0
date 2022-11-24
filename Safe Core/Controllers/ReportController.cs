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
            // DATOS PARA LAS GRILLAS

            ViewBag.capacitaciones = new Capacitaciones().ReadAll();
            ViewBag.servicios = new Servicio().ReadAll();
            ViewBag.visitas = new VisitasTerreno().ReadAll();
            ViewBag.actividadMejora = new ActividadMejora().ReadAll();
            ViewBag.pagosC = new Pagos().ReadAll();
            ViewBag.atrasos = new HistorialAtrasos().ReadAll();
            
            
            
            // DATOS PARA EL GRÁFICO

            ViewBag.Enero = new ReporteAccidente().FilteredList(1).Count();
            ViewBag.Febrero = new ReporteAccidente().FilteredList(2).Count();
            ViewBag.Marzo = new ReporteAccidente().FilteredList(3).Count();
            ViewBag.Abril = new ReporteAccidente().FilteredList(4).Count();
            ViewBag.Mayo = new ReporteAccidente().FilteredList(5).Count();
            ViewBag.Junio = new ReporteAccidente().FilteredList(6).Count();
            ViewBag.Julio = new ReporteAccidente().FilteredList(7).Count();
            ViewBag.Agosto = new ReporteAccidente().FilteredList(8).Count();
            ViewBag.Septiembre = new ReporteAccidente().FilteredList(9).Count();
            ViewBag.Octubre = new ReporteAccidente().FilteredList(10).Count();
            ViewBag.Noviembre = new ReporteAccidente().FilteredList(11).Count();
            ViewBag.Diciembre = new ReporteAccidente().FilteredList(12).Count();

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