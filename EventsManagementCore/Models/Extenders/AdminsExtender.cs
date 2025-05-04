using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EventsManagementCore.Models.Extenders
{
    public class AdminsExtender
    {
        public int Id { get; set; }
        public string? AdminName { get; set; }
        public DateTime? DateofBirth { get; set; }
        public string? Gender { get; set; }
        public string? Email { get; set; }
        public string? AdminRole { get; set; }
        public int? RoleId { get; set; }
        public int? GenderId { get; set; }
        public bool? IsDeleted { get; set; }
    }
}
