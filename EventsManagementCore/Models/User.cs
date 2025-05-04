using System;
using System.Collections.Generic;

namespace EventsManagementCore.Models;

public partial class User
{
    public int Id { get; set; }

    public string? FullName { get; set; }

    public string? Email { get; set; }

    public string? UserPassword { get; set; }

    public DateTime? DateOfBirth { get; set; }

    public int? Gender { get; set; }

    public DateTime? JoiningDate { get; set; }

    public int? MobileNumber { get; set; }

    public string? Photos { get; set; }

    public string? Profession { get; set; }

    public string? Nationality { get; set; }

    public int? Usertype { get; set; }

    public bool? IsDeleted { get; set; } = false;

    public virtual LookUp? GenderNavigation { get; set; }

   

    public virtual ICollection<UserEvent> UserEvents { get; set; } = new List<UserEvent>();

    public virtual LookUp? UsertypeNavigation { get; set; }
}
