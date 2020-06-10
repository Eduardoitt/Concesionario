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
        public ActionResult Index(int IdAuto)
        {
            ViewBag.Performance = (from p in db.Performance
                                   select new
                                   {
                                       IdPerformace = p.IdPerformance,
                                       Performace = p.Performance1 + " " + p.Precio,
                                   }).ToList();
            ViewBag.Color = (from c in db.Color
                                   select new
                                   {
                                       IdColor = c.IdColor,
                                       Color = c.Color1 + " " + c.Precio,
                                   }).ToList();
            return View("Index");


        }

    }
}
 