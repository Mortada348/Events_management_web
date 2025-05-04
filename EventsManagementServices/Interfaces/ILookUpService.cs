using EventsManagementServices.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EventsManagementServices.Interfaces
{
    public interface ILookUpService
    {
        Task<List<_Lookups>> GetAllLookUps();
        Task<_Lookups> GetLookUpById(int LookUpId);
        Task<bool> CreateLookUp(_Lookups Lookup);
        Task<bool> UpdateLookUp(_Lookups lookup);
        Task<bool> DeleteLookUp(int LookUpId);
        Task<List<_Lookups>> GetParentLookUps();
        Task<List<_Lookups>> GetLookUpByParentId(int ParentId);

    }
}
