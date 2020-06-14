using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using concesionario.Models;
using Newtonsoft.Json;
using System.Data.Entity.Core.Objects;

namespace concesionario.Controllers
{
    public class EmpleadoController : Controller
    {
        ConsecionarioDeAutosEntities db = new ConsecionarioDeAutosEntities();
        // GET: Empleado
        public ActionResult Index()
        {
            int IdUsuario = Convert.ToInt32(Session["IdUsuario"]);
            var nombre = (from e in db.Empleado
                          where e.IdUsuarioLogin == IdUsuario
                          select e.Nombre
                                      ).FirstOrDefault();
            var ApP = (from e in db.Empleado
                       where e.IdUsuarioLogin == IdUsuario
                       select e.ApP
                                      ).FirstOrDefault();

            ViewBag.NombreEmpleado = nombre + " " + ApP;
            return View("Index");
        }

        // GET: Empleado/Details/5
        public ActionResult Abono()
        {
            return View("Abono");
        }
        public ActionResult gridabono()
        {
            string JSONString = string.Empty;
            List<Bitacora> grid = (from bp in db.BitacoraDePago
                                   join va in db.VentaAuto on bp.IdVentaAuto equals va.IdVentaAuto
                                   join c in db.Cliente on va.IdCliente equals c.IdCliente
                                   select new Bitacora
                                   {
                                       id_Bitacora = bp.id_Bitacora,
                                       FechaDePago = bp.FechaDePago,
                                       Abono = bp.Abono,
                                       PagoMinimo = bp.PagoMinimo,
                                       IdVentaAuto = bp.IdVentaAuto,
                                       Restante = bp.Restante,
                                       IdCliente = c.IdCliente,
                                       Nombre = c.Nombre + " " + c.ApP + " " + c.ApM
                                   }).ToList();

            JSONString = JsonConvert.SerializeObject(grid);
            return Json(JSONString, JsonRequestBehavior.AllowGet);
        }
        public ActionResult VentaAuto()
        {
            return View("VentaAuto");
        }
        public ActionResult gridVentaAuto()
        {
            string JSONString = string.Empty;
            List<VentaAutoGrid> grid = (from va in db.VentaAuto
                                        join a in db.Autos on va.IdAutos equals a.IdAutos
                                        join aa in db.Auto_Adiccionales on va.IdAuto_Adic equals aa.IdAuto_Adic
                                        join c in db.Cliente on va.IdCliente equals c.IdCliente
                                        join s in db.Sucursal on va.IdSucursal equals s.IdSucursal
                                        join co in db.Color on a.IdColor equals co.IdColor
                                        join m in db.Modelo on a.IdModelo equals m.IdModelo
                                        join an in db.Anio on a.IdAnio equals an.IdAnio
                                        where va.IdVendido == 1
                                        select new VentaAutoGrid
                                        {
                                            IdVentaAuto = va.IdVentaAuto,
                                            Nombre = c.Nombre + " " + c.ApP + " " + c.ApM,
                                            Telefono = c.Telefono,
                                            TelefonoCasa = c.TelefonoCasa,
                                            Correo = c.Correo,
                                            Carro = a.Marca + " " + m.Modelo1,
                                            Anio = an.Anio1
                                        }).ToList();

            JSONString = JsonConvert.SerializeObject(grid);
            return Json(JSONString, JsonRequestBehavior.AllowGet);
        }
        public ActionResult Traspaso()
        {
            return View("Traspaso");
        }
    }
}
