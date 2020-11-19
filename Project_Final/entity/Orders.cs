using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Project_Final.entity
{
    public class Orders
    {
        public int ID { get; set; }
        public string UserName { get; set; }

        public string Name { get; set; }
        public string Email { get; set; }
        public string Address { get; set; }
        public string Phone { get; set; }
        public DateTime Date { get; set; }

        public int Total { get; set; }
        public int idVatPham { get; set; }

    }
}