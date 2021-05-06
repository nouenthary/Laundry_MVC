using System.Collections.Generic;
using System.Web.Mvc;
using Laundry_MVC.Helper;
using Laundry_MVC.Models;

namespace Laundry_MVC.Controllers
{
    public class AgentOrderController : Controller
    {
        private readonly DB_Connection _connection = new DB_Connection();
        private readonly Auth _auth = new Auth();
        // GET
        public ActionResult Index()
        {
            return View();
        }

        // POST
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Order()
        {
            var agentInvoice = new AgentInvoice()
            {
                Date = Constraint.GetDate(),
                Time = Constraint.GetTime(),
                UserId = _auth.GetUserId(),
                TotalDollar = 0,
                TotalRiel = 0,
                ReceivedDollar = 0,
                ReceviedReil = 0,
                Amount = 5,
                Status = "Pending",
                PayBy = "Cast",
                Print = "No",
                PayStatus = "Pending"
            };
            
            _connection.AgentInvoices.Add(agentInvoice);
            _connection.SaveChanges();
            
            
            var invoice = new List<AgentInvoviceDetail>()
            {
                new AgentInvoviceDetail()
                {
                    CatId = 1,
                    ProductId = 1,
                    ServiceId = 1,
                    Qty = 10,
                    Weight = 10,
                    Price = 2500,
                    Discount = 0,
                    Total = 5000,
                    Date = Constraint.GetDate(),
                    Time = Constraint.GetTime(),
                    Status = "Pending",
                    AgentId = 1,
                    UserId = _auth.GetUserId(),
                    Percent = 10,
                    Commission = 100,
                    AgentInvoiceId = agentInvoice.Id
                },
                new AgentInvoviceDetail()
                {
                    CatId = 1,
                    ProductId = 1,
                    ServiceId = 1,
                    Qty = 10,
                    Weight = 10,
                    Price = 2500,
                    Discount = 0,
                    Total = 5000,
                    Date = Constraint.GetDate(),
                    Time = Constraint.GetTime(),
                    Status = "Pending",
                    AgentId = 1,
                    UserId = _auth.GetUserId(),
                    Percent = 10,
                    Commission = 100,
                    AgentInvoiceId = agentInvoice.Id
                }
            };

            _connection.AgentInvoviceDetails.AddRange(invoice);
            _connection.SaveChanges();
            
            return Json(new {Data= "Success"},JsonRequestBehavior.AllowGet);
        }
    }
}