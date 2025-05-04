using EventsManagementCore.Models;
using EventsManagementCore.Models.Extenders;
using EventsManagementServices.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EventsManagementServices.Interfaces
{
    public interface IEventService
    {
        Task<List<EventsExtender>> GetAllEvents(long? UserId);
        Task<_Events> GetEventById(int EventId);
        Task<bool> CreateEvent(_Events Event);
        Task<bool> UpdateEvent(_Events Event);
        Task<bool> DeleteEvent(int EventId);
        Task<List<EventsExtender>> GetLatestEvents();
        Task<bool> EnrollUserInEvent(_UserEvent enrollinEvent);
    }
}
