using System;
using System.Security.Cryptography;
using System.Text;

namespace Laundry_MVC.Helper
{
    public enum ETransactionStatus
    {
        All = 0,
        Approved = 1,
        Refunded = 2,
        Pending = 3
    }

    public class UtilHelper
    {     
        public static string SHA512_ComputeHash(string text, string secretKey)
        {
            byte[] secretKeyBytes = Encoding.UTF8.GetBytes(secretKey);
            byte[] inputBytes = Encoding.UTF8.GetBytes(text);
            using (var hmac = new HMACSHA512(secretKeyBytes))
            {
                byte[] hashValue = hmac.ComputeHash(inputBytes);
                return Convert.ToBase64String(hashValue);
            }
        }


    }
}
