using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Principal;
using System.Text;
using System.Threading.Tasks;

namespace EventsManagementCore.Models.Extenders
{
    public class EventsExtender
    {
        public int Id { get; set; }
        public string? EventTitle { get; set; }
        public string? EventDescription { get; set; }
        public DateTime? FromDate { get; set; }
        public DateTime? ToDate { get; set; }
        public int? EventCost { get; set; }
        public int NumberOfEnrolledUsers { get; set; }
        public string? EventStatus { get; set; }
        public string? EventCategory { get; set; }
        public string? GuideName { get; set; }
        public int? EventStatusId { get; set; }
        public int? EventCategoryId { get; set; }
        public string? EventDestination { get; set; }
        public int? GuideId { get; set; }
        public bool ? IsDeleted { get; set; }
        public string? Image { get; set; }
        public bool IsEnrolled { get; set; }

    }
}
