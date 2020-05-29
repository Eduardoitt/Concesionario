using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace concesionario.Controllers
{
    public class OrdenarController : Controller
    {
        // GET: Ordenar
        public ActionResult Index( int IdAuto)
        {
            return View("Index");
        }

    }
}
