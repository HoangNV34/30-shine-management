using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Project_Final.entity
{
    public class Address
    {
        public int ID { get; set; }
        public string Name { get; set; }

        public Address()
        {
            
        }
        public Address(int id,string name)
        {
            this.ID = id;
            this.Name = name;
        }
    }
}