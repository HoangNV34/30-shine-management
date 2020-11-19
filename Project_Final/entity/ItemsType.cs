using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Project_Final.entity
{
    public class ItemsType
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public string Url { get; set; }
        public int id_VP { get; set; }

        public ItemsType()
        {

        }
        public ItemsType(int id,string name,string url,int id_VP)
        {
            this.ID = id;
            this.Name = name;
            this.Url = url;
            this.id_VP = id_VP;
        }
    }
}