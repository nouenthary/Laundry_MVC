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
    
    public partial class Commission
    {
        public int CommissionId { get; set; }
        public Nullable<double> Percent { get; set; }
        public string Date { get; set; }
        public string Time { get; set; }
        public Nullable<int> UserId { get; set; }
        public Nullable<byte> Delete { get; set; }
        public Nullable<int> UserUpdate { get; set; }
    
        public virtual User User { get; set; }
    }
}
