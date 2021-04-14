using System;
using System.Linq;
using System.Web.Mvc;
using Laundry_MVC.Models;
using Laundry_MVC.Models.DAO;
using Microsoft.Reporting.WebForms;
using PagedList;
using Constraint = Laundry_MVC.Models.Constraint;

namespace Laundry_MVC.Controllers
{
    [Authorize]
    public class CustomerController : Controller
    {
        private readonly DB_Connection _connection = new DB_Connection();
        
        private string _sqlQuery = "";
        // GET
        public ActionResult Index()
        {
            return View();
        }
        
        // partial view
        public PartialViewResult _PartialTable(int? page, int? pageSize, Customer customer)
        {
            var pageIndex = page.HasValue ? Convert.ToInt32(page) : 1;

            var defaultPage = (pageSize ?? Constraint.PageSize);
            
            ViewBag.PSize = defaultPage;

            _sqlQuery = $"GetAllCustomers '{customer.Name}','{customer.Phone}','{customer.Type}'";

            var data = _connection.Database
                .SqlQuery<CustomerModel>(_sqlQuery)
                .ToList()
                .ToPagedList(pageIndex, defaultPage);
            
            return PartialView(data);
        }

        // create
        [HttpPost]
        [ValidateAntiForgeryToken]
        public JsonResult Create(Customer customer)
        {            
            var name = _connection
                .Customers
                .Any(db => db.Name == customer.Name && db.Delete == 1);
            
            if (name)
            {               
                return Json(new {name = "name is exist."});
            }

            var phone = _connection.Customers.Any(db=> db.Phone == customer.Phone && db.Delete == 1);

            if (phone)
            {
                return Json(new {phone = "phone is exist."});
            }

            _connection.Database.ExecuteSqlCommand("AddCustomer {0}, {1}, {2}, {3}", customer.Name, customer.Phone, customer.Type, customer.Noted);
            _connection.SaveChanges();
            
            return Json("Customer create successfully.");
        }
        
        // update
        [HttpPost]
        [ValidateAntiForgeryToken]
        public JsonResult Update(Customer customer)
        {
            var name = _connection.Customers.Any(db => db.Name == customer.Name && db.CustomerId != customer.CustomerId && db.Delete == 1);
            
            if (name)
            {
                return Json(new {name = "name is exist."});
            }

            var phone = _connection.Customers.Any(db=> db.Phone == customer.Phone && db.CustomerId != customer.CustomerId);

            if (phone)
            {
                return Json(new {phone = "phone is exist."});
            }

            var entity = _connection.Customers.Find(customer.CustomerId);

            if (entity != null)
            {
                entity.Name = customer.Name;
                entity.Phone = customer.Phone;
                entity.Type = customer.Type;
                entity.Noted = customer.Noted;
            }

            _connection.SaveChanges();
            
            return Json("Customer Updated successfully.");
        }

        // remove
        [HttpPost]
        [ValidateAntiForgeryToken]
        public JsonResult Delete(int id)
        {
            var customer = _connection.Customers.Find(id);
            if (customer == null)
            {
                return Json(new {error= "Customer id not found."});
            }

            customer.Delete = 0;
            
            _connection.SaveChanges();
            
            return Json("Remove successfully.");
        }

        // export
        public ActionResult Reports(string reportType)
        {
            var report = new LocalReport();
            report.ReportPath = Server.MapPath("~/Reports/ReportCustomer.rdlc");

            var dataSource = new ReportDataSource();
            dataSource.Name = "DataSetCustomer";
            dataSource.Value = _connection.Customers.ToList();
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
            else if (type == "Word")
            {
                fileExtension = "docx";
            }
            else if (type == "Image")
            {
                fileExtension = "jpg";
            }

            string[] streams;
            Warning[] warnings;
            var bytes = report.Render(type, "", out mimeType, out encoding, out fileExtension, out streams, out warnings);

            Response.AddHeader("content-disposition","attachment;filename= customer_reports."+ fileExtension);
            return File(bytes, fileExtension);
        }
    }
}