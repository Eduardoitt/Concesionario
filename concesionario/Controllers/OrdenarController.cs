using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using concesionario.Models;
namespace concesionario.Controllers
{
    public class OrdenarController : Controller
    {
        // GET: Ordenar
        private ConsecionarioDeAutosEntities db = new ConsecionarioDeAutosEntities();
        public ActionResult Index( int IdAuto)
        {
            //ViewBag.Performance = (from p in db.Performance 
            //                       select new 
            //                       { 
            //                           Id
            //                       }).ToList();
            return View("Index");
        }

    }
}
