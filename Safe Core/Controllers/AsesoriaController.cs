using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SafeCore.BLL;

namespace Safe_Core.Controllers
{
    public class AsesoriaController : Controller
    {
        // GET: Asesoria
        public ActionResult IngresarAsesoria()
        {
            ViewBag.asesoria = new Servicio().ReadAll();
            return View();
        }
        public ActionResult CreateAsesoria()
        {
           
            return View();
        }
        [HttpPost]
        public ActionResult CreateAsesoria(Servicio asesoria)
        {
            try
            {
                asesoria.Create();
                TempData["mensaje"] = "Asesoria creada correctamente";
                return View();
            }
            catch
            {
                TempData["mensaje"] = "Error al crear Asesoria";
                return View();
            }
        }

        public ActionResult AsesoriaEspecial()
        {
            ViewBag.asesoriaesp = new Solicitud().ReadAll();
            return View();
        }

        public ActionResult CreateAsesoriaESP()
        {

            return View();
        }
        [HttpPost]
        public ActionResult CreateAsesoriaESP(Solicitud asesoriaesp)
        {
            try
            {
                asesoriaesp.Create();
                TempData["mensaje"] = "Solicitud Enviada";
                return View();
            }
            catch
            {
                TempData["mensaje"] = "Error al enviar la solicitud";
                return View();
            }
        }
    }
}