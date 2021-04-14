using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;
using Laundry_MVC.Models;

namespace Laundry_MVC.Controllers
{
    [Authorize]
    public class LaundryController : Controller
    {
        private readonly DB_Connection _connection = new DB_Connection();

        private readonly RawSql _rawSql = new RawSql();

        private static string _sqlQuery = "";
        // GET
        public ActionResult Index()
        {
            if (GetUserId() == 0)
            {
                return RedirectToAction("Index", "Login");
            }

            var useId = GetUserId();
            
            var user = _connection.Users.FirstOrDefault(db => db.UserId == useId);

            if (user == null)
            {
                return RedirectToAction("Index", "Login");
            }

            if (user.RoleId > 1)
            {
                var list = _connection
                    .Laundaries
                    .Where(db => db.Status == "Reject" && db.UserId == useId)   
                    .OrderByDescending(db => db.LaundryId)
                    .ToList();
                return View(list); 
            }

            var data = _connection
                .Laundaries
                .OrderByDescending(db => db.LaundryId)
                .ToList();
            return View(data);
        }
        
        public int GetUserId()
        {
            try {
                var cookie = Request.Cookies["id"];
                return int.Parse(cookie.Value);
            } catch (Exception e) {  
                Console.Write(e.Message);
                return 0;
            }
            
        }

        // get invoice
        private int GetInvoice()
        {
            // add invoice
            var invoice = new Invoice(){
                Status = "Pending",
                StartDate = DateTime.Now.ToString("yyyy-MM-dd"),
                UserId = GetUserId(),
                Delete = 1,
                Total = 0
            };
            
            _connection.Invoices.Add(invoice);
            _connection.SaveChanges();

            return invoice.InvoiceId;
        }


        // Add new 
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(List<Laundary> laundry)
        {
            var userId = GetUserId();
            var customer = laundry.First().CustomerId;
            
            // generate invoice
            _sqlQuery = String.Format("EXEC AddInvoice N'{0}',N'{1}'", userId, customer);
            _rawSql.ExecuteSqlQuery(_sqlQuery);
            
            foreach (var item in laundry)
            {
                _sqlQuery = String.Format("AddOrder N'{0}',N'{1}',N'{2}',N'{3}',N'{4}'",
                    item.CustomerId, item.ServiceId,item.Weight,item.Qty,userId);
                _rawSql.ExecuteSqlQuery(_sqlQuery);
                // var type = _connection.Categories.Find(item.CategoryId);
                //
                // if (type == null) continue;
                //
                // double? amount = 0;
                //
                // switch (type.CategoryId)
                // {
                //     case 1:
                //     {
                //         double? price = 0;
                //         switch (customerType.Type)
                //         {
                //             case "Unit Price":
                //                 price = type.Price;
                //                 break;
                //             case "Whole Price":
                //                 price = type.Whole;
                //                 break;
                //             case "VIP":
                //                 price = type.VIP;
                //                 break;
                //         }
                //
                //         amount = price * item.Qty;
                //         break;
                //     }
                //     case 2:
                //     {
                //         double? price = 0;
                //         switch (customerType.Type)
                //         {
                //             case "Unit Price":
                //                 price = type.Price;
                //                 break;
                //             case "Whole Price":
                //                 price = type.Whole;
                //                 break;
                //             case "VIP":
                //                 price = type.VIP;
                //                 break;
                //         }
                //     
                //         amount = price * item.Weight;
                //         break;
                //     }
                // }
                //
                // if (GetUserId() == 0)
                // {
                //     return RedirectToAction("Index", "Login");
                // }
                //
                // // commission
                //
                // var commissionModel = _connection.Commissions.FirstOrDefault(x => x.UserId == userId);
                //
                // double commission = 0;
                //
                // if (commissionModel == null)
                // {
                //     commission = 0;
                // }
                //
                // if (commissionModel != null && commissionModel.Percent > 0)
                // {
                //     commission = Convert.ToDouble(commissionModel.Percent * amount / 100);
                // }
                //
                // if (commissionModel != null)
                // {
                //     var entity = new Laundary()
                //     {
                //         Weight = item.Weight,
                //         CategoryId = item.CategoryId,
                //         CustomerId = item.CustomerId,
                //         Status = "Pending",
                //         Date = Constraint.GetDate(),
                //         Amount = amount,
                //         UserId = GetUserId(),
                //         InvoiceId = invoice,
                //         Delete = 1,
                //         Qty = item.Qty,
                //         PercentCommission = commissionModel.Percent,
                //         Commission = commission,
                //         Type = item.Type 
                //     };
                //
                //     _connection.Laundaries.Add(entity);
                // }
                //
                // _connection.SaveChanges();
            }
            return Json("Laundry created.");
        }
        
