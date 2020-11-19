using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Project_Final.entity
{
    public class Account
    {
        public string UserName { get; set; }
        public string Password { get; set; }
        public string Name { get; set; }
        public DateTime Date { get; set; }
        public bool Gender { get; set; }

        public string Address { get; set; }
        public string Email { get; set; }

        public string Phone { get; set; }

        public Account()
        {

        }
        public Account(string username,string password,string name,DateTime date,bool gender,string address,string email ,string phone)
        {
            this.UserName = username;
            this.Password = password;
            this.Name = name;
            this.Date = date;
            this.Gender = gender;
            this.Address = address;
            this.Email = email;
            this.Phone = phone;
        }

    }
}