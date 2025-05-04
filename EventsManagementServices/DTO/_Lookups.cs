using EventsManagementCore.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EventsManagementServices.DTO
{
    public partial class _Lookups
    {
        public int Id { get; set; }

        public string? Code { get; set; }

        public string? LookUpName { get; set; }

        public int? LookUpOrder { get; set; }

        public bool? IsDeleted { get; set; } = false;

        public int? ParentId { get; set; }
  
    }


}
namespace EventsManagementServices.DTO.Mapper
{
    using AutoMapper;
    using EventsManagementCore.Models;


    public class AutoMapperLookups : Profile
    {
        public AutoMapperLookups()
        {
            CreateMap<_Lookups, LookUp>().ReverseMap();
        }
    }
}
