using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Safe_Core.Controllers
{
    public class HistorialAtrasosController : Controller
    {
        // GET: HistorialAtrasos
        public ActionResult Index()
        {
            return View();
        }

        // GET: HistorialAtrasos/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: HistorialAtrasos/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: HistorialAtrasos/Create
        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                // TODO: Add insert logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: HistorialAtrasos/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: HistorialAtrasos/Edit/5
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

        // GET: HistorialAtrasos/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: HistorialAtrasos/Delete/5
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
