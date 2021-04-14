using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace Laundry_MVC.Helper
{
    public class RawSql
    {
        private readonly string _connectionString = ConfigurationManager.ConnectionStrings["DB_Connection"].ConnectionString;
    
        // Call Store Procedure SELECT
        public GridView GetDataSource(string sql, GridView gridView)
        {
            try
            {
                var con = new SqlConnection(_connectionString);
                if (con.State != ConnectionState.Open)
                {
                    con.Open();
                }
                var cmd = new SqlCommand();
                cmd.CommandText = sql;
                cmd.Connection = con;
                var da = new SqlDataAdapter(cmd);
                var dt = new DataTable();
                da.Fill(dt);
                gridView.DataSource = dt;
                gridView.DataBind();
                da.Dispose();
                con.Close();
                GC.Collect();
                return gridView;
            }
            catch (Exception ex)
            {
                Console.Write(ex);
            }
            return null;
        }
   
        // Used to Insert Update Delete, EXECUTE QUERY 
        public void ExecuteSqlQuery(string sqlQueryCmd)
        {
            try
            {
                var con = new SqlConnection(_connectionString);
                if (con.State != ConnectionState.Open) { con.Open(); }
                var cmd = new SqlCommand(sqlQueryCmd, con);
                cmd.ExecuteNonQuery();
                con.Close();
            }
            catch (Exception ex)
            {
                Console.Write(ex);
            }
        }
    }
}