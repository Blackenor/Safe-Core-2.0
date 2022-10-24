using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SafeCore.BLL;

namespace Safe_Core.Controllers
{
    public class ActividadMejoraController : Controller
    {
        // GET: ActividadMejora
        public ActionResult RevisarActMejora()
        {
            ViewBag.ActividadMejora = new ActividadMejora().ReadAll();

            return View();
        }

        // GET: ActividadMejora/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: ActividadMejora/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: ActividadMejora/Create
        [HttpPost]
        public ActionResult Create(ActividadMejora actividadMejora)
        {
            try
            {
                // TODO: Add insert logic here
                try
                {
                    actividadMejora.Create();
                    TempData["mensaje"] = "Actividad de mejora guardada correctamente";
                    return View();
                }
                catch
                {
                    TempData["mensaje"] = "Error al guardar la actividad de mejora";
                    return View();
                }


                //return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: ActividadMejora/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: ActividadMejora/Edit/5
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

        // GET: ActividadMejora/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: ActividadMejora/Delete/5
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
