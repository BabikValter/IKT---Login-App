using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DefaultNamespace
{
    [Table("Users")]
    public class User : EntityBase
    {
        [Required] 
        public string FirstName { get; set; }
        [Required] 
        public string LastName { get; set; }
        [Required] 
        public int Age { get; set; }
        public DateTime CurrentPreservation { get; set; }

        public User(string firstName, string lastName, int age, DateTime currentPreservation)
        {
            FirstName = firstName;
            LastName = lastName;
            Age = age;
            CurrentPreservation = currentPreservation;
        }
    }
}