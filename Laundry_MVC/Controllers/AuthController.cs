using System;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.Mvc;

namespace Laundry_MVC.Controllers
{
    public class AuthController : Controller
    {
        public int GetUserId()
        {
            var cookie = Request.Cookies["id"];
            return int.Parse(cookie.Value);
        }
        
        public bool SetCookie(string id) {       
            HttpCookie userInfo = new HttpCookie("id");
            userInfo.Value = id;
            userInfo.Expires.Add(new TimeSpan(24, 0, 0));
            Response.Cookies.Add(userInfo);
            return true;
        }
        
        public string GetMD5(string str)
        {
            MD5 md5 = new MD5CryptoServiceProvider();
            var fromData = Encoding.UTF8.GetBytes(str);
            var targetData = md5.ComputeHash(fromData);
            string byte2String = null;

            for (var i = 0; i < targetData.Length; i++)
            {
                byte2String += targetData[i].ToString("x2");

            }
            return byte2String;
        }
    }
}