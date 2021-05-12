using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;
using Laundry_MVC.Helper;
using Laundry_MVC.Models;
using Laundry_MVC.Models.DAO;

namespace Laundry_MVC.Controllers
{
    public class AgentOrderController : Controller
    {
        private readonly DB_Connection _connection = new DB_Connection();
        private readonly Auth _auth = new Auth();
        // GET
        public ActionResult Index()
        {
            var data = _connection.AgentInvoices.Where(x => x.AgentInvoviceDetails.Any()).ToList();
            return View(data);
        }
        
        // GET
        public ActionResult Create(int orderId)
        {
            var agentInvoice = _connection.AgentInvoices.Find(orderId);

            if (agentInvoice == null)
            {
                return RedirectToAction("Index");
            }

            var data =_connection.AgentInvoviceDetails
                .Where(x => x.AgentInvoiceId == orderId && x.Status == "Pending")
                .ToList();

            var agentId = _connection.AgentInvoviceDetails.FirstOrDefault(x => x.AgentInvoiceId == orderId);

            if (agentId != null) ViewBag.AgentId = agentId.AgentId;

            return View(data);
        }

        // POST
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Order(List<AgentOrder> orders, int agentId)
        {
            var userId = _auth.GetUserId();
            
            var agentInvoice = new AgentInvoice()
            {
                Date = Constraint.GetDate(),
                Time = Constraint.GetTime(),
                UserId = userId,
                TotalDollar = 0,
                TotalRiel = 0,
                ReceivedDollar = 0,
                ReceviedReil = 0,
                Amount = 0,
                Status = "Pending",
                PayBy = "Cast",
                Print = "No",
                PayStatus = "Pending"
            };
            
            _connection.AgentInvoices.Add(agentInvoice);
            _connection.SaveChanges();

            // commission
            var commission = _connection.Commissions.FirstOrDefault(x=>x.UserId == userId);
            double percent = 0;
            if (commission != null)
            {
                percent = Convert.ToDouble(commission.Percent);
            }
            
            var invoice = new List<AgentInvoviceDetail>();
            
            foreach (var t in orders)
            {
                var service = _connection.Services.Find(t.ServiceId);
                
                double total = SumForPay(t.ServiceId, t.Qty, t.Weight);
                
                double commissionPrice = 0;
                
                if (percent > 0)
                {
                    commissionPrice = (percent /100) * total ;
                }

                if (service != null)
                    invoice.Add(new AgentInvoviceDetail()
                    {
                        CatId = t.CategoryId,
                        ProductId = t.ProductId,
                        ServiceId = t.ServiceId,
                        Qty = t.Qty,
                        Weight = t.Weight,
                        Price = service.Price,
                        Discount = service.Discount,
                        Total = total,
                        Date = Constraint.GetDate(),
                        Time = Constraint.GetTime(),
                        Status = "Pending",
                        AgentId = agentId,
                        UserId = _auth.GetUserId(),
                        Percent = percent,
                        Commission = commissionPrice,
                        AgentInvoiceId = agentInvoice.Id
                    });
            }
            
            _connection.AgentInvoviceDetails.AddRange(invoice);
            _connection.SaveChanges();
            
            // amount for invoice
            var amount = _connection.AgentInvoviceDetails.Where(x => x.AgentInvoiceId == agentInvoice.Id).Sum(x => x.Total);

            agentInvoice.Amount = amount;
            _connection.SaveChanges();
            
            return Json(new {message = "Order successfully.", order_id = agentInvoice.Id});
        }
        
        // find for pay
        public double SumForPay(int serviceId, int qty, double weight)
        {
            var service = _connection.Services.Find(serviceId);

            double amount = 0;

            if (service != null)
            {
                var price = Convert.ToDouble(service.Price);

                var discount = Convert.ToDouble(service.Discount);
                
                switch (service.Unit)
                {
                    case "Kg":
                        amount = weight * price;
                        break;
                    case "Pcs":
                        amount = qty * price;
                        break;
                }
                
                if (discount > 0)
                {
                    amount -= (discount / 100);
                }
            }

            return amount;
        }
        
        // Generate Invoice
        [HttpPost]
        [ValidateAntiForgeryToken]
        public JsonResult GenerateInvoice()
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
                Amount = 0,
                Status = "Pending",
                PayBy = "Cast",
                Print = "No",
                PayStatus = "Pending"
            };
            
            _connection.AgentInvoices.Add(agentInvoice);
            _connection.SaveChanges();

