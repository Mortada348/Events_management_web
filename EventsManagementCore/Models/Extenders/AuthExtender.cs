using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EventsManagementCore.Models.Extenders
{
    public class AuthExtender
    {
        public string Email { get; set; }
        public string Password { get; set; }

        public int? UserTypeId { get; set; }
    }
}
