using System.Linq;
using System.Web.Mvc;
using Laundry_MVC.Models;

namespace Laundry_MVC.Controllers
{
    public class AgentController : Controller
    {
        private readonly DB_Connection _connection = new DB_Connection();

        // GET
        public ActionResult Index()
        {
            var agents = _connection.Agents.Where(x => x.Status == "Enable").ToList();

            return View(agents);
        }


        // POST
        [HttpPost]
        [ValidateAntiForgeryToken]
        public JsonResult Store(Agent model)
        {
            var name = _connection.Agents.Any(x => x.Name == model.Name && x.Status == "Enable");

            if (name)
            {
                return Json(new {error = "name is exist."});
            }
            
            var phone = _connection.Agents.Any(x => x.Tel == model.Tel && x.Status == "Enable");
            
            
            if (phone)
            {
                return Json(new {error = "phone is exist."});
            }

            //model.Date = Constraint.GetDate();
            //model.Time = Constraint.GetTime();
            model.Status = "Enable";
            _connection.Agents.Add(model);
            _connection.SaveChanges();

            return Json(new {message = "Agent create successfully."});
        }
        
        //PUT
        [HttpPut]
        [ValidateAntiForgeryToken]
        public JsonResult Update(Agent model)
        {
            var name = _connection.Agents.Any(x => x.Name == model.Name && x.Status == "Enable" && x.Id != model.Id);

            if (name)
            {
                return Json(new {error = "name is exist."});
            }
            
            var phone = _connection.Agents.Any(x => x.Tel == model.Tel && x.Status == "Enable" && x.Id != model.Id);
            
            
            if (phone)
            {
                return Json(new {error = "phone is exist."});
            }


            var entity = _connection.Agents.Find(model.Id);

            if (entity == null)
            {
                return Json(new {error = "id not found."});   
            }

            entity.Name = model.Name;
            entity.Tel = model.Tel;
            entity.Address = model.Address;
            //entity.Date = Constraint.GetDate();
            //entity.Time = Constraint.GetTime();

            _connection.SaveChanges();
            
            return Json(new {message = "Update successfully."});
        }

        // DELETE
        [HttpDelete]
        [ValidateAntiForgeryToken]
        public JsonResult Remove(int id)
        {
            var entity = _connection.Agents.Find(id);

            if (entity == null)
            {
                return Json(new {error = "id not found."});
            }

            entity.Status = "Disable";

            _connection.SaveChanges();

            return Json(new {message = "Remove successfully."}); 
        }
    }
}