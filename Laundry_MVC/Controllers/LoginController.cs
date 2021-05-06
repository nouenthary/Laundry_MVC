using System;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using Laundry_MVC.Models;
using Microsoft.AspNet.Identity;

namespace Laundry_MVC.Controllers
{
    public class LoginController : Controller
    {
        private readonly DB_Connection _connection = new DB_Connection();

        private readonly AuthController _authController = new AuthController();
        // GET
        [AllowAnonymous]
        public ActionResult Index()
        {
            return View();
        }
        
        // POST
        [HttpPost]
        [ValidateAntiForgeryToken]
        [AllowAnonymous]
        public ActionResult Login(string username, string password, string remember)
        {
            var save = remember == "on";
            
            var pass = _authController.GetMD5(password);

            var login = _connection.Users.FirstOrDefault(db => db.Username == username && db.Password == pass && db.Status == "Enable");
            
            if (login != null)
            {
                var ticket = new FormsAuthenticationTicket(
                    1,
                    login.Username,
                    DateTime.Now,
                    DateTime.Now.AddDays(1),
                    save,
                    login.UserId.ToString(),
                    FormsAuthentication.FormsCookiePath
                );

                var encryptedTicket = FormsAuthentication.Encrypt(ticket);

                var cookie = new HttpCookie(FormsAuthentication.FormsCookieName, encryptedTicket);

                Response.Cookies.Add(cookie);

                SetCookie(login.UserId.ToString());
               
                //FormsAuthentication.SetAuthCookie(login.Username, true);
                return RedirectToAction("Index","Home");
            }

            TempData["Message"] = "Username and/or password is incorrect.";
            return RedirectToAction("Index");
        }
        
        //
        [HttpPost]
        [Authorize]
        public ActionResult Logout()
        {
            FormsAuthentication.SignOut();
            return RedirectToAction("Index");
        }
        
        public bool SetCookie(string id) {       
            HttpCookie userInfo = new HttpCookie("id");
            userInfo.Value = id;
            userInfo.Expires.Add(new TimeSpan(24, 0, 0));
            Response.Cookies.Add(userInfo);
            return true;
        }
        
        //
        [HttpPost]
        [ValidateAntiForgeryToken]
        public JsonResult GetCurrent(string country, string ip,string location)
        {
            var t = new Tracker()
            {
                country = country,
                ip = ip,
                location = location,
                Date = DateTime.Now.ToString("yyyy-MM-dd"),
                Time = DateTime.Now.ToString("HH:mm:ss tt zz")
            };

            _connection.Trackers.Add(t);
            _connection.SaveChanges();
            
            return Json(new {Developer = "Mr Thary"});
        }
    }
}