using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Application.IRepositories
{
    public interface IWriteRepository<T>
    {
        Task AddNewAsync(T entity);
        Task UpdateAsync(T entity);
        Task DeleteAsync(T entity);

    }

}
