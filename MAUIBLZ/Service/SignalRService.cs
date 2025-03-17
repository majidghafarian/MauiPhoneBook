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
            Console.WriteLine("🚀 تلاش برای اتصال به SignalR...");

            _hubConnection = new HubConnectionBuilder()
                .WithUrl("https://localhost:7011/phonebookHub")
                .WithAutomaticReconnect()
                .Build();

            _hubConnection.On<List<ReadPhoneBookDto>>("ReceivePhoneBookResults", (results) =>
            {
                MainThread.BeginInvokeOnMainThread(() =>
                {
                    Console.WriteLine($"✅ دریافت {results.Count} نتیجه از سرور.");
                    PhoneBookResults.Clear();
                    foreach (var item in results)
                    {
                        PhoneBookResults.Add(item);
                    }

                    OnPhoneBookResultsChanged?.Invoke();
                });
            });

            try
            {
                await _hubConnection.StartAsync();
                Console.WriteLine("✅ اتصال به SignalR برقرار شد.");
            }
            catch (Exception ex)
            {
                Console.WriteLine($"❌ خطا در اتصال به SignalR: {ex.Message}");
            }
        }




        public async Task SearchPhoneBookAsync(string searchQuery)
        {
            if (!IsConnected || string.IsNullOrWhiteSpace(searchQuery))
                return;

            try
            {
                await _hubConnection.InvokeAsync("SendPhoneBookResults", searchQuery);
            }
            catch (Exception ex)
            {
                Console.WriteLine($"❌ خطا در جستجو: {ex.Message}");
            }
        }

    }
}
