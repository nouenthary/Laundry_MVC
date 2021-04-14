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
    [Authorize]
    public class CategoryController : Controller
    {
        private readonly DB_Connection _connection = new DB_Connection(); 

        // GET: Category
        public ActionResult Index()
        {
            var data = _connection
                .Categories
                .Where(db => db.Delete == 1)
                .OrderByDescending(db => db.CategoryId)
                .ToList();
            return View(data);
        }
        
        [HttpPost]
        public ActionResult Index(string thary)
        {
            var qrCode = Request.Form["qrCode"];
            using (MemoryStream ms = new MemoryStream())
            {
                QRCodeGenerator generator = new QRCodeGenerator();
                QRCodeData data = generator.CreateQrCode(qrCode, QRCodeGenerator.ECCLevel.Q);
                QRCode code = new QRCode(data);

                using (Bitmap bitmap = code.GetGraphic(20))
                {
                    bitmap.Save(ms, ImageFormat.Png);
                    TempData["QrCodeImage"] = "data:image/png;base64," + Convert.ToBase64String(ms.ToArray());
                    TempData["Thary"] = thary;
                }
            }
            return RedirectToAction("Index");
        }
        
        
        // store
        [HttpPost]
        [ValidateAntiForgeryToken]
        public JsonResult Create(Category category)
        {
            var type = _connection.Categories.Any(db => db.Name == category.Name && db.Delete == 1);
            
            if (type)
            {
                return Json(new {type = "Laundry type is exist."});
            }

            var entity = new Category()
            {
                Name = category.Name,
                Price = category.Price,
                Delete = 1,
                Whole = category.Whole,
                VIP = category.VIP,
                Discount = category.Discount
            };

            _connection.Categories.Add(entity);
            _connection.SaveChanges();

            return Json("Created successfully.");
        }

        // update
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Update(Category category)
        {
            var find = _connection.Categories.Any(db => db.Name == category.Name && db.CategoryId != category.CategoryId && db.Delete == 1);

            if (find)
            {
                return Json(new {error = "Laundry type Name exist..."});
            }
            
            var entity = _connection.Categories.Find(category.CategoryId);

            if (entity != null)
            {
                entity.Name = category.Name;

                entity.Price = category.Price;
                entity.Whole = category.Whole;
                entity.VIP = category.VIP;
                entity.Discount = category.Discount;
                _connection.SaveChanges();
            }

            return Json("Updated successfully.");
        }
        
        // remove
        [HttpPost]
        [ValidateAntiForgeryToken]
        public JsonResult Delete(int id)
        {
            var category = _connection.Categories.Find(id);
            
            if (category == null)
            {
                return Json(new {error= "Category id not found."});
            }

            // 
            if (category.CategoryId == 1 || category.CategoryId == 2)
            {
                return Json(new { error = "You can`t not delete."});
            }

            
            category.Delete = 0;
            
            _connection.SaveChanges();
            
            return Json("Remove successfully.");
        }

    }
}