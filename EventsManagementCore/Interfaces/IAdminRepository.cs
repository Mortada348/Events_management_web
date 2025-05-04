using EventsManagementCore.Models;
using EventsManagementCore.Models.Extenders;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EventsManagementCore.Interfaces
{
    public interface IAdminRepository
    {
        Task<List<AdminsExtender>> GetAllAdmins();
        Task<bool> CreateAdmin(Admin admin);
        Task<Admin> GetAdminById(int AdminId);
        Task<bool> UpdateAdmin(Admin admin);
        Task<bool> DeleteAdmin(int AdminId);
    }
}
