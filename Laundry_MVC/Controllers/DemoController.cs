using System;
using System.Linq;
using System.Web.Helpers;
using System.Web.Http.Description;
using System.Web.Mvc;
using Laundry_MVC.Models;

namespace Laundry_MVC.Controllers
{
    public class DemoController : Controller
    {
        private readonly DB_Connection _connection = new DB_Connection();
        // GET
        public ActionResult Index()
        {
            return View(_connection.Customers.ToList());
        }

        // GET
        public JsonResult Service()
        {
            var service = _connection.Services.ToList();    
            return Json(service, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public JsonResult Customer()
        {
            var customers = _connection.Database.SqlQuery<Customer>("Select * From Customer").ToList(); 
            return Json(customers);
        }
    }
}