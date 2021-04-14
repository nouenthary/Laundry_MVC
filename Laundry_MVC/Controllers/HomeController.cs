using System;
using System.Linq;
using System.Web.Mvc;
using Laundry_MVC.Helper;
using Laundry_MVC.Models;
using Microsoft.Ajax.Utilities;

namespace Laundry_MVC.Controllers
{
    [Authorize]
    public class HomeController : Controller
    {
        private readonly DB_Connection _connection = new DB_Connection();
        public ActionResult Index()
        {
            var customer = _connection.Customers;
            ViewBag.Customer = customer.Count();
            
            var payment = _connection.Invoices.Where(db => db.Status == "Paid");
            ViewBag.Payment = payment.Count();

            var sale = _connection.Laundaries.Where(db => db.Status != "Reject" || db.Status == "Complete").DistinctBy(db => db.CustomerId);
            ViewBag.Sale = sale.Count();
            
            return View();
        }

        public ActionResult PayWay()
        {
            const string id = "knakfashioncambodia";
            var date = DateTime.Now.ToString("yyyy-MM-dd");
            ViewBag.hash = UtilHelper.SHA512_ComputeHash($"{id}{date}", "91c9f475c75231054875c6b6da034f12");
            ViewBag.tran_id = DateTimeOffset.UtcNow.ToUnixTimeMilliseconds().ToString();
            return View();
        }      
    }
}