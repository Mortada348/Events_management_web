using Azure;
using EventsManagementCore.Interfaces;
using EventsManagementCore.Models.Extenders;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.IdentityModel.Tokens;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.Linq;
using System.Security.Claims;
using System.Text;
using System.Threading.Tasks;

namespace EventsManagementCore.Repositories
{
    public class LoginRepository : ILoginRepository
    {
        private readonly EventsManagementDbContext context;
        private readonly IConfiguration configuration;

        public LoginRepository(EventsManagementDbContext _context , IConfiguration _configuration)
        {
            context = _context;
            configuration = _configuration;
        }


        public async Task<ResponseExtender> Login(AuthExtender authExtender)
        {
             
            try
            {
                ResponseExtender?  ResponseExtender = new();
                // check if user exists 
                var CurrentUser = await context.Users.Where(x => x.Email == authExtender.Email && x.Usertype == authExtender.UserTypeId && x.IsDeleted != true).FirstOrDefaultAsync();

                if (CurrentUser is not null)
                {

                    if (BCrypt.Net.BCrypt.Verify(authExtender.Password, CurrentUser.UserPassword) == false)
                    {
                        ResponseExtender.Success = false;
                        ResponseExtender.Message = "Wrong pass";
                    }
                    else
                    {
                        string Token = GenerateToken(new TokenObjExtender
                        { Id = CurrentUser.Id.ToString(), Email = CurrentUser.Email, FullName = CurrentUser.FullName });


                        LoginRespoonse LoginResponse = new LoginRespoonse
                        {
                            Id = CurrentUser.Id.ToString(),
                            Token = Token,
                            Email = CurrentUser.Email,
                            FullName = CurrentUser.FullName,

                        };

                        string Message = JsonConvert.SerializeObject(LoginResponse);

                        ResponseExtender.Success = true;
                        ResponseExtender.Message = Message;
                    }
                }
                else
                {
                    ResponseExtender.Success = false;
                    ResponseExtender.Message = "User not found";
                }


                return ResponseExtender;

            }catch(Exception ex)
            {
                throw;
            }
           




        }


        public async Task<ResponseExtender> AdminLogin(AuthExtender authExtender)
        {

            try
            {
                ResponseExtender? ResponseExtender = new();
                // check if user exists 
                var CurrentUser = await context.Admins.Where(x => x.Email == authExtender.Email && x.IsDeleted != true).FirstOrDefaultAsync();

                if (CurrentUser is not null)
                {

                    if (BCrypt.Net.BCrypt.Verify(authExtender.Password, CurrentUser.AdminPassword) == false)
                    {
                        ResponseExtender.Success = false;
                        ResponseExtender.Message = "Wrong pass";
                    }
                    else
                    {
                        string Token = GenerateToken(new TokenObjExtender
                        { Id = CurrentUser.Id.ToString(), Email = CurrentUser.Email, FullName = CurrentUser.AdminName });


                        LoginRespoonse LoginResponse = new LoginRespoonse
                        {
                            Id = CurrentUser.Id.ToString(),
                            Token = Token,
                            Email = CurrentUser.Email,
                            FullName = CurrentUser.AdminName,

                        };

                        string Message = JsonConvert.SerializeObject(LoginResponse);

                        ResponseExtender.Success = true;
                        ResponseExtender.Message = Message;
                    }
                }
                else
                {
                    ResponseExtender.Success = false;
                    ResponseExtender.Message = "User not found";
                }


                return ResponseExtender;

            }
            catch (Exception ex)
            {
                throw;
            }





        }


        public string GenerateToken(TokenObjExtender Obj)
        {
            var securityKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(configuration["JwtAuthentication:JwtKey"]));
            var credentials = new SigningCredentials(securityKey, SecurityAlgorithms.HmacSha256);
            var Claims = new Claim[]
            {

               new Claim("Id", Obj.Id.ToString()),
               new Claim("Email", Obj.Email.ToString()),
               new Claim("FullName", Obj.FullName.ToString())

            };
            var token = new JwtSecurityToken(configuration["JwtAuthentication:JwtIssuer"],
              configuration["JwtAuthentication:JwtIssuer"],
              Claims,
              expires: DateTime.Now.AddYears(1),
              signingCredentials: credentials);

            return new JwtSecurityTokenHandler().WriteToken(token);
        }


    }
}
