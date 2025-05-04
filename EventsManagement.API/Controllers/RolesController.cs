using EventsManagementServices.Interfaces;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace EventsManagement.API.Controllers
{
    [Route("[controller]")]
    [ApiController]
    public class RolesController : ControllerBase
    {
        IRoleService roleService;
        public RolesController(IRoleService _roleService)
        {
            roleService = _roleService;
        }

        [HttpGet("GetAllRoles")]
        public async Task<IActionResult> GetAllRoles()
        {
            var roles = await roleService.GetAllRoles();
            return Ok(roles);
        }
    }
}
