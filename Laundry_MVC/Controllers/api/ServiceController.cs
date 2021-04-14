using System.Linq;
using System.Web.Http;
using Laundry_MVC.Models;

namespace Laundry_MVC.Controllers.api
{
    public class ServiceController : ApiController
    {
        private readonly DB_Connection _connection = new DB_Connection();
        
        // GET
        [HttpGet]
        [Authorize]
        public object Index()
        {
            var item = _connection
                .Categories
                .Select(x => new
                {
                    x.CategoryId,
                    x.Name,
                    x.Price
                })    
                .ToList();

            return Json(new
            {
                Data = item
            });
        }
    }
}