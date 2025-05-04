using AutoMapper;
using EventsManagementCore.Interfaces;
using EventsManagementServices.DTO;
using EventsManagementServices.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EventsManagementServices.Services
{
    public class RoleService : IRoleService
    {
        IMapper mapper;
        IRoleRepository roleRepository;

        public RoleService(IMapper _mapper , IRoleRepository roleRepository)
        {
            mapper = _mapper;
            this.roleRepository = roleRepository;
        }

        public async Task<List<_AdminRoles>> GetAllRoles()
        {
            var roles = await roleRepository.GetAllRoles();
            return mapper.Map<List<_AdminRoles>>(roles);
        }
    }
}
