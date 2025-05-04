using EventsManagementCore.Models;
using EventsManagementCore.Models.Extenders;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EventsManagementCore.Interfaces
{
    public interface IEventRepository
    {
        Task<List<EventsExtender>> GetAllEvents(long? UserId);
        Task<Event> GetEventById(int EventId);
        Task<bool> CreateEvent(Event Event);
        Task<bool> UpdateEvent(Event Event);
        Task<bool> DeleteEvent(int EventId);
        Task<List<EventsExtender>> GetLatestEvents();
        Task<bool> EnrollUserInEvent(UserEvent enrollinEvent);
    }
}
