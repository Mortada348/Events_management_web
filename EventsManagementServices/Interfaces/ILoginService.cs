using Azure;
using EventsManagementCore.Models.Extenders;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EventsManagementServices.Interfaces
{
   public interface ILoginService
    {
        Task<ResponseExtender> Login(AuthExtender authExtender);

        Task<ResponseExtender> AdminLogin(AuthExtender authExtender);


    }
}
