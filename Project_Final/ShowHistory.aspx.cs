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
    public partial class WebForm1 : System.Web.UI.Page
    {
        HistoryDAO historyDAO = new HistoryDAO();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Account ac = (Account)Session["account"];
                this.GridView1.DataSource = historyDAO.GetAlllistOrder(ac.UserName);
                this.GridView1.DataBind();

            }
        }
    }
}