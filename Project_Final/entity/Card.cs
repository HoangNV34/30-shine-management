using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Project_Final.entity
{
    public class Card
    {
        public int ID { get; set; }
        public string Name { get; set; }

        public int Quantity { get; set; }

        public Items Items { get; set; }

    }
}