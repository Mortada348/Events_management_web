using AutoMapper;
using EventsManagementCore.Interfaces;
using EventsManagementServices.Interfaces;
using EventsManagementServices.DTO;
using EventsManagementCore.Models;
using AutoMapper.Configuration.Annotations;
using EventsManagementCore.Models.Extenders;

namespace EventsManagementServices.Services
{
    public class UserService : IUserService
    {
        IMapper mapper;
        IUserRepository UserRepository;

        public UserService( IMapper _mapper , IUserRepository userRepository)
        {
            mapper= _mapper;
            this.UserRepository= userRepository;
        }
        public async Task<List<UsersExtender>> GetAllUsers(string TypeId)
        {
            return await UserRepository.GetAllUsers(TypeId);
       
        }
        public async Task<bool> CreateUsers(_Users user)
        {
            var mappedUser = mapper.Map<User>(user);
            var created = await UserRepository.CreateUser(mappedUser);
            return created;
        }

        public async Task<_Users> GetUserById(int UserId)
        {
            var User = await UserRepository.GetUserById(UserId);
            if (User == null)
            {
                return null;
            }
            var user= mapper.Map<_Users>(User);
            return user;
        }

        public async Task<bool> UpdateUser(_Users user)
        {
            var mappedUser = mapper.Map<User>(user);

            await UserRepository.UpdateUser(mappedUser);

            return true;
        }

        public async Task<bool> DeleteUser(int UserId)
        {
            await UserRepository.DeleteUser(UserId);
            return true;
        }




    }
}
    