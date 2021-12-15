using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DefaultNamespace
{
    [Table("Preservations")]
    public class Preservations
    {
        [Required]
        public DateTime Date { get; set; }
        
        public Preservations(DateTime date)
        {
            Date = date;
        }
    }
}