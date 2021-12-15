using System.Collections.Generic;
using Microsoft.AspNetCore.Mvc;
using RestAPI.Entity;

namespace RestAPI.Controller
{
    [Route("admin")]
    public abstract class AdminControllerBase : AbstractControllerBase<Admin>
    {
        [HttpGet("{adminId}/user")]
        public abstract List<Admin> GetUsersByAdmin(int airlineId);
    }
}
