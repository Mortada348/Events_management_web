using System;
using System.Collections.Generic;

namespace EventsManagementCore.Models;

public partial class Role
{
    public int Id { get; set; }

    public string? RoleName { get; set; }

    public bool? IsDeleted { get; set; }

   
}
