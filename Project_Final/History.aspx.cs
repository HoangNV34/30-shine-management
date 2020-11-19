using Project_Final.entity;
using Project_Final.model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_Final
{
    public partial class Order : System.Web.UI.Page
    {
        ItemDAO data = new ItemDAO();
        public Card card;
        public List<Items> items;
        public int count;
        public int result;
        public int shipMoney;
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                id = Convert.ToInt32(Request.QueryString["productID"]);
                items = data.getOneItem(id);

            }

        }

        protected void btnAddtoOrder_Click(object sender, EventArgs e)
        {
            Account ac = (Account)Session["account"];

            string txtName = txtFullName.Text;
            string Email = txtEmails.Text;
            string Phone = txtPhones.Text;
            string Address = txtEmails.Text;
            DateTime date = Convert.ToDateTime(txtDates.Text);
            int id = Convert.ToInt32(Request.QueryString["productID"]);
            Orders orders = new Orders();
            orders.UserName = ac.UserName;
            orders.Name = txtName;
            orders.Email = Email;
            orders.Phone = Phone;
            orders.Address = Address;
            orders.Date = date;
            orders.Total = result;
            orders.idVatPham = id;

            HistoryDAO historyDAO = new HistoryDAO();

         bool check =  historyDAO.Insert(orders);
            if (check)
            {
                Response.Redirect("ShowHistory.aspx");
            }
            else
            {
                this.Label1.Text = "InsertFailer";
            }
        }
    }
}