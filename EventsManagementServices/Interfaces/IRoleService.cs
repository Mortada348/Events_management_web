using EventsManagementServices.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EventsManagementServices.Interfaces
{
    public interface IRoleService
    {
        Task<List<_AdminRoles>> GetAllRoles();
    }
}
