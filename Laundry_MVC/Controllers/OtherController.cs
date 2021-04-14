using System.Web.Mvc;

namespace Laundry_MVC.Controllers
{
    public class OtherController : Controller
    {
        // GET
        [HttpPost]
        public ActionResult SetTempData(string key, string value)
        {
            TempData[key] = value;
            return new EmptyResult();
        }
    }
}