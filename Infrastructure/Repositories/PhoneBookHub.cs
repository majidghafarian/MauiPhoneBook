using Application.IRepositories;
using Domain;
using Microsoft.AspNetCore.SignalR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Infrastructure.Repositories
{
    public class PhoneBookHub : Hub, IPhoneBookHub
    {
        public async Task SendPhoneBookUpdate(PhoneBook phoneBook)
        {
            await Clients.All.SendAsync("ReceivePhoneBookUpdate", phoneBook);
        }
    }

}
