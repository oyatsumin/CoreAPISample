using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace CoreAPISample.Models
{
    public partial class ReceiveNoteLine
    {
        [Key]
        [Column("ID")]
        public long Id { get; set; }
        [Column("DocID")]
        public long DocId { get; set; }
        public int? Seq { get; set; }
        [StringLength(50)]
        public string ItemCode { get; set; }
        public int? Qty { get; set; }
    }
}
