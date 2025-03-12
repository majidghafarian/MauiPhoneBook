using Application.IRepositories;
using Application.IService;
using Application.IUnitOfWork;
using Infrastructure.Context;
using Infrastructure.Repositories;
using Infrastructure.Service;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
 

namespace Infrastructure
{
    public static class ServiceCollectionExtension
    {
        public static IServiceCollection AddInfrastructureServices(this IServiceCollection services, IConfiguration configuration)
        {
            services.AddScoped<IPhoneBookRepository, PhoneBookRepository>()
             .AddScoped<IPhoneBookService, PhoneBookService>()
            .AddScoped<IUnitOfWork, UnitOfWork.UnitOfWork>();
         

            services.AddDbContext<ApplicationDbContext>(options =>
             options.UseSqlServer(configuration.GetConnectionString("MauiPhoneBookDBConecttion")));


            return services;
        }
    }
}
