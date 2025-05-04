using System;
using System.Collections.Generic;

namespace EventsManagementCore.Models;

public partial class LookUp
{
    public int Id { get; set; }

    public string? Code { get; set; }

    public string? LookUpName { get; set; }

    public int? LookUpOrder { get; set; }

    public int? ParentId { get; set; }

    public bool? IsDeleted { get; set; }

    public virtual ICollection<Admin> Admins { get; set; } = new List<Admin>();

    public virtual ICollection<Event> EventCategories { get; set; } = new List<Event>();

    public virtual ICollection<Event> EventStatuses { get; set; } = new List<Event>();

    public virtual ICollection<LookUp> InverseParent { get; set; } = new List<LookUp>();

    public virtual LookUp? Parent { get; set; }

    public virtual ICollection<User> UserGenderNavigations { get; set; } = new List<User>();

    public virtual ICollection<User> UserUsertypeNavigations { get; set; } = new List<User>();
}
