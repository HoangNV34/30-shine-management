using Project_Final.entity;
using Project_Final.model;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_Final
{
    public partial class GioHang : System.Web.UI.Page
    {
        ItemDAO data = new ItemDAO();
        public List<Card> listCardItem = new List<Card>();
        public int total;
        public List<Items> listItem;
        public int value;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               
               Hashtable hashtable = ((Hashtable)Session["Cart"]);
                foreach(int id in hashtable.Keys)
                {
                    //value la id cua product
                    value  = (int)hashtable[id];
                     listItem = data.getOneItem(id);
                }
               foreach(Items t in listItem)
                {
                    total = value * Convert.ToInt32(t.Price);
                }
            }
        }
    }
}