using Microsoft.EntityFrameworkCore;
using RestAPI.Entity;

namespace RestAPI.Repository
{
    public class LoginAppContext : DbContext
    {
        public DbSet<Admin> Admin { get; set; }
        public DbSet<User> User { get; set; }
        public DbSet<Preservation> Preservation { get; set; }

        public LoginAppContext(DbContextOptions options) : base(options)
        {
            Database.EnsureCreated();
        }
    }
}