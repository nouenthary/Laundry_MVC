using System.Linq;
using System.Web.Mvc;
using Laundry_MVC.Models;

namespace Laundry_MVC.Controllers
{
    public class ConfigController : Controller
    {
        private readonly DB_Connection _connection = new DB_Connection(); 
        
        // GET
        public ActionResult Index()
        {
            return View();
        }
        
        // update
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Update(FormCollection form)
        {
            foreach (var key in form.AllKeys)
            {
                var entity = _connection.Configs.FirstOrDefault(x => x.key == key);
                if (entity != null) entity.value = form[key];
            }

            _connection.SaveChanges();

            return RedirectToAction("Index");
        }
    }
}