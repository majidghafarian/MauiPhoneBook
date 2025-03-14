using Microsoft.Extensions.Logging;
using MAUIBLZ.Service;

namespace MAUIBLZ
{
    public static class MauiProgram
    {
        public static MauiApp CreateMauiApp()
        {
            var builder = MauiApp.CreateBuilder();
            builder
                .UseMauiApp<App>()
                .ConfigureFonts(fonts =>
                {
                    fonts.AddFont("OpenSans-Regular.ttf", "OpenSansRegular");
                });

            builder.Services.AddMauiBlazorWebView();

#if DEBUG
            builder.Services.AddBlazorWebViewDeveloperTools();
            builder.Logging.AddDebug();
            builder.Services.AddScoped<SignalRService>(); // اضافه کردن SignalRService به DI
        
#endif

            return builder.Build();
        }
    }
}
