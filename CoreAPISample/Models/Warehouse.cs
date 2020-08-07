using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace CoreAPISample.Models
{
    public partial class Warehouse
    {
        [Key]
        [Column("ID")]
        public long Id { get; set; }
        [Column("Warehouse")]
        [StringLength(50)]
        public string Warehouse1 { get; set; }
        [StringLength(50)]
        public string ItemCode { get; set; }
        public int? Qty { get; set; }
    }
}
