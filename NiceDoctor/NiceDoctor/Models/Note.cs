namespace NiceDoctor.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Note
    {
        public int Id { get; set; }

        [Required]
        public string Allergens { get; set; }

        public int PatientId { get; set; }

        public virtual Patient Patient { get; set; }
    }
}
