using System;
using System.ComponentModel.DataAnnotations.Schema;

namespace RestAPI.Entity
{
    [Table("Admin")]
    public class Admin : User
    {
        public Admin(string firstName, string lastName, int age, DateTime currentPreservation) : base(firstName, lastName, age, currentPreservation) { }
    }
}