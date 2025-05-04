using System;
using System.Collections.Generic;

namespace EventsManagementCore.Models;

public partial class UserEvent
{
    public int Id { get; set; }

    public int? UserId { get; set; }

    public int? EventId { get; set; }

    public bool? IsDeleted { get; set; }

    public virtual Event? Event { get; set; }

    public virtual User? User { get; set; }
}
