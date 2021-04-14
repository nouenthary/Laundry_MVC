using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace Laundry_MVC.Models
{
    public class RawSql : IRawSqlInterface
    {
        private static readonly string Connection = ConfigurationManager.ConnectionStrings["DB_Connection_MVC"].ToString();
        
        public DataTable GetDataSource(string sqlQuery)
        {
            var sqlConnection = new SqlConnection(Connection);
            var cmd = new SqlCommand(sqlQuery, sqlConnection);
            var sd = new SqlDataAdapter(cmd);
            var dt = new DataTable();
            sqlConnection.Open();
            sd.Fill(dt);
            sqlConnection.Close();
            return dt;
        }

        public bool ExecuteSqlQuery(string sqlQuery)
        {
            var sqlConnection = new SqlConnection(Connection);
            var cmd = new SqlCommand(sqlQuery, sqlConnection);
            sqlConnection.Open();
            var i = cmd.ExecuteNonQuery();
            sqlConnection.Close();
            return i >= 1;
        }

        public GridView SetDataToGridView(string sqlQuery, GridView gridView)
        {
            var sqlConnection = new SqlConnection(Connection);
            var cmd = new SqlCommand(sqlQuery, sqlConnection);
            var sd = new SqlDataAdapter(cmd);
            var dt = new DataTable();
            sqlConnection.Open();
            sd.Fill(dt);
            gridView.DataSource = dt;
            gridView.DataBind();
            sqlConnection.Close();
            return gridView;
        }
    }
}