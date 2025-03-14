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
            // جستجو در داده‌ها (برای مثال، جستجو در دیتابیس)
           var results = await _phoneBookService.SearchAsync(searchQuery);

            // ایجاد تاخیر مصنوعی برای شبیه‌سازی زمان پردازش
            //await Task.Delay(1000); // اینجا 1 ثانیه تاخیر اعمال می‌شود

            // ارسال نتایج به کلاینت‌ها
            await Clients.All.SendAsync("ReceivePhoneBookResults", results);
        }


    }

}
