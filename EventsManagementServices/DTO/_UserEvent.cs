using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EventsManagementServices.DTO
{
    public class _UserEvent
    {
        public int Id { get; set; }

        public int? UserId { get; set; }

        public int? EventId { get; set; }

        public bool? IsDeleted { get; set; }
 
    }
}
namespace EventsManagementServices.DTO.Mapper
{
    using AutoMapper;
    using EventsManagementCore.Models;


    public class AutoMapperUserEvents : Profile
    {
        public AutoMapperUserEvents()
        {
            CreateMap<_UserEvent, UserEvent>().ReverseMap();
        }
    }
}
