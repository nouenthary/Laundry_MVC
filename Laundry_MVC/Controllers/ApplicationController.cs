using System;
using System.Data.Entity;
using System.Web.Mvc;
using Laundry_MVC.Models;

namespace Laundry_MVC.Controllers
{
    public class ApplicationController : Controller
    {
        private readonly DB_Connection _connection = new DB_Connection();
        // GET
        public ActionResult Index()
        {
            return View();
        }

        // back up
        public ActionResult Backup()
        {
            var date = DateTime.Today.ToString("MM_dd_yyyy");
            var time = DateTime.Today.ToString("hh_mm");
            var path = "~/App_Data/";
            var fileName = "Laundry_DB.bak";

            var dbPath = Server.MapPath(path + date + "_" + time + "_" +  fileName);
            
            var cmd = String.Format("BACKUP DATABASE {0} TO DISK='{1}' WITH FORMAT, MEDIANAME='DbBackups', MEDIADESCRIPTION='Media set for {0} database';"
                ,"Laundry_DB", dbPath);
            _connection.Database.ExecuteSqlCommand(TransactionalBehavior.DoNotEnsureTransaction, cmd);

            TempData["Message"] = "Database backup successfully.";
            
            return RedirectToAction("Index");
        }
    }
}