        // Update
        [HttpPost]
        [ValidateAntiForgeryToken]
        public JsonResult Update(Laundary laundry)
        {
            var entity = _connection.Laundaries.Find(laundry.LaundryId);

            if (entity == null)
            {
                return Json(new { error = "id laundry not found."});
            }

            var category = _connection.Categories.Find(laundry.ServiceId);

            if (category == null)
            {
                return Json(new { error = "id laundry type not found."});
            }
            
            var price = GetServicePrice(laundry.ServiceId, entity.CustomerId);
            
            double? amount = 0;

            switch (category.CategoryId)
            {
                case 1:
                    amount = price * laundry.Qty;
                    break;
                case 2: amount = price * laundry.Weight;
                    break;
            }

            entity.Amount = amount;
            entity.ServiceId = laundry.ServiceId;
            entity.Qty = laundry.Qty;
            entity.Weight = laundry.Weight;
            
            _connection.SaveChanges();

            return Json("Updated successfully.");
        }
        
        //remove
        [HttpPost]
        [ValidateAntiForgeryToken]
        public JsonResult Delete(int id)
        {
            var entity = _connection.Laundaries.Find(id);
            
            if (entity == null)
            {
                return Json(new {error = id + " = id not found."});
            }
            
            entity.Status = "Reject";
            _connection.SaveChanges();
            
            return Json("Removed successfully.");
        }

        // payment
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Payment(int invoiceId)
        {
            var invoice = _connection.Laundaries.Where(db => db.InvoiceId == invoiceId && db.Status != "Reject");

            var invoiceNum = _connection.Invoices.Find(invoiceId);

            if (GetUserId() == 0)
            {
                return RedirectToAction("Index", "Login");
            }

            if (invoiceNum != null)
            {
                invoiceNum.EndDate = Constraint.GetDate();
                invoiceNum.Status = "Paid";
                invoiceNum.UserId = GetUserId();
                invoiceNum.Total = invoice.Sum(i => i.Amount);
                invoiceNum.CustomerId = invoice.First().CustomerId;
            }
            
            foreach (var item in invoice)
            {
                item.Status = "Complete";
            }

            _connection.SaveChanges();
            
            return Json("Payment succesfully.");
        }
        
        // update status
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult UpdateStatus(int id, string status)
        {
            var entity = _connection.Laundaries.Find(id);
            if (entity == null) return RedirectToAction("Index");
            entity.Status = status;
            _connection.SaveChanges();

            return RedirectToAction("Index");
        }
        
        // get service price
        public double GetServicePrice(int? serviceId, int? customerId)
        {
            // service
            var service = _connection.Categories.FirstOrDefault(x => x.CategoryId == serviceId);
        
            // customer
            var customer = _connection.Customers.FirstOrDefault(x=>x.CustomerId == customerId);
            
            // price
            double price = 0;
            
            switch (customer?.Type)
            {
                case "Unit Price":
                    price = Convert.ToDouble(service?.Price);
                    break;
                case "Whole Price":
                    price = Convert.ToDouble(service?.Whole);
                    break;
                case "VIP":
                    price = Convert.ToDouble(service?.VIP);
                    break;
            }
            
            return price;
        }

    }
}