using Application.IService;
using Domain;
using Microsoft.AspNetCore.SignalR.Client;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Infrastructure.Service
{
    public class PhoneBookService : IPhoneBookService
    {
        private readonly HubConnection _connection;

        public PhoneBookService()
        {
            _connection = new HubConnectionBuilder()
                .WithUrl("https://localhost:5001/phoneBookHub")
                .Build();

            _connection.On<PhoneBook>("ReceivePhoneBookUpdate", HandlePhoneBookUpdate);
        }

        public async Task StartAsync()
        {
            await _connection.StartAsync();
        }

        public async Task HandlePhoneBookUpdate(PhoneBook updatedPhoneBook)
        {
            // Handle the updated phone book data here
            Console.WriteLine($"Received updated phone book: {updatedPhoneBook.Name}");
        }
    }

}
