using System;
using System.Linq;
using System.Web;
using Laundry_MVC.Models;

namespace Laundry_MVC.Helper
{
    public class Auth
    {
        private int UserId { get; set; }
        private readonly DB_Connection _connection = new DB_Connection();

        public Auth()
        {
            try
            {
                var username = HttpContext.Current.User.Identity.Name;
                UserId = _connection.Users.First(x => x.Username == username).UserId;
            }
            catch (Exception e)
            {
                Console.WriteLine(e);
                throw;
            }
        }

        public int GetUserId()
        {
            return UserId;
        }
    }
}