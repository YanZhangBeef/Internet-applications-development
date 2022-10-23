namespace As.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Appointment")]
    public partial class Appointment
    {
        public int Id { get; set; }

        public int Date { get; set; }

        [Required]
        public string PatientName { get; set; }

        public int Time { get; set; }

        public int PatientId { get; set; }

        public virtual Patient Patient { get; set; }
    }
}
