using Domain;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Infrastructure.FluentConfig
{
    public class FluentPhoneNumberConfig : IEntityTypeConfiguration<PhoneBook>
    {
        public void Configure(Microsoft.EntityFrameworkCore.Metadata.Builders.EntityTypeBuilder<PhoneBook> builder)
        {
            builder.HasKey(p => p.Id);
            builder.Property(p => p.Id)
                   .IsRequired()
                   .ValueGeneratedOnAdd();

            builder.Property(p => p.Name)
                   .IsRequired()
                   .HasMaxLength(100);

            builder.Property(p => p.PhoneNumber)
                   .IsRequired()
                   .HasMaxLength(20);
        }
    }
}
