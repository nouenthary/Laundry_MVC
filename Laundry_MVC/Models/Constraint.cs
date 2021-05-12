using System;
using System.Collections.Generic;
using System.Web.Mvc;

namespace Laundry_MVC.Models
{
    public static class Constraint
    {
        public static readonly int PageSize = 20;
        public static readonly List<SelectListItem> PerPage = new List<SelectListItem>()
        {
            new SelectListItem() { Value="10", Text= "10" },
            new SelectListItem() { Value="20", Text= "20" },
            new SelectListItem() { Value="50", Text= "50" },
            new SelectListItem() { Value="100", Text= "100" },
            new SelectListItem() { Value="5000", Text= "ALL" },
        };
        
        public static string GetTime() {
            return DateTime.Now.ToString("hh:mm:ss");
        }

        public static string GetDate()
        {
            return DateTime.Now.ToString("yyyy-MM-dd");
        }

        public static readonly string[] CustomerType = { "Customer", "Agency", "Contract"};
        
    }
}