using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace RestAPI.Entity
{
    [Table("Preservations")]
    public class Preservation
    {
        [Required]
        public DateTime Date { get; set; }
        
        public Preservation(DateTime date)
        {
            Date = date;
        }
    }
}