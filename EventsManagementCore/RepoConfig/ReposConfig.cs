using EventsManagementCore.Interfaces;
using EventsManagementCore.Repositories;
using Microsoft.Extensions.DependencyInjection;
using System;
using System.Collections.Generic;
using System.Diagnostics.Contracts;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EventsManagementCore.RepoConfig
{
    public static class ReposConfig
    {
       public static void AddCustomRepositories(this IServiceCollection repos)
        {
            repos.AddTransient<IUserRepository, UserRepository>();
            repos.AddTransient<IEventRepository, EventRepository>();
            repos.AddTransient<ILoginRepository, LoginRepository>();
            repos.AddTransient<ILookUpRepository, LookUpRepository>();
            repos.AddTransient<IAdminRepository, AdminRepository>();
            repos.AddTransient<IRoleRepository, RoleRepository>();
            
        }
    }
}
