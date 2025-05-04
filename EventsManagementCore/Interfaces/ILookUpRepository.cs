using EventsManagementCore.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EventsManagementCore.Interfaces
{
    public interface ILookUpRepository
    {
        Task<List<LookUp>> GetAllLookUps();
        Task<LookUp> GetLookUpById(int LookUpId);
        Task<bool> CreateLookUp(LookUp lookUp);
        Task<bool> UpdateLookUp(LookUp lookUp);
        Task<bool> DeleteLookUp(int LookUpId);
        Task<List<LookUp>> GetParentsLookUps();
        Task<List<LookUp>> GetLookUpByParentId(int ParentId);
    }
}
