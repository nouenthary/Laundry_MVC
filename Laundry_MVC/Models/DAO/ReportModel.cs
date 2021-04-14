namespace Laundry_MVC.Models.DAO
{
    public class ReportModel
    {
        public int InvoiceId { get; set; }
        public string StartDate { get; set; }
        public string EndDate { get; set; }
        public string Status { get; set; }
        public double Total { get; set; }
        public string Name { get; set; }
        public string Phone { get; set; }
        public string Type { get; set; }
        public string Seller { get; set; }
    }
}