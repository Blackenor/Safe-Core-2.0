using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Mvc;
using SafeCore.BLL;

namespace Safe_Core.Controllers
{
    public class PersonalController : Controller
    {
        // GET: Personal
        public ActionResult HistorialAtrasos()
        {
           
            ViewBag.HistorialAtrasos = new HistorialAtrasos().ReadAll();
            return View();
        }

        public ActionResult CreateAtrasos() 
        {
            return View();
        }

        [HttpPost]
        public ActionResult CreateAtrasos(HistorialAtrasos historial)
        {
            try
            {
                historial.Create();
                TempData["mensaje"] = "Historial creado correctamente";
                return View();
            }
            catch
            {
                TempData["mensaje"] = "Error al crear Historial";
                return View();
            }
        }


        public ActionResult Profesionales()
        {
            ViewBag.Profesionales = new Profesional().ReadAll();
            return View();
        }

        public ActionResult CreateProfesionales()
        {
            return View();
        }

        [HttpPost]
        public ActionResult CreateProfesionales(Profesional profesional)
        {
            try
            {
                profesional.Create();
                TempData["mensaje"] = "Profesional creado correctamente";
                return View();
            }
            catch
            {
                TempData["mensaje"] = "Error al crear al profesional";
                return View();
            }
        }

        public ActionResult ContratoProfesional()
        {
            ViewBag.Contratos = new ContratoProfesional().ReadAll();
            return View();
        }

        public ActionResult CreateContratoP()
        {
            return View();
        }

        [HttpPost]
        public ActionResult CreateContratoP(ContratoProfesional contrato)
        {
            try
            {
                contrato.Create();
                TempData["mensaje"] = "Contrato creado correctamente";
                return View();
            }
            catch
            {
                TempData["mensaje"] = "Error al crear contrato";
                return View();
            }
        }

        public ActionResult PagosClientes()
        {
            ViewBag.PagosClientes = new Pagos().ReadAll();
            return View();
        }

        public ActionResult Clientes()
        {
            // Este ViewBag.clientes es el que trae toda la data de SafeCore.BLL llamando a la clase respectiva
            ViewBag.clientes = new Cliente().ReadAll();

            return View();
        }

        public ActionResult CreateClientes()
        {
            return View();
        }

        [HttpPost]
        public ActionResult CreateClientes(Cliente cliente)
        {
            try
            {
                cliente.Create();
                TempData["mensaje"] = "Cliente creado correctamente";
                return View();
            }
            catch
            {
                TempData["mensaje"] = "Error al crear al cliente";
                return View();
            }
        }

        public ActionResult ContratoCliente()
        {
            ViewBag.ContratosCliente = new ContratoCliente().ReadAll();
            return View();
        }

        public ActionResult CreateContratoC()
        {
            return View();
        }

        [HttpPost]
        public ActionResult CreateContratoC(ContratoCliente contrato)
        {
            try
            {
                contrato.Create();
                TempData["mensaje"] = "Contrato creado correctamente";
                return View();
            }
            catch
            {
                TempData["mensaje"] = "Error al crear el contrato";
                return View();
            }
        }


        public ActionResult CSV()
        {
            List<Pagos> pagos = new Pagos().ReadAll(); 

            string titulos = "ID;" +
                "Rut Cliente;" +
                "Fecha de pago;" +
                "Monto;";

            var builder = new StringBuilder();
            builder.AppendLine(titulos);

            foreach (var p in pagos)
            {
                builder.AppendLine($"{p.ID_PAGO};" +
                                $"{p.CLIENTES_RUT_CLIENT};" +
                                $"{p.FECHA};" +
                                $"{p.MONTO};");
            }

            return File(Encoding.UTF8.GetBytes(builder.ToString()), "Text/csv", "Historial_Pagos_" + DateTime.Now.ToString("dd-MM-yyyy HH:mm:ss") + ".csv");
        }









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

