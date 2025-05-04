using EventsManagementCore.Interfaces;
using EventsManagementCore.Models;
using EventsManagementCore.Models.Extenders;
using Microsoft.EntityFrameworkCore;

namespace EventsManagementCore.Repositories
{
    public class UserRepository : IUserRepository
    {
        private readonly EventsManagementDbContext context;
        public UserRepository(EventsManagementDbContext _context)
        {
            context = _context;
        }

        public async Task<List<UsersExtender>> GetAllUsers(string TypeId)
        {
            string[] typeIdStrings = TypeId.Split(',');

            List<int> typeIdArray = typeIdStrings.Select(int.Parse).ToList();

            var users = await context.Users.Where(x=>x.IsDeleted != true && typeIdArray.Contains((int)x.Usertype))
                .Select(x => new UsersExtender { 
                 Id = x.Id,
                 FullName = x.FullName,
                 Email = x.Email,
                 Nationality = x.Nationality,
                 JoinedDate = x.JoiningDate,
                 UserType = x.UsertypeNavigation.LookUpName,
                 UserTypeId=x.UsertypeNavigation.Id,
                 MobileNumber = x.MobileNumber,
                 DateOfBirth = x.DateOfBirth,
                 GenderId=x.GenderNavigation.Id,
                 Gender=x.GenderNavigation.LookUpName
                })
                .ToListAsync();
            return users;
        }

        public async Task<bool> CreateUser(User user)
        {
            user.UserPassword = BCrypt.Net.BCrypt.HashPassword(user.UserPassword);

            await context.Users.AddAsync(user);
            await context.SaveChangesAsync();
            return true;
        }

        public async Task<User> GetUserById(int UserId)
        {
           var User = await context.Users.Where(x => x.Id == UserId && x.IsDeleted!=true).FirstOrDefaultAsync();
           return User; 
        }

        public async Task<bool> UpdateUser(User user)
        {
            context.Users.Update(user);
            await context.SaveChangesAsync();
            return true;

        }


        public async Task<bool> DeleteUser(int UserId)
        {
            var User = await context.Users.Where(x=> x.Id == UserId).FirstOrDefaultAsync();
            User.IsDeleted = true;
            context.Users.Update(User);
            await context.SaveChangesAsync();
            return true;
        }

    }
}
