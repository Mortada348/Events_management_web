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

    public class EventsController : ControllerBase
    {
        IEventService eventService;

        private readonly Microsoft.AspNetCore.Hosting.IHostingEnvironment _hostingEnvironment;

        public EventsController(IEventService _eventService, Microsoft.AspNetCore.Hosting.IHostingEnvironment hostingEnvironment)
        {
            eventService = _eventService;
            _hostingEnvironment = hostingEnvironment;
        }

        [HttpGet("GetAllEvents")]
        
        public async Task<IActionResult> GetAllEvents(long? UserId)
        {
            var AllEvents = await eventService.GetAllEvents(UserId);
            return Ok(AllEvents);
        }

        [HttpGet("GetEventById")]
        public async Task<IActionResult> GetEventById(int EventId)
        {
            var Event = await eventService.GetEventById(EventId);
            return Ok(Event);
        }

        [HttpPost("CreateEvent")]
        public async Task<IActionResult> CreateEvent(_Events Event)
        {
            var EventCreated = await eventService.CreateEvent(Event);
            if (!EventCreated)
            {
                return BadRequest("Error while Creating");
            }
            return Ok(EventCreated);
        }

        [HttpPost("UpdateEvent")]

        public async Task<IActionResult> UpdateEvent(_Events Event)
        {
            var EventUpdated= await eventService.UpdateEvent(Event);
            if(!EventUpdated)
            {
                return BadRequest("Error while Updating");
            }
            return Ok(EventUpdated);
        }

        [HttpPost("DeleteEvent")]
        public async Task<IActionResult> DeleteEvent(int EventId)
        {
            var EventDeleted = await eventService.DeleteEvent(EventId);
            if (!EventDeleted)
            {
                return BadRequest("Error While Deleting");
            }
            return Ok(EventDeleted);
        }


        [HttpPost]
        [Route("UploadUserImage")]
        public async Task<IActionResult> UploadFile(IFormFile File)
        {
            var uploads = Path.Combine(_hostingEnvironment.ContentRootPath, "wwwroot", "Media");

            if (!Directory.Exists(uploads))
            {
                Directory.CreateDirectory(uploads);
            }
            string FilePath = "";
            string NewFileName = "";
            if (File.Length > 0)
            {
                string Ext = Path.GetExtension(File.FileName.Trim());
                NewFileName = Guid.NewGuid() + Ext;
                FilePath = Path.Combine(uploads, NewFileName);
                using (var fileStream = new FileStream(FilePath, FileMode.Create))
                {
                    await File.CopyToAsync(fileStream);
                }
            }

            return Ok(NewFileName);
        }

        [HttpGet("GetLatestEvents")]
        public async Task<IActionResult> GetLatestEvents()
        {
            var events = await eventService.GetLatestEvents();
            return Ok(events);
        }

        [HttpPost("EnrollUserInEvent")]
        public async Task<IActionResult> EnrollUserInEvent(_UserEvent userEvent)
        {
            var response = await eventService.EnrollUserInEvent(userEvent);
            return Ok(response);
        }



    }


}
