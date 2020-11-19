using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Project_Final.entity
{
    public class KieuToc
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public string Url { get; set; }
        public int Id_NT { get; set; }

        public KieuToc()
        {

        }
        public KieuToc(int id,string name,string url,int id_NV)
        {
            this.ID = id;
            this.Name = name;
            this.Url = url;
            this.Id_NT = id_NV;
        }
    }
}