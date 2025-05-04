using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EventsManagementServices.DTO
{
    public class _AdminRoles
    {
        public int Id { get; set; }
        public string RoleName { get; set; }
        public bool IsDeleted { get; set; } = false;
    }
}
namespace EventsManagementServices.DTO.Mapper
{
    using AutoMapper;
    using EventsManagementCore.Models;


    public class AutoMapperRoles : Profile
    {
        public AutoMapperRoles()
        {
            CreateMap<_AdminRoles, Role>().ReverseMap();
        }
    }
}
