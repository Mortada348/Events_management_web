using EventsManagementCore.Models;
using EventsManagementCore.Repositories;
using EventsManagementServices.Interfaces;
using EventsManagementServices.Services;
using Microsoft.Extensions.DependencyInjection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EventsManagementServices.ServiceConfig
{
    public static class ServiceConfigs
    {
        public static void CustomServices(this IServiceCollection repos)
        {
            repos.AddTransient<IUserService, UserService>();
            repos.AddTransient<IEventService, EventService>();
            repos.AddTransient<ILoginService,LoginService>();
            repos.AddTransient<ILookUpService,LookUpService>();
            repos.AddTransient<IAdminService, AdminService>();
            repos.AddTransient<IRoleService, RoleService>();
          
        }
    }
}
