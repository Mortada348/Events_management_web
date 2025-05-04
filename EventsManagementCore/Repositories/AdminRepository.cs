using EventsManagementCore.Interfaces;
using EventsManagementCore.Models;
using EventsManagementCore.Models.Extenders;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EventsManagementCore.Repositories
{
    public class AdminRepository : IAdminRepository
    {
        private readonly EventsManagementDbContext context;

        public AdminRepository(EventsManagementDbContext _context)
        {
            context = _context;
        }
        public async Task<List<AdminsExtender>> GetAllAdmins()
        {
            var admins = await context.Admins.Where(x => x.IsDeleted != true).
                Select(x => new AdminsExtender
                {
                    Id = x.Id,
                    AdminName=x.AdminName,
                    Email = x.Email,
                    DateofBirth = x.DateOfBirth,
                    Gender = x.GenderNavigation.LookUpName,
                    AdminRole = x.Role.RoleName,
                    RoleId = x.RoleId,
                    GenderId=x.GenderNavigation.Id,
                })
                .ToListAsync();
            return admins;
        }

        public async Task<bool> CreateAdmin(Admin admin)
        {
            admin.AdminPassword = BCrypt.Net.BCrypt.HashPassword(admin.AdminPassword);

            await context.Admins.AddAsync(admin);
            await context.SaveChangesAsync();
            return true;
        }

        public async Task<Admin> GetAdminById(int AdminId)
        {
            var admin = await context.Admins.Where(x => x.Id == AdminId && x.IsDeleted != true).FirstOrDefaultAsync();
            return admin;
        }

        public async Task<bool> UpdateAdmin(Admin admin)
        {
            context.Admins.Update(admin);
            await context.SaveChangesAsync();
            return true;

        }


        public async Task<bool> DeleteAdmin(int AdminId)
        {
            var Admin = await context.Admins.Where(x => x.Id == AdminId).FirstOrDefaultAsync();
            Admin.IsDeleted = true;
            context.Admins.Update(Admin);
            await context.SaveChangesAsync();
            return true;
        }


     



    }
}
