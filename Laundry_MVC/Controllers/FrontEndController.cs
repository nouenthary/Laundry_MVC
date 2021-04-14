using System;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;
using System.Web.Mvc;
using Laundry_MVC.Models;
using QRCoder;

namespace Laundry_MVC.Controllers
{
    [AllowAnonymous]
    public class FrontEndController : Controller
    {
        private readonly DB_Connection _connection = new DB_Connection(); 
        // GET
        public ActionResult Index(int id)
        {
            //
            var laundry = _connection
                .Laundaries
                .Where(db => db.InvoiceId == id && db.Status != "Reject")
                .ToList();

            ViewBag.Invoice = laundry.First().InvoiceId;
            ViewBag.Customer = laundry.First().Customer.Name;
            ViewBag.Phone = laundry.First().Customer.Phone;
            ViewBag.Khr = laundry.Sum(db => db.Amount);
            ViewBag.Dollar = laundry.Sum(db => db.Amount / 4000);
            ViewBag.Date = laundry.First().Date;
            ViewBag.Kgs = laundry.Sum(db => db.Weight);
            ViewBag.Pcs = laundry.Sum(db => db.Qty);
            ViewBag.Status = laundry.First().Status;
            
            // qr code
            var qrCode = "http://192.168.1.57:4000/FrontEnd/Index/" + laundry.First().InvoiceId;
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
            
            return View();
        }
    }
}