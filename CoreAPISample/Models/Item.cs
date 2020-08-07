using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace CoreAPISample.Models
{
    public partial class Item
    {
        [Key]
        [Column("ID")]
        public long Id { get; set; }
        [StringLength(50)]
        public string ItemCode { get; set; }
        [StringLength(500)]
        public string ItemName { get; set; }
    }
}
