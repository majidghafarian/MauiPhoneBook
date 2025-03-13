
using Application.Models.PhoneBookDTO;
using PhoneBookMAUI.Service;
using PhoneBookMAUI.ViewModels;
using System.Collections.ObjectModel;


namespace PhoneBookMAUI
{

    public partial class MainPage : ContentPage
    {
        private readonly SignalRService _signalRService;

        // لیست نتایج که به XAML متصل می‌شود
        public ObservableCollection<string> SearchResults { get; set; } = new();

        public MainPage(SignalRService signalRService)
        {
            InitializeComponent();
            _signalRService = signalRService;
            _signalRService.OnPhoneBookResultsReceived += UpdateResults;

            BindingContext = this; // مقداردهی BindingContext برای ارتباط با XAML
            ConnectToSignalR();
        }

        private async void ConnectToSignalR()
        {
            await _signalRService.ConnectAsync();
        }

        private async void OnSearchTextChanged(object sender, TextChangedEventArgs e)
        {
            string query = e.NewTextValue;
            if (!string.IsNullOrWhiteSpace(query))
            {
                await _signalRService.SearchPhoneBookAsync(query);
            }
        }

        private void UpdateResults(List<string> results)
        {
            Device.BeginInvokeOnMainThread(() =>
            {
                SearchResults.Clear();
                foreach (var result in results)
                {
                    SearchResults.Add(result);
                }
            });
        }

    }


}


