using PhoneBookMAUI.Service;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PhoneBookMAUI.ViewModels
{
    public class MainPageViewModel : INotifyPropertyChanged
    {
        private ObservableCollection<string> _searchResults;
        public ObservableCollection<string> SearchResults
        {
            get => _searchResults;
            set
            {
                _searchResults = value;
                OnPropertyChanged();
            }
        }

        private readonly SignalRService _signalRService;

        public MainPageViewModel(SignalRService signalRService)
        {
            _signalRService = signalRService;
        }

        // این متد برای گرفتن نتایج جستجو از SignalR Service است
        public async Task SearchPhoneBookAsync(string query)
        {
            var results = await _signalRService.SearchPhoneBookAsync(query);
            SearchResults = new ObservableCollection<string>(results);
        }
    }

}
