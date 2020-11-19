using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Project_Final.entity
{
    public class ServiceType
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public float Money { get; set; }
        public string Url { get; set; }
        public int IDService { get; set; }

        public ServiceType()
        {

        }
        public ServiceType(int id,string name,float money,string url,int idservice)
        {
            this.ID = id;
            this.Name = name;
            this.Money = money;
            this.Url = url;
            this.IDService = idservice;
        }
    }
}