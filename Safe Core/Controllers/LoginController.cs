using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using SafeCore.BLL;

namespace Safe_Core.Controllers
{
    public class LoginController : Controller
    {
        // GET: Login
        public ActionResult Login()
        {
            ViewBag.Login = new Usuarios().ReadAll();
            return View();
        }
        [HttpPost]
        public ActionResult Login(Usuarios usuario, string ReturnUrl) 
        {
            if (IsValid(usuario)) 
            {
                FormsAuthentication.SetAuthCookie(usuario.NOMBRE, false);

                if (ReturnUrl != null) 
                {
                    return Redirect(ReturnUrl);
                }

                return RedirectToAction("Index", "Home");


            }
            TempData["mensaje"] = "Nombre de usuario o contraseña incorrecta";
            return View(usuario);
        }

        private bool IsValid(Usuarios usuario) 
        {
            return usuario.Autenticar();
        }

        public ActionResult LogOut()
        {
            FormsAuthentication.SignOut();
            return RedirectToAction("Login", "Login");
        }


    }
}