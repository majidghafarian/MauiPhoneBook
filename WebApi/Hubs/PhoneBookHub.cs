using Application.IRepositories;
using Application.IService;
using Application.Models.PhoneBookDTO;
using Infrastructure.Service;
using Microsoft.AspNetCore.SignalR;

namespace WebApi.Hubs
{
    public class PhoneBookHub : Hub 
    {
        private readonly IPhoneBookService _phoneBookService;
        public PhoneBookHub(IPhoneBookService phoneBookService)
        {
            _phoneBookService = phoneBookService;
        }
        private static readonly Dictionary<string, CancellationTokenSource> _clientCancellationTokens = new();

        public async Task SendPhoneBookResults(string searchQuery, string requestId)
        {
            try
            {
                var connectionId = Context.ConnectionId;

                // بررسی و لغو درخواست قبلی (اگر وجود دارد)
                if (_clientCancellationTokens.TryGetValue(connectionId, out var oldCts))
                {
                    oldCts.Cancel();
                    oldCts.Dispose();
                    _clientCancellationTokens.Remove(connectionId);
                }

                // ایجاد یک CancellationTokenSource جدید برای این درخواست
                var cts = new CancellationTokenSource();
                _clientCancellationTokens[connectionId] = cts;
                var cancellationToken = cts.Token;

                if (string.IsNullOrWhiteSpace(searchQuery))
                    return;

                // ✅ اضافه کردن تاخیر تصادفی بین 500 تا 1500 میلی‌ثانیه قبل از جستجو
                var randomDelay = new Random().Next(500, 1500);
                await Task.Delay(randomDelay, cancellationToken);

                // بررسی و لغو عملیات در صورت درخواست کلاینت
                cancellationToken.ThrowIfCancellationRequested();

                // اجرای جستجو با پشتیبانی از لغو
                var results = await _phoneBookService.SearchAsync(searchQuery, cancellationToken);

                // دوباره بررسی لغو قبل از ارسال نتیجه
                cancellationToken.ThrowIfCancellationRequested();

                // ارسال نتایج به کلاینت
                await Clients.Client(connectionId).SendAsync("ReceivePhoneBookResults", results, requestId);

            }
            catch (OperationCanceledException)
            {
                Console.WriteLine($"⛔ عملیات جستجو برای کاربر {Context.ConnectionId} لغو شد.");
            }
            catch (Exception ex)
            {
                Console.WriteLine($"❌ خطا در SendPhoneBookResults: {ex.Message}");
                throw;
            }
            finally
            {
                // حذف توکن لغو از دیکشنری پس از اتمام عملیات
                _clientCancellationTokens.Remove(Context.ConnectionId);
            }
        }

        public Task CancelCurrentSearch()
        {
            var connectionId = Context.ConnectionId;
            if (_clientCancellationTokens.TryGetValue(connectionId, out var cts))
            {
                cts.Cancel();
                cts.Dispose();
                _clientCancellationTokens.Remove(connectionId);
            }
            return Task.CompletedTask;
        }



    }

}
