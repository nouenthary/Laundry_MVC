using System;
using System.Linq;
using System.Web.Mvc;
using Laundry_MVC.Models;
using Laundry_MVC.Models.DAO;
using PagedList;

namespace Laundry_MVC.Controllers
{
    public class ServiceController : Controller
    {
        private readonly DB_Connection _connection = new DB_Connection();
        
        private string _sqlQuery = "";
        // GET
        public ActionResult Index()
        {
            _sqlQuery = "GetAllServices";
            var data = _connection.Database
                .SqlQuery<ServiceModel>(_sqlQuery)
                .ToList();
            return View(data);
        }
        
        // partial view
        public PartialViewResult _PartialTable(int? page, int? pageSize)
        {
            var pageIndex = page.HasValue ? Convert.ToInt32(page) : 1;

            var defaultPage = (pageSize ?? Constraint.PageSize);
            
            ViewBag.PSize = defaultPage;

            _sqlQuery = "GetAllServices";

            var data = _connection.Database
                .SqlQuery<ServiceModel>(_sqlQuery)
                .ToList()
                .ToPagedList(pageIndex, defaultPage);
            
            return PartialView(data);
        }
        
        // add 
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(Service model)
        {
            var exist = _connection.Services.Any(x => x.ServiceName == model.ServiceName && x.Type == model.Type);
            if (exist)
            {
                return Json(new { error = "Service type has exist."});
            }
            
            if (GetUserId() == 0)
            {
                return RedirectToAction("Index", "Login");
            }

            var userId = GetUserId();

            var entity = new Service()
            {
                ServiceName =  model.ServiceName,
                Price = model.Price,
                Date = Constraint.GetDate(),
                Time = Constraint.GetTime(),
                Auditor = userId,
                Status = "Enable",
                Discount = model.Discount,
                Type = model.Type
            };
            _connection.Services.Add(entity);
            _connection.SaveChanges();
            
            return Json("Created successfully.");
        }
        
        // user
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
        
        // update
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Update(Service model)
        {
            if (GetUserId() == 0)
            {
                return RedirectToAction("Index", "Login");
            }

            var useId = GetUserId();

            var exist = 
                _connection
                .Services
                .Any(x => x.ServiceName == model.ServiceName && x.Type == model.Type && x.ServiceId != model.ServiceId);

            if (exist)
            {
                return Json(new { error = "Service type has exist."});
            }

            var entity = _connection.Services.Find(model.ServiceId);

            if (entity != null)
            {
                entity.ServiceName = model.ServiceName;
                entity.Type = model.Type;
                entity.Price = model.Price;
                entity.Discount = model.Discount;
                entity.Auditor = useId;
                entity.Date = Constraint.GetDate();
                entity.Time = Constraint.GetTime();
            }

            _connection.SaveChanges();
            
            return Json("Updated successfully.");
        }
        
        // remove
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Remove(int id)
        {
            var entity = _connection.Services.Find(id);

            if (entity == null)
            {
                return Json(new { error = "Service id not found."});
            }

            entity.Status = "Disable";

            _connection.SaveChanges();
            
            return Json("Remove successfully.");
        }
        
    }
}