using SafeCore.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Safe_Core.Controllers
{
    public class ChecklistController : Controller
    {
        // GET: Checklist
        public ActionResult Crearcheck()
        {
            return View();
        }
        public ActionResult CreateChecklist()
        {
            return View();
        }
        
        [HttpPost]
        public ActionResult CreateChecklist(Checklist check)
        {
            try
            {
                check.Create();
                TempData["mensaje"] = "Checklist creado correctamente";
                return View();
            }
            catch
            {
                TempData["mensaje"] = "Error al crear checklist";
                return View();
            }
        }

        public ActionResult Responder()
        {
            ViewBag.checklist = new Checklist().ReadAll();
            return View();
        }

        public ActionResult PrintChecklist(int ID)
        {
            ViewBag.checklist = new Checklist().ReadOne(ID);

            return View();
        }
    }
}