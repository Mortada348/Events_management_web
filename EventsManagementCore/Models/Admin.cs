using System;
using System.Collections.Generic;

namespace EventsManagementCore.Models;

public partial class Admin
{
    public int Id { get; set; }

    public string? AdminName { get; set; }

    public DateTime? DateOfBirth { get; set; }

    public int? Gender { get; set; }

    public string? Email { get; set; }

    public string? AdminPassword { get; set; }

    public int? RoleId { get; set; }

    public bool? IsDeleted { get; set; } 


    public virtual LookUp? GenderNavigation { get; set; }

    public virtual Role? Role { get; set; }
}
