using AutoMapper;
using EventsManagementCore.Interfaces;
using EventsManagementCore.Models;
using EventsManagementCore.Models.Extenders;
using EventsManagementServices.DTO;
using EventsManagementServices.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EventsManagementServices.Services
{
    public class EventService : IEventService
    {
        IMapper mapper;
        IEventRepository EventRepository;

        public EventService(IMapper _mapper , IEventRepository eventRepository)
        {
            mapper = _mapper;
            EventRepository = eventRepository;
        }

        public async Task<List<EventsExtender>> GetAllEvents(long? UserId)
        {
            var AllEvents = await EventRepository.GetAllEvents(UserId);
            return AllEvents;
        }

        public async Task<_Events> GetEventById(int EventId)
        {
            var Event = await EventRepository.GetEventById(EventId);
            return mapper.Map<_Events>(Event);
        }

        public async Task<bool> CreateEvent(_Events _Event)
        {
            var mappedEvent = mapper.Map<Event>(_Event);
            await EventRepository.CreateEvent(mappedEvent);
            return true;
        }

        public async Task<bool> UpdateEvent(_Events Event)
        {
            var MappedEvent = mapper.Map<Event>(Event);
            await EventRepository.UpdateEvent(MappedEvent);
            return true;
        }

        public async Task<bool> DeleteEvent(int EventId)
        {
            await EventRepository.DeleteEvent(EventId);
            return true;
        }

        public async Task<List<EventsExtender>> GetLatestEvents()
        {
            var events =await EventRepository.GetLatestEvents();
            return events;
        }

        public async Task<bool> EnrollUserInEvent(_UserEvent enrollinEvent)
        {

            var MappedEvent = mapper.Map<UserEvent>(enrollinEvent);
            return await EventRepository.EnrollUserInEvent(MappedEvent);

        }
    }
}
