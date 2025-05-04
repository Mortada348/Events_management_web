using EventsManagementCore.Models;
using EventsManagementCore.Models.Extenders;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EventsManagementCore.Interfaces
{
    public interface ILoginRepository
    {
        Task<ResponseExtender> Login(AuthExtender authExtender);
        Task<ResponseExtender> AdminLogin(AuthExtender authExtender);
    }
}
