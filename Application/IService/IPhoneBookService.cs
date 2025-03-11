using Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Application.IService
{
    public interface IPhoneBookService
    {
        Task StartAsync();
        Task HandlePhoneBookUpdate(PhoneBook updatedPhoneBook);
    }

}
