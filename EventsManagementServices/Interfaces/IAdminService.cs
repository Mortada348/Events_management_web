using EventsManagementCore.Models.Extenders;
using EventsManagementServices.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EventsManagementServices.Interfaces
{
    public interface IAdminService
    {
        Task<List<AdminsExtender>> GetAllAdmins();
        Task<bool> CreateAdmins(_Admins admin);

        Task<_Admins> GetAdminById(int AdminId);
        Task<bool> UpdateAdmin(_Admins admin);

        Task<bool> DeleteAdmin(int AdminId);

    }
}
