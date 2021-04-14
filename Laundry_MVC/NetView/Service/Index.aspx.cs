using System;
using System.Web.UI.WebControls;
using Laundry_MVC.Models;

namespace Laundry_MVC.NetView.Service
{
    public partial class Index : System.Web.UI.Page
    {
        private static readonly RawSql RawSql = new RawSql();       
        private int _size = 20;
        private static string _sqlQuery = "";
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                PageSize.SelectedIndex = 1;
            }
            
            GetDataBindingData();
        }
        protected void DGView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            DGView.PageIndex = e.NewPageIndex;
            _size = int.Parse(PageSize.SelectedItem.Value);
            DGView.PageSize = _size;
            DGView.DataBind();
        }
        
        private void GetDataBindingData()
        {
            var categoryId = CategoryId.Text;
            
            _sqlQuery = $"SELECT * from [Laundary] WHERE CategoryId = '" + categoryId + "'";
             
            RawSql.SetDataToGridView(_sqlQuery, DGView);
            _size = int.Parse(PageSize.SelectedItem.Value);
            DGView.PageSize = _size;
            DGView.DataBind(); 
        }

        protected void PageSize_OnSelectedIndexChanged(object sender, EventArgs e)
        {
            if (PageSize.SelectedItem.Value == "0") return;
            _size = int.Parse(PageSize.SelectedItem.Value);
            DGView.PageSize = _size;
            GetDataBindingData();
        }

        protected void CategoryId_OnSelectedIndexChanged(object sender, EventArgs e)
        {
            GetDataBindingData();
        }
    }
}