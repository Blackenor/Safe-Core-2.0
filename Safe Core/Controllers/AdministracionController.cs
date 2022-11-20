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
            ViewBag.capacitaciones = new Capacitaciones().ReadAll();
            ViewBag.servicios = new Servicio().ReadAll();
            ViewBag.visitas = new VisitasTerreno().ReadAll();
            ViewBag.checklist = new Checklist().ReadAll();
            ViewBag.actividadMejora = new ActividadMejora().ReadAll();

            return View();
        }

        public ActionResult CalculoA()
        {
            // EL CÁLCULO ES CANT DE ACCIDENTES POR CANT DE SERVICIOS

            ViewBag.Accidentes = new ReporteAccidente().ReadAll();

            ViewBag.Capacitaciones = new Capacitaciones().ReadAll();

            // FILTERED BY MONTH

            ViewBag.Enero = new ReporteAccidente().FilteredList(1);
            ViewBag.Febrero = new ReporteAccidente().FilteredList(2);
            ViewBag.Marzo = new ReporteAccidente().FilteredList(3);
            ViewBag.Abril = new ReporteAccidente().FilteredList(4);
            ViewBag.Mayo = new ReporteAccidente().FilteredList(5);
            ViewBag.Junio = new ReporteAccidente().FilteredList(6);
            ViewBag.Julio = new ReporteAccidente().FilteredList(7);
            ViewBag.Agosto = new ReporteAccidente().FilteredList(8);
            ViewBag.Septiembre = new ReporteAccidente().FilteredList(9);
            ViewBag.Octubre = new ReporteAccidente().FilteredList(10);
            ViewBag.Noviembre = new ReporteAccidente().FilteredList(11);
            ViewBag.Diciembre = new ReporteAccidente().FilteredList(12);

            return View();
        }

        public ActionResult PlanificarVisita()
        {
            // MÉTODO CREATE

            return View();
        }

        [HttpPost]
        public ActionResult CrearVisita(VisitasTerreno visitas)
        {
            // MÉTODO CREATE
            try
            {
                visitas.Create();
                TempData["mensaje"] = "Visita planificada correctamente";
                return View();
            }
            catch
            {
                TempData["mensaje"] = "Error al planificar visita";
                return View();
            }
            //return View();
        }

        public ActionResult Capacitaciones()
        {
            ViewBag.Capacitaciones = new Capacitaciones().ReadAll();

            return View();
        }

        public ActionResult CrearCapacitacion()
        {
            return View();
        }

        [HttpPost]
        public ActionResult CrearCapacitacion(Capacitaciones capacitaciones)
        {
            // MÉTODO CREATE
            try
            {
                capacitaciones.Create();
                TempData["mensaje"] = "Capacitación creada correctamente";
                return View();
            }
            catch
            {
                TempData["mensaje"] = "Error al crear la capacitación";
                return View();
            }
            //return View();
        }

         

        //[HttpPost]
        //public ActionResult CreateVisita(VisitasTerreno visitasTerreno)
        //{
        //    try
        //    {
        //        visitasTerreno.Create();
        //        TempData["mensaje"] = "Visita agendada correctamente";
        //        return View();
        //    }
        //    catch
        //    {
        //        TempData["mensaje"] = "Error al agendar visita";
        //        return View();
        //    }
        //}


    }
}