using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EventsManagementServices.DTO
{
    public partial class _Admins
    {
        public int Id { get; set; }

        public string? AdminName { get; set; }

        public DateTime? DateOfBirth { get; set; }

        public int? Gender { get; set; }

        public string? Email { get; set; }

        public string? AdminPassword { get; set; }

        public int RoleId { get; set; }

        public bool? IsDeleted { get; set; } = false;

    }
}
namespace EventsManagementServices.DTO.Mapper
{
    using AutoMapper;
    using EventsManagementCore.Models;


    public class AutoMapperAdmins : Profile
    {
        public AutoMapperAdmins()
        {
            CreateMap<_Admins, Admin>().ReverseMap();
        }
    }
}
