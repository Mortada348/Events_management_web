using EventsManagementCore.Interfaces;
using EventsManagementCore.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EventsManagementCore.Repositories
{
    public class LookUpRepository : ILookUpRepository
    {
        private readonly EventsManagementDbContext context;

        public LookUpRepository(EventsManagementDbContext _context)
        {
            this.context = _context;
        }

        public async Task<List<LookUp>> GetAllLookUps()
        {
            var AllLookUps = await context.LookUps.Where(x=>x.IsDeleted!=true).ToListAsync();
            return AllLookUps;
        }

        public async Task<LookUp?> GetLookUpById(int LookupId)
        {
            LookUp? LookUp = await context.LookUps.Where( x => x.Id == LookupId ).FirstOrDefaultAsync();
            return LookUp;
        }

        public async Task<bool> CreateLookUp(LookUp lookUp)
        {
            await context.LookUps.AddAsync( lookUp );
            await context.SaveChangesAsync();
            return true;
        }

        public async Task<bool> UpdateLookUp(LookUp lookUp)
        {
            context.LookUps.Update( lookUp );
            await context.SaveChangesAsync();
            return true;
        }


        public async Task<bool> DeleteLookUp(int LookUpId)
        {
            var LookUp = await context.LookUps.Where(x => x.Id==LookUpId).FirstOrDefaultAsync();
            LookUp.IsDeleted= true;
            context.LookUps.Update(LookUp);
            await context.SaveChangesAsync();
            return true;
        }

        public async Task<List<LookUp>> GetParentsLookUps()
        {
            var LookUps = await context.LookUps.Where( x=>x.ParentId == null && x.IsDeleted != true).ToListAsync();
            return LookUps;
        }

        public async Task<List<LookUp>> GetLookUpByParentId(int parentId)
        {
            var LookUps = await context.LookUps.Where(x=> x.ParentId == parentId && x.IsDeleted != true).ToListAsync();
            return LookUps;
        }



   
    }
}
