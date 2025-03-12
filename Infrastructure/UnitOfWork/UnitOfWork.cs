using Application.IRepositories;
using Application.IUnitOfWork;
using Infrastructure.Context;
using Infrastructure.Repositories;
using Microsoft.AspNetCore.SignalR;
using Microsoft.EntityFrameworkCore.Storage;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Infrastructure.UnitOfWork
{
    public class UnitOfWork : IUnitOfWork
    {
        private readonly ApplicationDbContext _context;
      
        private IDbContextTransaction _currentTransaction;
        public UnitOfWork(ApplicationDbContext context )
        {
            _context = context;
            
            InitializeRepositories();

        }
        public async Task SendNotificationToClientsAsync(string message)
        {
            // ارسال پیام به همه کلاینت‌ها از طریق SignalR Hub
            
        }

        public IPhoneBookRepository phoneBookRepository { get; private set; }

       
        public void InitializeRepositories()
        {
            phoneBookRepository = new PhoneBookRepository(_context );
       
        }
        public void BeginTransaction()
        {
            _currentTransaction = _context.Database.BeginTransaction();
        }


        public async Task CommitAsync()
        {
            try
            {
                await _context.SaveChangesAsync();  // ذخیره تغییرات
                if (_currentTransaction != null)
                {
                    await _currentTransaction.CommitAsync();  // Commit تراکنش
                    _currentTransaction.Dispose();  // آزادسازی تراکنش
                    _currentTransaction = null;  // تنظیم مجدد تراکنش
                }
                else
                {
                    throw new InvalidOperationException("Transaction has not been started or already committed.");
                }
            }
            catch (Exception ex)
            {
                await RollbackAsync();  // Rollback در صورت وقوع خطا
                throw;
            }
        }


        public async Task RollbackAsync()
        {
            if (_currentTransaction != null)
            {
                await _currentTransaction.RollbackAsync();
                _currentTransaction.Dispose();
                _currentTransaction = null; // Reset the transaction
            }
        }
        public void EndTransaction()
        {
            _currentTransaction?.Dispose();
        }
    }
}
