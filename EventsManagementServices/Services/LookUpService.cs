using AutoMapper;
using EventsManagementCore.Interfaces;
using EventsManagementCore.Models;
using EventsManagementServices.DTO;
using EventsManagementServices.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Principal;
using System.Text;
using System.Threading.Tasks;

namespace EventsManagementServices.Services
{
    public class LookUpService : ILookUpService
    {
        IMapper mapper;
        ILookUpRepository LookUpRepository;

        public LookUpService(IMapper _mapper , ILookUpRepository lookUpRepository)
        {
            mapper = _mapper;
            this.LookUpRepository = lookUpRepository;
        }

        public async Task<List<_Lookups>> GetAllLookUps()
        {
          var AllLookUps = await LookUpRepository.GetAllLookUps();
          return mapper.Map<List<_Lookups>>(AllLookUps);  
        }
        
        public async Task<_Lookups> GetLookUpById(int LookUpId)
        {
            var LookUp = await LookUpRepository.GetLookUpById(LookUpId);
            var Lookup= mapper.Map<_Lookups>(LookUp);
            return Lookup;
        }

        public async Task<bool> CreateLookUp(_Lookups Lookup)
        {
            var mappedLookUp= mapper.Map<LookUp>(Lookup);
            await LookUpRepository.CreateLookUp(mappedLookUp);
            return true;
        }

        public async Task<bool> UpdateLookUp(_Lookups lookup)
        {
            var mappedLookUp= mapper.Map<LookUp>(lookup);
            await LookUpRepository.UpdateLookUp(mappedLookUp);
            return true;
        }

        public async Task<bool> DeleteLookUp(int LookUpId)
        {
            await LookUpRepository.DeleteLookUp(LookUpId);
            return true;
        }

        public async Task<List<_Lookups>> GetParentLookUps()
        {
            var LookUps = await LookUpRepository.GetParentsLookUps();
            return mapper.Map<List<_Lookups>>(LookUps);
        }

        public async Task<List<_Lookups>> GetLookUpByParentId(int ParentId)
        {
            var LookUps = await LookUpRepository.GetLookUpByParentId(ParentId);
            return mapper.Map<List<_Lookups>>(LookUps);
        }
    }
}
