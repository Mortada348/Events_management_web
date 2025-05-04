using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EventsManagementCore.Models.Extenders
{
    public class UsersExtender
    {
        public int Id { get; set; }
        public string? FullName { get; set; }
        public string Email { get; set; }
        public string Nationality { get; set; }
        public string UserType { get; set; }
        public DateTime? JoinedDate { get; set; }

        public int? MobileNumber { get; set; }
        public DateTime? DateOfBirth{ get; set; }
        public int? UserTypeId { get; set; }
        public string? Gender { get; set; }
        public int? GenderId { get; set; }
    }
}
