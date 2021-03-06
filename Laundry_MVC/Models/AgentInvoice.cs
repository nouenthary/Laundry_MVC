//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Laundry_MVC.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class AgentInvoice
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public AgentInvoice()
        {
            this.AgentInvoviceDetails = new HashSet<AgentInvoviceDetail>();
        }
    
        public int Id { get; set; }
        public string Date { get; set; }
        public string Time { get; set; }
        public Nullable<int> UserId { get; set; }
        public Nullable<double> TotalDollar { get; set; }
        public Nullable<double> TotalRiel { get; set; }
        public Nullable<double> ReceviedReil { get; set; }
        public Nullable<double> ReceivedDollar { get; set; }
        public Nullable<double> Amount { get; set; }
        public string Status { get; set; }
        public string PayBy { get; set; }
        public string Print { get; set; }
        public string TranId { get; set; }
        public string QrCode { get; set; }
        public string PayStatus { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<AgentInvoviceDetail> AgentInvoviceDetails { get; set; }
        public virtual User User { get; set; }
    }
}
