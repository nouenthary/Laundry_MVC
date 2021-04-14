using System;
using System.Data;
using System.Linq;
using System.Web.Mvc;
using Laundry_MVC.Models;
using Commission = Laundry_MVC.Models.Entity.Commission;

namespace Laundry_MVC.Controllers
{
    public class CommissionController : Controller
    {
        private readonly RawSql _rawSql = new RawSql();
        private static string _sqlQuery = "";
        // GET
        public ActionResult Index()
        {
            _sqlQuery = String.Format("EXEC GetAllCommission N'{0}'","");
            
            var dt = _rawSql.GetDataSource(_sqlQuery);

            var commission = (from DataRow dr in dt.Rows
            select new Commission
            {
                CommissionId = Convert.ToInt32(dr["CommissionId"]),
                UserId = Convert.ToInt32(dr["UserId"]),
                Percent = float.Parse(dr["Percent"].ToString()),
                UserUpdate = Convert.ToInt32(dr["UserUpdate"]),
                Date = Convert.ToString(dr["Date"]),
                Time = Convert.ToString(dr["Time"])
            }).ToList();
            
            return View(commission);
        }
    }
}