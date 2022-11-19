using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SafeCore.BLL;

namespace Safe_Core.Controllers
{
    public class PlanificarVisitaController : Controller
    {
        // GET: PlanificarVisita
        public ActionResult Index()
        {
            ViewBag.visitas = new VisitasTerreno().ReadAll();
            return View();
        }

        // GET: PlanificarVisita/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: PlanificarVisita/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: PlanificarVisita/Create
        [HttpPost]
        public ActionResult Create(VisitasTerreno visitasTerreno)
        {
            try
            {
                try
                {
                    visitasTerreno.Create();
                    TempData["mensaje"] = "Visita Planificada correctamente";
                    return View();
                }
                catch 
                {
                    TempData["mensaje"] = "Error al planificar la visita";
                    return View();
                }
                // TODO: Add insert logic here

                //return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: PlanificarVisita/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: PlanificarVisita/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: PlanificarVisita/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: PlanificarVisita/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
