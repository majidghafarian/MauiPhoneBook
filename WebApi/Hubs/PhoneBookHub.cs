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
        public async Task SendPhoneBookResults(string searchQuery)
        {
            try
            {
                var cancellationToken = Context.ConnectionAborted;

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
                await Clients.All.SendAsync("ReceivePhoneBookResults", results, cancellationToken);
            }
            catch (OperationCanceledException)
            {
                Console.WriteLine("⛔ عملیات جستجو لغو شد.");
            }
            catch (Exception ex)
            {
                Console.WriteLine($"❌ خطا در SendPhoneBookResults: {ex.Message}");
                throw;
            }
        }




    }

}
