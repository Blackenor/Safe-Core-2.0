﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Safe_Core.Controllers
{
    public class ReportController : Controller
    {
        // GET: Report
        public ActionResult ReportGlobal()
        {
            return View();
        }
        public ActionResult ReportAccidente()
        {
            return View();
        }
        public ActionResult ReportClient()
        {
            return View();
        }
    }
}