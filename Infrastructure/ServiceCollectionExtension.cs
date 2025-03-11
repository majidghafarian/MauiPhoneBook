using Application.IRepositories;
using Application.IService;
using Infrastructure.Context;
using Infrastructure.Repositories;
using Infrastructure.Service;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;

namespace Infrastructure
{
    public static class ServiceCollectionExtension
    {
        public static IServiceCollection AddInfrastructureServices(this IServiceCollection services, IConfiguration configuration)
        {
            services.AddScoped<IPhoneBookHub, PhoneBookHub>()
            .AddScoped<IPhoneBookRepository, PhoneBookRepository>()
             .AddScoped<IPhoneBookService, PhoneBookService>();


            return services;
        }
    }
}
