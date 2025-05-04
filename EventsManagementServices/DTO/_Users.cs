using EventsManagementCore.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EventsManagementServices.DTO
{
    public partial class _Users
    {
        public int Id { get; set; }

        public string? FullName { get; set; }

        public string? Email { get; set; }

        public string? UserPassword { get; set; }

        public DateTime? DateOfBirth { get; set; }

        public int? Gender { get; set; }

        public DateTime? JoiningDate { get; set; }

        public int? MobileNumber { get; set; }

        public string? Photos { get; set; }

        public string? Nationality { get; set; }

        public int? UserType { get; set; }

        public bool? IsDeleted { get; set; }
 
    }

}
namespace EventsManagementServices.DTO.Mapper
{
    using AutoMapper;
    using EventsManagementCore.Models;


    public class AutoMapperUsers : Profile
    {
        public AutoMapperUsers()
        {
            CreateMap<_Users, User>().ReverseMap();
        }
    }
}
