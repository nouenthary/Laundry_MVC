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
    
    public partial class Product
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Product()
        {
            this.AgentInvoviceDetails = new HashSet<AgentInvoviceDetail>();
        }
    
        public int Id_ { get; set; }
        public string Product1 { get; set; }
        public string Status { get; set; }
        public Nullable<int> UserId { get; set; }
        public string Date { get; set; }
        public string Time { get; set; }
        public Nullable<int> CategoryId { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<AgentInvoviceDetail> AgentInvoviceDetails { get; set; }
        public virtual Category1 Category { get; set; }
    }
}