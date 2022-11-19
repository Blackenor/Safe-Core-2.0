﻿using System;
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

            ViewBag.CalculoA = new ReporteAccidente().ReadAll();

            ViewBag.Servicio = new Servicio().ReadAll();

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