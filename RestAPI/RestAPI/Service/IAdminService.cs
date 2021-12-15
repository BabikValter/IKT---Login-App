using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace RestAPI.Service
{
   public interface IAdminService : IService<Admin>
    {
        List<IAdminService> GetUserbyAdmin(int adminId);
    }
}
