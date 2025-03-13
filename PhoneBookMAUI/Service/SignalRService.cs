using Microsoft.AspNetCore.SignalR.Client;
 

namespace PhoneBookMAUI.Service
{
    public class SignalRService
    {
        private HubConnection _hubConnection;

        public event Action<List<string>> OnPhoneBookResultsReceived;

        public async Task ConnectAsync()
        {
            _hubConnection = new HubConnectionBuilder()
      .WithUrl("https://localhost:7011/phonebookhub", options =>
      {
          options.HttpMessageHandlerFactory = handler =>
          {
              if (handler is HttpClientHandler clientHandler)
              {
                  clientHandler.ServerCertificateCustomValidationCallback =
                      (message, cert, chain, errors) => true; // 👈 نادیده گرفتن خطای SSL
              }
              return handler;
          };
      })
      .WithAutomaticReconnect()
      .Build();

            // دریافت پیام از سرور
            _hubConnection.On<List<string>>("ReceivePhoneBookResults", (results) =>
            {
                OnPhoneBookResultsReceived?.Invoke(results);
            });

            await _hubConnection.StartAsync();
        }

        public async Task SearchPhoneBookAsync(string query)
        {
            if (_hubConnection.State == HubConnectionState.Connected)
            {
                await _hubConnection.InvokeAsync("SendPhoneBookResults", query);
            }
        }
    }
}
