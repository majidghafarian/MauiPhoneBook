using System;
using Application.Models.PhoneBookDTO;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.AspNetCore.SignalR.Client;

namespace MAUIBLZ.Service
{
    public class SignalRService
    {
        private HubConnection _hubConnection;
        public ObservableCollection<ReadPhoneBookDto> PhoneBookResults { get; private set; } = new ObservableCollection<ReadPhoneBookDto>();

        public event Action OnPhoneBookResultsChanged;

        public bool IsConnected => _hubConnection?.State == HubConnectionState.Connected;

        public async Task ConnectAsync()
        {
            _hubConnection = new HubConnectionBuilder()
                .WithUrl("https://localhost:7011/phonebookHub")
                .WithAutomaticReconnect()
                .Build();

            _hubConnection.On<List<ReadPhoneBookDto>>("ReceivePhoneBookResults", (results) =>
            {
                MainThread.BeginInvokeOnMainThread(() =>
                {
                    PhoneBookResults.Clear();
                    foreach (var item in results)
                    {
                        PhoneBookResults.Add(item);
                    }

                    OnPhoneBookResultsChanged?.Invoke(); // فراخوانی برای به‌روزرسانی UI
                });
            });

            await _hubConnection.StartAsync();
        }

        public async Task SearchPhoneBookAsync(string searchQuery)
        
        {
           if (!IsConnected)
                return;

            await _hubConnection.InvokeAsync("SendPhoneBookResults", searchQuery);
        }
    }
}
