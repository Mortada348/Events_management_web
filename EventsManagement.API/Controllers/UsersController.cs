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
   
    public class UsersController : ControllerBase
    {
        IUserService userService;

        public UsersController(IUserService _userService)
        {

            userService = _userService;

        }

        [HttpGet("GetAllUsers")]
        
        public async Task<IActionResult> GetUsers(string TypeId)
        {
            var AllUsers = await userService.GetAllUsers(TypeId);
            if (!AllUsers.Any())
            {
                return BadRequest("No records found");
            }

            return Ok(AllUsers);
        }

        [HttpPost("CreateUsers")]

        public async Task<IActionResult> CreateUsers(_Users user)
        {
            var creationResult = await userService.CreateUsers(user);
            if (creationResult)
            {
                return Ok(creationResult);
            }

            return BadRequest("Error while creating");
        }

        [HttpGet("GetUserById")]

        public async Task<IActionResult> GetUserById(int UserId)
        {
            var User = await userService.GetUserById(UserId);
            if (User == null)
            {
                return BadRequest("No User");
            }
            return Ok(User);
        }

        [HttpPost("UpdateUser")]

        public async Task<IActionResult> UpdateUser(_Users user)
        {
            var Userupdated = await userService.UpdateUser(user);
            if (Userupdated)
            {
                return Ok("User Updated successfully");
            }
            return BadRequest("Error while updating");

        }

        [HttpPost("DeleteUser")]
        public async Task<IActionResult> DeleteUser(int UserId)
        {
            var UserDeleted = await userService.DeleteUser(UserId);
            if(UserDeleted)
            {
                return Ok("User Deleted Successfully");
            }
            return BadRequest("Error while Deleting");

        }

    }
}
