using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Application.IRepositories
{
    public interface IPhoneBookRepository : IReadRepository<Domain.PhoneBook>, IWriteRepository<Domain.PhoneBook>
    {
        Task<IEnumerable<Domain.PhoneBook>> GetPhoneBooksByNameAsync(string name);
    }
}
