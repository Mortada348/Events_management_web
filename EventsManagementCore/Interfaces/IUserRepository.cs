using EventsManagementCore.Models;
using EventsManagementCore.Models.Extenders;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EventsManagementCore.Interfaces
{
    public interface IUserRepository
    {
        Task<List<UsersExtender>> GetAllUsers(string TypeId);
        Task<bool> CreateUser(User user);
        Task<User> GetUserById(int id);
        Task<bool> UpdateUser(User user);
        Task<bool> DeleteUser(int UserId);
   
    }
}
