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
<<<<<<< HEAD
=======

>>>>>>> 7eb3a2c6217a65b039b41f49c406d5036400fc25
        public ActionResult Profesionales()
        {
            return View();
        }
<<<<<<< HEAD
=======

>>>>>>> 7eb3a2c6217a65b039b41f49c406d5036400fc25
        public ActionResult PagosClientes()
        {
            return View();
        }
<<<<<<< HEAD
=======

>>>>>>> 7eb3a2c6217a65b039b41f49c406d5036400fc25
        public ActionResult Clientes()
        {
            return View();
        }
<<<<<<< HEAD
    }
}
=======














        /* ----- CRUD ----- */


        // GET: Personal/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Personal/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Personal/Create
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

        // GET: Personal/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: Personal/Edit/5
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

        // GET: Personal/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Personal/Delete/5
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
>>>>>>> 7eb3a2c6217a65b039b41f49c406d5036400fc25
