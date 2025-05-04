using EventsManagementCore.Interfaces;
using EventsManagementCore.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EventsManagementCore.Repositories
{
    public class RoleRepository : IRoleRepository
    {
        private readonly EventsManagementDbContext context;

        public RoleRepository(EventsManagementDbContext _context)
        {
            context = _context;
        }

        public async Task<List<Role>> GetAllRoles()
        {
            var roles =  await context.Roles.ToListAsync();
            return roles;
        }
    }
}
