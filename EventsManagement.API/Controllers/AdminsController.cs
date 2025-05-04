using EventsManagementCore.Models;
using EventsManagementServices.DTO;
using EventsManagementServices.Interfaces;
using EventsManagementServices.Services;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace EventsManagement.API.Controllers
{
    [Route("[controller]")]
    [ApiController]
    
      public class AdminsController : ControllerBase
        {
            IAdminService adminService;

            public AdminsController(IAdminService _adminService)
            {

                adminService = _adminService;

            }

            [HttpGet("GetAdmins")]
            [AllowAnonymous]
            public async Task<IActionResult> GetAllAdmins()
            {
                var admins = await adminService.GetAllAdmins();
                if (!admins.Any())
                {
                    return BadRequest("No records found");
                }

                return Ok(admins);
            }

            [HttpPost("CreateAdmins")]
            [AllowAnonymous]
            public async Task<IActionResult> CreateAdmins(_Admins admin)
            {
                var creationResult = await adminService.CreateAdmins(admin);
                if (creationResult)
                {
                    return Ok(creationResult);
                }

                return BadRequest("Error while creating");
            }

            [HttpGet("GetAdminById")]

            public async Task<IActionResult> GetAdminById(int AdminId)
            {
                var User = await adminService.GetAdminById(AdminId);
                if (User == null)
                {
                    return BadRequest("No Admin");
                }
                return Ok(User);
            }

            [HttpPost("UpdateAdmin")]

            public async Task<IActionResult> UpdateAdmin(_Admins admin)
            {
                var AdminUpdated = await adminService.UpdateAdmin(admin);
                if (AdminUpdated)
                {
                    return Ok("Admin Updated successfully");
                }
                return BadRequest("Error while updating");

            }

            [HttpPost("DeleteAdmin")]
            public async Task<IActionResult> DeleteAdmin(int AdminId)
            {
                var AdminDeleted = await adminService.DeleteAdmin(AdminId);
                if (AdminDeleted)
                {
                    return Ok("Admin Deleted Successfully");
                }
                return BadRequest("Error while Deleting");

            }







        }
    }
