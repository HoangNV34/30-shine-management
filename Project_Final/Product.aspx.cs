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
    public partial class Product : System.Web.UI.Page
    {
        ItemDAO data = new ItemDAO();
        public List<Items> list;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int id = Convert.ToInt32(Request.QueryString["id"]);

                list = data.getAllItemById(id);
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            int quatity = Convert.ToInt32(txtQuantity.Text);
            int IdProduct = Convert.ToInt32(Request.QueryString["id"]);

            Card card = new Card();

            card.ID = IdProduct;
            card.Quantity = quatity;

            List<Card> listCard = new List<Card>();
            listCard.Add(card);

            Session["item"] = listCard;

            if (Session["Cart"] == null)
            {
                Hashtable map = new Hashtable();
                map.Add(IdProduct, quatity);
                Session["cart"] = map;
            }
            else
            {
                if(((Hashtable)Session["Cart"]).Contains(IdProduct))
                {
                    int value = Convert.ToInt32(((Hashtable)Session["Cart"])[IdProduct]) + quatity;
                    ((Hashtable)Session["Cart"]).Remove(IdProduct);
                    ((Hashtable)Session["Cart"]).Add(IdProduct, value);
                }
                else
                {
                    ((Hashtable)Session["Cart"]).Add(IdProduct, quatity);
                }
            }

            Response.Redirect("GioHang.aspx");
        }

        protected void btnMuaNgay_Click(object sender, EventArgs e)
        {
            //int quatity = Convert.ToInt32(txtQuantity.Text);
            //int IdProduct = Convert.ToInt32(Request.QueryString["id"]);

            //Card card = new Card();

            //card.ID = IdProduct;
            //card.Quantity = quatity;

            //Session["item"] = card;

        }
    }
}