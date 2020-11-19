using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Project_Final.entity
{
    public class NhomToc
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public string Url { get; set; }

        public NhomToc()
        {

        }
        public NhomToc(int id,string name,string url)
        {
            this.ID = id;
            this.Name = name;
            this.Url = url;
        }
    }
}