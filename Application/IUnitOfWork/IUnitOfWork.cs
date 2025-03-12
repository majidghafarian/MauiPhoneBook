using Application.IRepositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Application.IUnitOfWork
{
    public interface IUnitOfWork
    {
        IPhoneBookRepository phoneBookRepository { get; }
       
        Task CommitAsync();
        Task RollbackAsync();
        void EndTransaction();
        void BeginTransaction();
    }
}
