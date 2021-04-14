using System;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;
using System.Web.Mvc;
using Laundry_MVC.Models;
using Laundry_MVC.Models.DAO;
using Microsoft.Reporting.WebForms;
using QRCoder;
using PagedList;

namespace Laundry_MVC.Controllers
{
    [Authorize]
    public class ReportController : Controller
    {
        private readonly DB_Connection _connection = new DB_Connection();

        private string _sqlQuery = "";
        // GET
        public ActionResult Index()
        {
            return View();
        }

        // partial views
        public PartialViewResult _PartialTable(int? page, int? pageSize, ReportModel model, string report) {
            var pageIndex = page.HasValue ? Convert.ToInt32(page) : 1;

            var defaultPage = (pageSize ?? Constraint.PageSize);

            ViewBag.PSize = defaultPage;

            _sqlQuery = String.Format("GetAllReports '{0}','{1}','{2}','{3}','{4}','{5}'", 
                model.Name, model.Type, model.Seller, model.StartDate, model.InvoiceId, GetReport(report));

            var data =  _connection.Database
                .SqlQuery<ReportModel>(_sqlQuery)
                .ToList()
                .ToPagedList(pageIndex, defaultPage);

            return PartialView(data);
        }

        private static string GetReport(string report)
        {
            string date;

            if (report == "Today")
                date = Constraint.GetDate();
            else if (report == "This Month")
                date = "2021-04-01";    
            else if (report == "Last Month")
                date = "2021-03-01";
            else
                date = "";
            
            return date;
        }

        // print 
        public ActionResult Invoice(int id)
        {
            // get item
            var laundry = _connection
                .Laundaries
                .Where(db => db.InvoiceId == id && db.Status != "Reject")
                .ToList();

            // get currency
            var currency = _connection.Configs.SingleOrDefault(item => item.key == "currency").value;
            double dollar = 4000;
            if (currency != null) {
                dollar = double.Parse(currency);
            }
            // set to view
            ViewBag.Invoice = laundry.First().InvoiceId;
            ViewBag.Customer = laundry.First().Customer.Name;
            ViewBag.Phone = laundry.First().Customer.Phone;
            ViewBag.Khr = laundry.Sum(db => db.Amount);
            ViewBag.Dollar = String.Format("{0:0.00}", laundry.Sum(db => db.Amount / dollar));
            ViewBag.Date = laundry.First().Date;
            ViewBag.Kgs = laundry.Sum(db => db.Weight);
            ViewBag.Pcs = laundry.Sum(db => db.Qty);
            
            // check user id
            if (GetUserId() == 0)
            {
                return RedirectToAction("Index", "Login");
            }

            // invoice
            ViewBag.DatePrint = Constraint.GetDate();
            ViewBag.GetLastReceipt = GetLastReceipt();
            // address
            ViewBag.Address = _connection.Configs.SingleOrDefault(item => item.key == "address").value;
            ViewBag.PhoneInvoice = _connection.Configs.SingleOrDefault(item => item.key == "phone").value;
            ViewBag.Noted = _connection.Configs.SingleOrDefault(item => item.key == "noted").value;
            ViewBag.Title = _connection.Configs.SingleOrDefault(item => item.key == "title").value;

            // qr code
            var qrCode = laundry.First().InvoiceId.ToString();
            using (MemoryStream ms = new MemoryStream())
            {
                QRCodeGenerator generator = new QRCodeGenerator();
                QRCodeData data = generator.CreateQrCode(qrCode, QRCodeGenerator.ECCLevel.Q);
                QRCode code = new QRCode(data);

                using (Bitmap bitmap = code.GetGraphic(20))
                {
                    bitmap.Save(ms, ImageFormat.Png);
                    TempData["QrCode"] = "data:image/png;base64," + Convert.ToBase64String(ms.ToArray());
                }
            }
            
            return View(laundry);
        }
        
        // 
        private double GetCurrency()
        {
            var currency = _connection.Currencies.First(db => db.Name.Equals("Dollar"));
            return Convert.ToDouble(currency.Rate);
        }
        
        // get last receipt
        private int GetLastReceipt()
        {
            var useId = GetUserId();
            var r = _connection
                .Receipts
                .Where(d => d.UserId == useId)
                .Max(receipt => receipt.ReceiptId);
            return r;
        }
        
        // receipt
        [HttpPost]
        public ActionResult Increase(int invoiceId)
        {
            if (GetUserId() == 0)
            {
                return RedirectToAction("Index", "Login");
            }

            var useId = GetUserId();
            
            var r = new Receipt()
            {
                UserId = useId,
                Date = Constraint.GetDate(),
                Time = Constraint.GetTime(),
                InvoiceId = invoiceId
            };

            _connection.Receipts.Add(r);
            _connection.SaveChanges();
            
            return Json(new {message = "success"});
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

        // service
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

        // export
        public ActionResult Reports(string reportType)
        {
            var report = new LocalReport();
            report.ReportPath = Server.MapPath("~/Reports/Report.rdlc");

            var dataSource = new ReportDataSource();
            dataSource.Name = "DataSetReport";
            dataSource.Value = _connection.Invoices.ToList();
            report.DataSources.Add(dataSource);

            var type = reportType;
            string mimeType;
            string encoding;
            string fileExtension;

            if (type == "Excel")
            {
                fileExtension = "xlsx";
            }
            else if (type == "PDF")
            {
                fileExtension = "pdf";
            }
          
            string[] streams;
            Warning[] warnings;
            var bytes = report.Render(type, "", out mimeType, out encoding, out fileExtension, out streams, out warnings);

            Response.AddHeader("content-disposition", "attachment;filename= reports." + fileExtension);
            return File(bytes, fileExtension);
        }
    }
}