using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Project_Final.entity
{
    public class HIstory
    {
        public int ID { get; set; }
        public DateTime Date { get; set; }
        public int ID_DV { get; set; }
        public string UserName { get; set; }
        public String Url { get; set; }
        public int ID_DD { get; set; }
        public int ID_NV { get; set; }

        public HIstory()
        {

        }
        public HIstory(int id,DateTime date,int id_DV,string username,string url,int id_DD,int id_NV)
        {
            this.ID = id;
            this.Date = date;
            this.ID_DV = id_DV;
            this.UserName = username;
            this.Url = url;
            this.ID_DD = id_DD;
            this.ID_NV = id_NV;
        }

    }
}