using AutoMapper;
using EventsManagementCore.Interfaces;
using EventsManagementCore.Models;
using EventsManagementCore.Models.Extenders;
using EventsManagementCore.Repositories;
using EventsManagementServices.DTO;
using EventsManagementServices.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EventsManagementServices.Services
{
    public class AdminService : IAdminService
    {
        IMapper mapper;
        IAdminRepository adminRepository;

        public AdminService(IMapper _mapper ,IAdminRepository adminRepository )
        {
            mapper = _mapper;
            this.adminRepository = adminRepository;
        }
        public async Task<List<AdminsExtender>> GetAllAdmins()
        {
            var admins = await adminRepository.GetAllAdmins();
            return admins;
        }
        public async Task<bool> CreateAdmins(_Admins admin)
        {
            var mappedAdmin = mapper.Map<Admin>(admin);
            var created = await adminRepository.CreateAdmin(mappedAdmin);
            return created;
        }

        public async Task<_Admins> GetAdminById(int AdminId)
        {
            var Admin = await adminRepository.GetAdminById(AdminId);
            if (Admin == null)
            {
                return null;
            }
            var admin = mapper.Map<_Admins>(Admin);
            return admin;
        }

        public async Task<bool> UpdateAdmin(_Admins admin)
        {
            var mappedAdmin = mapper.Map<Admin>(admin);
            await adminRepository.UpdateAdmin(mappedAdmin);
            return true;
        }

        public async Task<bool> DeleteAdmin(int AdminId)
        {
            await adminRepository.DeleteAdmin(AdminId);
            return true;
        }
 
    }
}
