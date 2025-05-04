using AutoMapper;
using EventsManagementServices.DTO.Mapper;
using Microsoft.Extensions.DependencyInjection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EventsManagementServices.MapperConfig
{
    public static class MapperConfigs
    {
        public static void CustomMapperConfigs(this IServiceCollection services)
        {
            var config = new MapperConfiguration(x =>
            {

                x.AddProfile(new AutoMapperUsers());
                x.AddProfile(new AutoMapperLookups());
                x.AddProfile(new AutoMapperEvents());
                x.AddProfile(new AutoMapperAdmins());
                x.AddProfile(new AutoMapperRoles());
                x.AddProfile(new AutoMapperUserEvents());
               

            });
            IMapper mapper = config.CreateMapper();
            services.AddSingleton(mapper);
        }

    }
}
