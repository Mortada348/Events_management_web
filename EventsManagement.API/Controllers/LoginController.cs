using EventsManagementCore.Models.Extenders;
using EventsManagementServices.Interfaces;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Infrastructure;

namespace EventsManagement.API.Controllers
{
    [Route("[controller]")]
    [ApiController]
    public class LoginController : ControllerBase
    {
        ILoginService loginService;

        public LoginController(ILoginService _loginService)
        {
            loginService = _loginService;
        }

        [HttpPost("Login")]
        [AllowAnonymous]
        public async Task<IActionResult> Login(AuthExtender authExtender)
        {
            var result = await loginService.Login(authExtender);
            return Ok(result);
        }

        [HttpPost("AdminLogin")]
        [AllowAnonymous]
        public async Task<IActionResult> AdminLogin(AuthExtender authExtender)
        {
            var result = await loginService.AdminLogin(authExtender);
            return Ok(result);
        }


    }
}
