using EventsManagementCore.Interfaces;
using EventsManagementCore.Models;
using EventsManagementCore.Models.Extenders;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EventsManagementCore.Repositories
{
    public class EventRepository : IEventRepository
    {
        private readonly EventsManagementDbContext context;
        public EventRepository(EventsManagementDbContext _context)
        {
            context = _context;
        }

        public async Task<List<EventsExtender>> GetAllEvents(long? UserId)
        {
            try
            {
                var Events = await context.Events.Where(x => x.IsDeleted != true)
               .Select(x => new EventsExtender
               {
                   Id = x.Id,
                   EventTitle = x.EventName,
                   EventDescription = x.EventDescription,
                   EventCost = x.Cost,
                   FromDate = x.DateFrom,
                   EventStatus = x.Status.LookUpName,
                   EventCategory = x.Category.LookUpName,
                   EventStatusId = x.StatusId,
                   EventCategoryId = x.CategoryId,
                   EventDestination = x.Destination,
                   GuideId=x.GuideId,
                   GuideName = x.Guide.FullName,
                   ToDate = x.DateTo,
                   IsDeleted= x.IsDeleted,
                   NumberOfEnrolledUsers = context.UserEvents.Where(g => g.EventId == x.Id).Count(),
                   Image = x.Image,
                   IsEnrolled = context.UserEvents.Any(z => UserId == null ||  z.UserId == UserId && z.EventId == x.Id)
               }
                ).ToListAsync();
                return Events;

            }catch(Exception ex)
            {
                throw;
            }
            
        }


        public async Task<List<EventsExtender>> GetLatestEvents()
        {
            try
            {
                var latestEvents = await context.Events
                    .Where(x => x.IsDeleted != true)
                    .OrderByDescending(x => x.Id) 
                    .Take(3) 
                    .Select(x => new EventsExtender
                    {
                        Id = x.Id,
                        EventTitle = x.EventName,
                        EventDescription = x.EventDescription,
                        EventCost = x.Cost,
                        FromDate = x.DateFrom,
                        EventStatus = x.Status.LookUpName,
                        EventCategory = x.Category.LookUpName,
                        EventStatusId = x.StatusId,
                        EventCategoryId = x.CategoryId,
                        EventDestination = x.Destination,
                        GuideId = x.GuideId,
                        GuideName = x.Guide.FullName,
                        ToDate = x.DateTo,
                        IsDeleted = x.IsDeleted,
                        NumberOfEnrolledUsers = context.UserEvents.Where(g => g.EventId == x.Id).Count(),
                        Image = x.Image
                    })
                    .ToListAsync();

                return latestEvents;
            }
            catch (Exception ex)
            {
                throw;
            }
        }



        public async Task<Event> GetEventById(int EventId)
        {
            var Event = await context.Events.Where(x => x.Id == EventId).FirstOrDefaultAsync();
            return Event;
        }
            
        public async Task<bool> CreateEvent(Event Event)
        {
           await context.Events.AddAsync(Event);
           await context.SaveChangesAsync();
            return true;
        }

        public async Task<bool> UpdateEvent(Event Event)
        {
            context.Events.Update(Event);
            await context.SaveChangesAsync();
            return true;
        }

        public async Task<bool> DeleteEvent(int EventId)
        {
            var Event = await context.Events.Where(x => x.Id == EventId).FirstOrDefaultAsync();
            Event.IsDeleted = true;
            context.Events.Update(Event);
            await context.SaveChangesAsync();
            return true;
        }

        public async Task<bool> EnrollUserInEvent(UserEvent enrollinEvent)
        {
            try
            {
                await context.UserEvents.AddAsync(enrollinEvent);
                await context.SaveChangesAsync();
                return true;
            }
            catch(Exception ex)
            {
                return false;

            }
        }
    }
}
