using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Project_Final.entity
{
    public class Staff
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public DateTime DOB { get; set; }
        public bool Gender { get; set; }
        public string Address { get; set; }
        public string Url { get; set; }
        public Staff()
        {

        }
        public Staff(int id, string name, DateTime dob, bool gender, string address, string url)
        {
            this.ID = id;
            this.Name = name;
            this.DOB = dob;
            this.Gender = gender;
            this.Address = address;
            this.Url = url;
        }

        
    }
}