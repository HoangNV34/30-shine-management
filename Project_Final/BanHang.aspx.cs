using Project_Final.entity;
using Project_Final.model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_Final
{
    public partial class BanHang : System.Web.UI.Page
    {
        ItemTypeDAO data = new ItemTypeDAO();
        public List<ItemsType> list;
        public List<Items> listcategory;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                list = data.getAllItem();

                int id = Convert.ToInt32(Request.QueryString["id"]);

                listcategory = data.getAllItembyID(id);
                //this.GridView1.DataSource = data.getAllItembyID(id);
                //this.GridView1.DataBind();

            }
        }
    }
}