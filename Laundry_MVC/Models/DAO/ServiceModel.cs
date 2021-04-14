namespace Laundry_MVC.Models.DAO
{
    public class ServiceModel
    {
        public int ServiceId { get; set; }
        public string ServiceName { get; set; }
        public double Price { get; set; }
        public string Date { get; set; }
        public string Time { get; set; }
        public string Auditor { get; set; }
        
        public string Status { get; set; }
        public double Discount { get; set; }
        public string Type { get; set; }
    }
}