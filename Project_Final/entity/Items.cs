using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Project_Final.entity
{
    public class Items
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public string Url { get; set; }

        public float Price { get; set; }
        public float PriceDiscount { get; set; }
        public string ThuongHieu { get; set; }
        public string Content1 { get; set; }
        public string DesCription { get; set; }
        public int Quantity { get; set; }
    }
}