using System.Collections.Generic;
using RestAPI.Entity;
using RestAPI.Service;

namespace RestAPI.Controller.Impl
{
    public class AdminsControllerImpl : AdminControllerBase
    {
        private readonly IAdminService adminService;
        public AdminsControllerImpl(IadminService adminService)
        {
            this.adminService = adminService;
        }

        public override List<Admin> GetAll()
        {
            return adminService.GetAll();
        }

        public override Admin GetById(int id)
        {
            return adminService.GetById(id);
        }

        public override Admin Save(Admin inputData)
        {
            return adminService.Save(inputData);
        }

        public override Admin Update(int id, Admin updateData)
        {
            return adminService.Update(id, updateData);
        }

        public override void Delete(int id)
        {
            adminService.Delete(id);
        }

        public override List<User> GetFlightsByAdmin(int adminId)
        {
            return adminService.GetFlightsByAdmin(adminId);
        }
    }
}
