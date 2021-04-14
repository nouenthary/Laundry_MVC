using Laundry_MVC.Models;
using System;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Security.Cryptography;
using System.Text;
using System.Web.Helpers;

namespace Laundry_MVC.Controllers
{
    [Authorize]
    public class UserController : Controller
    {
        private readonly DB_Connection connection = new DB_Connection();
        // GET: User
        public ActionResult Index()
        {                  
            return View(connection.Users.Where(db => db.Delete == 1).ToList());
        }
        
        // register
        public ActionResult Register()
        {
            return View();
        }


        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Register(User user) {
            var users = new User()
            {
                Name = user.Name,
                Username = user.Username,
                Password = GetMD5(user.Password),
                Status = user.Status,
                RoleId = 2,
                Delete = 1,
                Gender = "Male",
                Address = "PP",
                Phone = "",
                Photo = "No.jpg",
                IP = "localhost"
            };

            connection.Users.Add(users);
            connection.SaveChanges();
            return RedirectToAction("Register");
        }

        //create a string MD5
        private static string GetMD5(string str)
        {
            MD5 md5 = new MD5CryptoServiceProvider();
            byte[] fromData = Encoding.UTF8.GetBytes(str);
            byte[] targetData = md5.ComputeHash(fromData);
            string byte2String = null;

            for (int i = 0; i < targetData.Length; i++)
            {
                byte2String += targetData[i].ToString("x2");

            }
            return byte2String;
        }
        
        // change password
        public ActionResult ChangePassword()
        {
            if (GetUserId() == 0)
            {
                return RedirectToAction("Index", "Login");
            }

            var useId = GetUserId();
            
            var user = connection.Users.FirstOrDefault(item => item.UserId == useId);

            if (user == null)
            {
                return RedirectToAction("Index", "Login");
            }
            
            var role = connection.Roles.FirstOrDefault(item => item.RoleId == user.RoleId);

            ViewBag.Role = role.Role1;

            ViewBag.Image = user.Photo;
            
            return View();
        }
        
        // update password
        [HttpPost,ValidateAntiForgeryToken]
        public ActionResult UpdatePassword(FormCollection form)
        {
            var oldPassword = form["OldPassword"];
            var newPassword = form["NewPassword"];
            var confirmPassword = form["ConfirmPassword"];
            
            if (GetUserId() == 0)
            {
                return RedirectToAction("Index", "Login");
            }

            var useId = GetUserId();
            
            var user = connection.Users.FirstOrDefault(item => item.UserId == useId);

            TempData["OldPassword"] = oldPassword;
            
            if (user == null)
            {
                return RedirectToAction("ChangePassword"); 
            }

            if (GetMD5(oldPassword) != user.Password)
            {
                TempData["PasswordError"] = "Password is not correct.";
                return RedirectToAction("ChangePassword"); 
            }

            if (newPassword != confirmPassword)
            {
                TempData["Error"] = "Password is not match.";
                return RedirectToAction("ChangePassword"); 
            }

            user.Password = GetMD5(newPassword);

            connection.SaveChanges();

            TempData["Message"] = "Password Updated Successfully.";
            
            return RedirectToAction("ChangePassword");
        }
        
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

        [HttpPost, ValidateAntiForgeryToken]
        public ActionResult UpdatePhoto(HttpPostedFileBase file)
        {
            if (file != null)
            {
                var pic = Path.GetFileName(file.FileName);
                
                var fileExtension = Path.GetExtension(file.FileName);
                
                var nameFileForSave = DateTime.Now.ToString("yyyy_MM_dd_hh_mm_ss").Trim() + fileExtension;

                var path = Path.Combine(Server.MapPath("~/Content/upload"), nameFileForSave); 
                // file is uploaded

                var img = new WebImage(file.InputStream);
                if (img.Width > 200)
                    img.Resize(200, 200);
                img.Save(path);
                
                if (GetUserId() == 0)
                {
                    return RedirectToAction("Index", "Login");
                }

                var useId = GetUserId();
            
                var user = connection.Users.FirstOrDefault(item => item.UserId == useId);

                if (user == null)
                {
                    return RedirectToAction("Index", "Login");
                }

                user.Photo = nameFileForSave;

                connection.SaveChanges();
                
            }
            
            return RedirectToAction("ChangePassword"); 
        }

        
        // edit commission
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult EditCommission(User user, Commission commission)
        {
            if (commission.Percent > 100)
            {
                return Json(new { error = "Commission must by less then 100 %"});
            }

            if (GetUserId() == 0)
            {
                return RedirectToAction("Index", "Login");
            }

            var userId = GetUserId();

            var entity = connection.Commissions.FirstOrDefault(db => db.UserId == user.UserId && db.Delete == 1);

            if (entity == null)
            {
                var com = new Commission()
                {
                    UserId = user.UserId,
                    Date = Constraint.GetDate(),
                    Percent = commission.Percent,
                    Time = Constraint.GetTime(),
                    UserUpdate = userId,
                    Delete = 1
                };

                connection.Commissions.Add(com);
                connection.SaveChanges();
                return Json("Add Commission successfully.");
            }

            entity.Percent = commission.Percent;
            entity.UserId = user.UserId;
            entity.Date = Constraint.GetDate();
            entity.Percent = commission.Percent;
            entity.Time = Constraint.GetTime();
            entity.UserUpdate = userId;
            
            connection.SaveChanges();
            
            return Json("Updated Commission successfully.");
        }
    }
}