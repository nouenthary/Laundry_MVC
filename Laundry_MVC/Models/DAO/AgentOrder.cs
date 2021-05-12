namespace Laundry_MVC.Models.DAO
{
    public class AgentOrder
    {
        public int CategoryId { get; set; }
        public int ProductId { get; set; }
        public int ServiceId { get; set; }
        public int Qty { get; set; }
        public double Weight { get; set; }
    }
}