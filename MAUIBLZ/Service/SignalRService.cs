using System;
using Application.Models.PhoneBookDTO;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.AspNetCore.SignalR.Client;
using Microsoft.Maui.ApplicationModel;
using Microsoft.AspNetCore.SignalR;

namespace MAUIBLZ.Service
{
    public class SignalRService
    {
    
        private HubConnection _hubConnection;


        public ObservableCollection<ReadPhoneBookDto> PhoneBookResults { get; private set; } = new ObservableCollection<ReadPhoneBookDto>();

        public event Action OnPhoneBookResultsChanged;

        public bool IsConnected => _hubConnection?.State == HubConnectionState.Connected;
        private string _lastSearchRequestId = string.Empty;

        public async Task ConnectAsync()
        {
            if (_hubConnection is not null && _hubConnection.State != HubConnectionState.Disconnected)
            {
                Console.WriteLine("⚠️ اتصال SignalR از قبل برقرار است.");
                return;
            }

            Console.WriteLine("🚀 تلاش برای اتصال به SignalR...");

            _hubConnection = new HubConnectionBuilder()
                .WithUrl("https://localhost:7011/phonebookHub")
                .WithAutomaticReconnect(new[] { TimeSpan.Zero, TimeSpan.FromSeconds(2), TimeSpan.FromSeconds(5), TimeSpan.FromSeconds(10) })
                .Build();


            _hubConnection.Reconnecting += (error) =>
            {
                Console.WriteLine("🔄 در حال تلاش برای اتصال مجدد...");
                return Task.CompletedTask;
            };

            _hubConnection.Reconnected += (connectionId) =>
            {
                Console.WriteLine("✅ اتصال مجدداً برقرار شد.");
                return Task.CompletedTask;
            };

            _hubConnection.Closed += async (error) =>
            {
                Console.WriteLine("❌ اتصال SignalR بسته شد. بررسی مجدد پس از 5 ثانیه...");

                await Task.Delay(5000);

                if (IsInternetAvailable()) // تابع بررسی اتصال به اینترنت
                {
                    await ConnectAsync();
                }
                else
                {
                    Console.WriteLine("⚠️ اینترنت قطع است. تلاش مجدد پس از 10 ثانیه...");
                    await Task.Delay(10000);
                    await ConnectAsync();
                }
            };

            _hubConnection.On<List<ReadPhoneBookDto>, string>("ReceivePhoneBookResults", async (results, requestId) =>
            {
                await Task.Run(() =>
                {
                    // بررسی شناسه درخواست
                    if (requestId != _lastSearchRequestId)
                    {
                        Console.WriteLine("🚫 نتیجه قدیمی دریافت شد و نمایش داده نمی‌شود.");
                        return;
                    }

                    Console.WriteLine($"✅ دریافت {results.Count} نتیجه از سرور.");

                    lock (PhoneBookResults)
                    {
                        PhoneBookResults.Clear();
                        foreach (var item in results)
                        {
                            PhoneBookResults.Add(item);
                        }
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
        private bool IsInternetAvailable()
        {
            try
            {
                using (var client = new System.Net.WebClient())
                using (client.OpenRead("http://www.google.com"))
                    return true;
            }
            catch
            {
                return false;
            }
        }




        public async Task SearchPhoneBookAsync(string searchQuery, string requestId)
        {
            if (!IsConnected || string.IsNullOrWhiteSpace(searchQuery))
                return;

            try
            {
                await _hubConnection.InvokeAsync("SendPhoneBookResults", searchQuery, requestId);
            }
            catch (Exception ex)
            {
                Console.WriteLine($"❌ خطا در جستجو: {ex.Message}");
            }
        }
        public async Task CancelCurrentSearch()
        {
            // بررسی وضعیت اتصال قبل از اجرای متد
            if (_hubConnection is null || _hubConnection.State != HubConnectionState.Connected)
            {
                Console.WriteLine("⚠️ اتصال به SignalR برقرار نیست. لغو جستجو انجام نشد.");
                return;
            }

            try
            {
                await _hubConnection.InvokeAsync("CancelCurrentSearch");
            }
            catch (HubException hubEx)
            {
                Console.WriteLine($"❌ خطای Hub در جستجو: {hubEx.Message}");
            }
            catch (InvalidOperationException invalidOpEx)
            {
                Console.WriteLine($"❌ متد نمی‌تواند فراخوانی شود: {invalidOpEx.Message}");
            }
            catch (Exception ex)
            {
                Console.WriteLine($"❌ خطای عمومی در جستجو: {ex.Message}");
            }
        }
        public void SetLastRequestId(string requestId)
        {
            _lastSearchRequestId = requestId;
        }



    }
}
