﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace concesionario.Controllers
{
    public class ModelosController : Controller
    {
        // GET: Modelos
        public ActionResult ModelS()
        {
            return View();
        }
        //[HttpGet]
        //public ActionResult AceptarPagos()
        //{
        //    var Resp = 1;
        //    return Json(new { value = Resp }, JsonRequestBehavior.AllowGet);
        //}
        public ActionResult Model3()
        {
            return View();
        }
        public ActionResult ModelX()
        {
            return View();
        }
        public ActionResult ModelY()
        {
            return View();
        }
        public ActionResult Cybertruck()
        {
            return View();
        }
    }
}
