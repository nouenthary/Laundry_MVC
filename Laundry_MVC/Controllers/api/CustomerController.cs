using System.Linq;
using System.Web.Http;
using Laundry_MVC.Models;

namespace Laundry_MVC.Controllers.api
{
    public class CustomerController : ApiController
    {
        private readonly DB_Connection _connection = new DB_Connection();
        // GET
        [HttpGet]
        public object Index()
        {
            var customers = _connection.Database
                .SqlQuery<Customer>("Select * From Customer").OrderByDescending(x=> x.CustomerId).ToList();
            return Json(new {data = customers});
        }

        [HttpPost]
        public object CreateCustomer(Customer customer)
        {

            _connection.Customers.Add(customer);
            _connection.SaveChanges();
            
            return Json(new { message = customer});
        }
    }
}