using EventsManagementCore.Models.Extenders;
using System;
using System.Collections.Generic;

namespace EventsManagementCore.Models;

public partial class Event
{
    public int Id { get; set; }

    public string? EventName { get; set; }

    public string? EventDescription { get; set; }

    public int? CategoryId { get; set; }

    public string? Destination { get; set; }

    public DateTime? DateFrom { get; set; }

    public DateTime? DateTo { get; set; }

    public int? Cost { get; set; }

    public int? StatusId { get; set; }

    public int? GuideId { get; set; }

    public string? Image { get; set; }
    public bool? IsDeleted { get; set; }

    public virtual LookUp? Category { get; set; }
    public virtual User? Guide { get; set; }

    public virtual LookUp? Status { get; set; }

    public virtual ICollection<UserEvent> UserEvents { get; set; } = new List<UserEvent>();
}
