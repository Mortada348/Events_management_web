using EventsManagementCore.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EventsManagementCore.Interfaces
{
    public interface IRoleRepository
    {
        Task<List<Role>> GetAllRoles();
    }
}
