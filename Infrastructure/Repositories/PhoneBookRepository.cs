using Application.IRepositories;
using Domain;
using Infrastructure.Context;
using Microsoft.AspNetCore.SignalR;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Infrastructure.Repositories
{
    public class PhoneBookRepository : IPhoneBookRepository
    {
        private readonly ApplicationDbContext _context;
      
        public PhoneBookRepository(ApplicationDbContext context )
        {
            _context = context;
            
        }
        public async Task AddNewAsync(PhoneBook entity)
        {
            await _context.phoneBooks.AddAsync(entity);
            await _context.SaveChangesAsync();
            
        }

        public async Task DeleteAsync(PhoneBook entity)
        {
            _context.phoneBooks.Remove(entity);
            await _context.SaveChangesAsync();
           
        }

        public async Task<List<PhoneBook>> GetAllAsync()
        {
            return await _context.phoneBooks.ToListAsync();
        }

        public async Task<PhoneBook> GetByIdAsync(Guid id)
        {
            return await _context.phoneBooks.FindAsync(id);
        }

        public async Task UpdateAsync(PhoneBook entity)
        {
            _context.phoneBooks.Update(entity);
            await _context.SaveChangesAsync();
           
        }
        public async Task<IEnumerable<Domain.PhoneBook>> GetPhoneBooksByNameAsync(string name)
        {
            return await _context.phoneBooks
                                 .Where(p => p.Name.Contains(name)) // جستجو بر اساس نام
                                 .ToListAsync();
        }
    }
}
