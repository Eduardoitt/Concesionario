using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using concesionario.Models;
using concesionario.Models.PedirModelos;
using Newtonsoft.Json;
using System.Data.Entity.Core.Objects;

namespace concesionario.Controllers
{
    public class OrdenarController : Controller
    {
        // GET: Ordenar
        private ConsecionarioDeAutosEntities db = new ConsecionarioDeAutosEntities();
        public ActionResult Index(int IdAuto)
        {
            Session["IdAuto"] = IdAuto;
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
            ViewBag.Sexo = (from s in db.Sexo
                            select new
                            {
                                IdSexo = s.IdSexo,
                                Sexo = s.Sexo1
                            }).ToList();
            return View("Index");
        }

        [HttpPost]
        public ActionResult OrdenarC(CarroOrdenar model)
        {
            try
            {
                if (!ModelState.IsValid)
                {
                    return View(model);
                }
                else
                {
                    model.IdAuto = Convert.ToInt32(Session["IdAuto"]);
                    db.SP_OrdeanarCarro(model.IdAuto,model.IdColor,model.IdPerformance,model.Nombre,model.ApP,model.ApM,model.Edad,model.FechaDeNacimiento,model.Sexo,model.RFC,model.Direccion,
                        model.CP,model.Telefono,model.TelefonoCasa,model.Correo);
                    // return Json(new { value = 1, messen = "Carro Ordenado" }, JsonRequestBehavior.AllowGet);
                    return RedirectToAction("Index","Ordenar", new { IdAuto=1});
                }
            }
            catch
            {
                return PartialView(model);
            }
        }
    }
}
