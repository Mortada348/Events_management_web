using EventsManagementCore.Models.Extenders;
using EventsManagementServices.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EventsManagementServices.Interfaces
{
    public interface IUserService
    {
        Task<List<UsersExtender>> GetAllUsers(string TypeId);
        Task<bool> CreateUsers(_Users user);

        Task<_Users> GetUserById(int id);
        Task<bool> UpdateUser( _Users user);

        Task<bool> DeleteUser(int id);

      
    }
}
