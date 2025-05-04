using EventsManagementServices.DTO;
using EventsManagementServices.Interfaces;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace EventsManagement.API.Controllers
{
    [Route("[controller]")]
    [ApiController]
    //[Authorize]
    public class LookUpsController : ControllerBase
    {
        ILookUpService lookUpService;
        public LookUpsController(ILookUpService _lookUpService)
        {
            lookUpService = _lookUpService;
        }

        [HttpGet("GetAllLookUps")]
        [AllowAnonymous]
        public async Task<IActionResult> GetAllLookUps()
        {
            var AllLookUps = await lookUpService.GetAllLookUps();
            return Ok(AllLookUps);
        }

        [HttpGet("GetLookUpById")]
        public async Task<IActionResult> GetLookUpById(int LookUpId)
        {
            var LookUp = await lookUpService.GetLookUpById(LookUpId);
            if (LookUp == null)
            {
                return BadRequest("No LookUp has this Id");
            }
            return Ok(LookUp);
        }

        [HttpPost("CreateLookUp")]
        public async Task<IActionResult> CreateLookUp(_Lookups lookUp)
        {
            var LookUp = await lookUpService.CreateLookUp(lookUp);
            if (!LookUp)
            {
                return BadRequest("Error while Creating");
            }
            return Ok(LookUp);
        }

        [HttpPost("UpdateLookUp")]
        public async Task<IActionResult> UpdateLookUp(_Lookups lookUp)
        {
            var LookUpUpdated = await lookUpService.UpdateLookUp(lookUp);
            if (!LookUpUpdated)
            {
                return BadRequest("Error while Updating");
            }
            return Ok(LookUpUpdated);
        }

        [HttpPost("DeleteLookUp")]

        public async Task<IActionResult> DeleteLookUp(int LookUpId)
        {
            var LookUpDeleted = await lookUpService.DeleteLookUp(LookUpId);
            if (!LookUpDeleted)
            {
                return BadRequest("Error while Deleting");
            }
            return Ok(LookUpDeleted);
        }

        [HttpGet("GetParentLookups")]
        public async Task<IActionResult> GetParentLookUps()
        {
            var LookUps = await lookUpService.GetParentLookUps();
            return Ok(LookUps);
        }

        [HttpGet("GetLookUpByParentId")]
        public async Task<IActionResult> GetLookUpByParentId(int ParentId)
        {
            var LookUps = await lookUpService.GetLookUpByParentId(ParentId);
            return Ok(LookUps);
        }
    }
}
