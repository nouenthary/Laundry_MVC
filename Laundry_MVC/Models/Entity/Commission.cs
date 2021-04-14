namespace Laundry_MVC.Models.Entity
{
    public class Commission
    {
        public int CommissionId { get; set; }
        public int UserId { get; set; }
        public float Percent { get; set; }
        public string Date { get; set; }
        public string Time { get; set; }
        public int UserUpdate { get; set; }
    }
}