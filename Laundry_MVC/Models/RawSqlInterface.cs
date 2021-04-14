using System.Data;
using System.Web.UI.WebControls;

namespace Laundry_MVC.Models
{
    public interface IRawSqlInterface
    {
        DataTable GetDataSource(string sqlQuery);

        bool ExecuteSqlQuery(string sqlQuery);

        GridView SetDataToGridView(string sqlQuery, GridView gridView);

    }
}