using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SafeCore.BLL;

namespace Safe_Core.Controllers
{
    public class ReportAccidenteController : Controller
    {
        // GET: ReportAccidente
        public ActionResult Index()
        {
            return View();
        }

        // GET: ReportAccidente/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: ReportAccidente/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: ReportAccidente/Create
        [HttpPost]
        public ActionResult Create(ReporteAccidente reportAccidente)
        {
            try
            {
                try
                {
                    reportAccidente.Create();
                    TempData["mensaje"] = "Reporte enviado correctamente";
                    return View();
                }
                catch
                {
                    TempData["mensaje"] = "Error al enviar el reporte";
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

        // GET: ReportAccidente/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: ReportAccidente/Edit/5
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

        // GET: ReportAccidente/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: ReportAccidente/Delete/5
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
