namespace As.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Prescription")]
    public partial class Prescription
    {
        public int Id { get; set; }

        [Column(TypeName = "date")]
        [DataType(DataType.Date)]
        public DateTime? TreatementDate { get; set; }

        [Required]
        public string MedicineName { get; set; }

        public int Days { get; set; }

        [Required]
        public string Dosage { get; set; }

        public int PatientId { get; set; }

        public virtual Patient Patient { get; set; }
    }
}
