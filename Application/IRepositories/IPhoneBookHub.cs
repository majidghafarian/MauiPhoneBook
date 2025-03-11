﻿using Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Application.IRepositories
{
    public interface IPhoneBookHub
    {
        Task SendPhoneBookUpdate(PhoneBook phoneBook);
    }

}