            return Json(new{orderId = agentInvoice.Id});
        }
        
        // get Product by Category
        [HttpPost]
        [ValidateAntiForgeryToken]
        public JsonResult GetProductByCategory(int id)
        {
            var data = _connection.Products
                .Where(x =>x.CategoryId == id)
                .Select(x => new
                {
                    key = x.Id_,
                    value = x.Product1
                })
                .ToList();
            return Json(data);
        }

        // add item
        [HttpPost]
        [ValidateAntiForgeryToken]
        public JsonResult AddItem(AgentInvoviceDetail model)
        {
            var userId = _auth.GetUserId();
            // commission
            var commission = _connection.Commissions.FirstOrDefault(x=>x.UserId == userId);
            double percent = 0;
            if (commission != null)
            {
                percent = Convert.ToDouble(commission.Percent);
            }
            
            var service = _connection.Services.Find(model.ServiceId);

            var qty = Convert.ToInt32(model.Qty);

            var weight = Convert.ToInt32(model.Weight);

            if (service != null)
            {
                double total = SumForPay(service.ServiceId, qty, weight);
                
                double commissionPrice = 0;
                
                if (percent > 0)
                {
                    commissionPrice = (percent /100) * total ;
                }
            
                var orderItem = new AgentInvoviceDetail()
                {
                    CatId = model.CatId,
                    ProductId = model.ProductId,
                    ServiceId = model.ServiceId,
                    Qty = model.Qty,
                    Weight = model.Weight,
                    Price = service.Price,
                    Discount = service.Discount,
                    Total = total,
                    Date = Constraint.GetDate(),
                    Time = Constraint.GetTime(),
                    Status = "Pending",
                    AgentId = model.AgentId,
                    UserId = _auth.GetUserId(),
                    Percent = percent,
                    Commission = commissionPrice,
                    AgentInvoiceId = model.AgentInvoiceId
                };

                _connection.AgentInvoviceDetails.Add(orderItem);
                _connection.SaveChanges();
            }
            
            var sqlQuery = "UPDATE [AgentInvoviceDetails] SET [AgentId] = {0} WHERE [AgentInvoiceId] = {1}";
            _connection.Database.ExecuteSqlCommand(sqlQuery,model.AgentId, model.AgentInvoiceId);
            _connection.SaveChanges();
            
            return Json(new {message = "Item add successfully."});
        }
        
        
        // Update Item
        [HttpPut]
        [ValidateAntiForgeryToken]
        public JsonResult UpdateItem(AgentInvoviceDetail model)
        {
            var entity = _connection.AgentInvoviceDetails.Find(model.Id);

            if (entity == null)
            {
                return Json(new { error = "id not found."});
            }
            
            var userId = _auth.GetUserId();
            // commission
            var commission = _connection.Commissions.FirstOrDefault(x=>x.UserId == userId);
            double percent = 0;
            if (commission != null)
            {
                percent = Convert.ToDouble(commission.Percent);
            }
            
            var service = _connection.Services.Find(model.ServiceId);

            var qty = Convert.ToInt32(model.Qty);

            var weight = Convert.ToInt32(model.Weight);

            if (service != null)
            {
                double total = SumForPay(service.ServiceId, qty, weight);
                
                double commissionPrice = 0;
                
                if (percent > 0)
                {
                    commissionPrice = (percent /100) * total ;
                }

                entity.CatId = model.CatId;
                entity.ProductId = model.ProductId;
                entity.ServiceId = model.ServiceId;
                entity.Qty = model.Qty;
                entity.Weight = model.Weight;
                entity.Price = service.Price;
                entity.Discount = service.Discount;
                entity.Total = total;
                entity.Date = Constraint.GetDate();
                entity.Time = Constraint.GetTime();
                entity.AgentId = model.AgentId;
                entity.UserId = _auth.GetUserId();
                entity.Percent = percent;
                entity.Commission = commissionPrice;

                _connection.SaveChanges();
            }


            var sqlQuery = "UPDATE [AgentInvoviceDetails] SET [AgentId] = {0} WHERE [AgentInvoiceId] = {1}";
            _connection.Database.ExecuteSqlCommand(sqlQuery,model.AgentId, model.AgentInvoiceId);
            _connection.SaveChanges();

            return Json(new { message = "Item Update successfully." });
        }

        // Remove item
        [HttpDelete]
        [ValidateAntiForgeryToken]
        public JsonResult RemoveItem(int id)
        {
            var entity = _connection.AgentInvoviceDetails.Find(id);

            if (entity == null)
            {
                return Json(new {error = "id not found."});
            }

            entity.Status = "Reject";

            _connection.SaveChanges();
            
            return Json(new { message = "Item remove successfully."});
        }
    }
}