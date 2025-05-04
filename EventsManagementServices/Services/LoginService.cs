using EventsManagementCore.Interfaces;
using EventsManagementCore.Models.Extenders;
using EventsManagementServices.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EventsManagementServices.Services
{
    public class LoginService : ILoginService
    {
        ILoginRepository loginRepository;

        public LoginService(ILoginRepository _loginRepository)
        {
            loginRepository = _loginRepository;
        }
        public async Task<ResponseExtender> Login(AuthExtender authExtender)
        {
            var result = await loginRepository.Login(authExtender);
            return result;
        }

        public async Task<ResponseExtender> AdminLogin(AuthExtender authExtender)
        {
            var result = await loginRepository.AdminLogin(authExtender);
            return result;
        }
    }
}
