using Application.IService;
using Application.IUnitOfWork;
using Application.Models.PhoneBookDTO;
using AutoMapper;
using Domain;
using Infrastructure.UnitOfWork;
using Microsoft.AspNetCore.SignalR;
using Microsoft.AspNetCore.SignalR.Client;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Infrastructure.Service
{
    public class PhoneBookService : IPhoneBookService
    {
        private readonly IUnitOfWork _unitOfWork;
        private readonly IMapper _mapper;

      
        public PhoneBookService(IUnitOfWork unitOfWork, IMapper mapper)
        {
            _unitOfWork = unitOfWork;
            _mapper = mapper;
      
        }

        public async Task StartAsync()
        {
            await Task.CompletedTask;
        }

        public async Task HandlePhoneBookUpdate(PhoneBook updatedPhoneBook)
        {
            _unitOfWork.BeginTransaction();
            if (updatedPhoneBook == null)
                throw new ArgumentNullException(nameof(updatedPhoneBook));
            var existingJobs = await _unitOfWork.phoneBookRepository.GetByIdAsync(updatedPhoneBook.Id);

            if (existingJobs == null)
                throw new KeyNotFoundException("Task not found");

            await _unitOfWork.phoneBookRepository.UpdateAsync(existingJobs);
            await _unitOfWork.CommitAsync();
        }

        public async Task<IEnumerable<ReadPhoneBookDto>> GetAllPhoneBookEntriesAsync()
        {
            var phoneBookEntries = await _unitOfWork.phoneBookRepository.GetAllAsync();
            if (phoneBookEntries == null || !phoneBookEntries.Any())
                throw new KeyNotFoundException("No tasks found");
            return _mapper.Map<IEnumerable<ReadPhoneBookDto>>(phoneBookEntries);
        }

        public async Task<ReadPhoneBookDto> CreatePhoneBookEntryAsync(ReadPhoneBookDto entry)
        {
            if (entry == null)
                throw new ArgumentNullException(nameof(entry));  // بررسی ورودی null


            _unitOfWork.BeginTransaction();  // شروع تراکنش
            var newEntry = _mapper.Map<PhoneBook>(entry);
            await _unitOfWork.phoneBookRepository.AddNewAsync(newEntry);
            await _unitOfWork.CommitAsync();
            return _mapper.Map<ReadPhoneBookDto>(newEntry);
        }
        public async Task<IEnumerable<ReadPhoneBookDto>> SearchAsync(string searchQuery)
        {
            // فراخوانی متد جستجو از ریپازیتوری
            var phoneBooks = await _unitOfWork.phoneBookRepository.GetPhoneBooksByNameAsync(searchQuery);

            // تبدیل نتایج به DTO با استفاده از AutoMapper
            return _mapper.Map<IEnumerable<ReadPhoneBookDto>>(phoneBooks);
        }
    }


}
