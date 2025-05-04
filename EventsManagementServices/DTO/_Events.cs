using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EventsManagementServices.DTO
{
    public partial class _Events
    {
        public int Id { get; set; }

        public string? EventName { get; set; }

        public string? EventDescription { get; set; }

        public int? CategoryId { get; set; }

        public string? Destination { get; set; }

        public DateTime? DateFrom { get; set; }

        public DateTime? DateTo { get; set; }

        public int? Cost { get; set; }

        public int? GuideId { get; set; }

        public int? StatusId { get; set; }
        public string? Image { get; set; }
 
        public bool? IsDeleted { get; set; }


    }
}
namespace EventsManagementServices.DTO.Mapper
{
    using AutoMapper;
    using EventsManagementCore.Models;


    public class AutoMapperEvents : Profile
    {
        public AutoMapperEvents()
        {
            CreateMap<_Events, Event>().ReverseMap();
        }
    }
}