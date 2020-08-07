using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace CoreAPISample.Models
{
    public partial class ReceiveNoteDoc
    {
        [Key]
        [Column("ID")]
        public long Id { get; set; }
        [StringLength(50)]
        public string DocNo { get; set; }
        [Column(TypeName = "date")]
        public DateTime? DocDate { get; set; }
        [StringLength(50)]
        public string ReceiveFrom { get; set; }
        [Column(TypeName = "datetime")]
        public DateTime? Time { get; set; }
        public bool? StatusProcess { get; set; }
    }
}
