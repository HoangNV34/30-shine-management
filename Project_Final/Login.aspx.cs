using model.Project_Final;
using Project_Final.entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_Final
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //string username = txtusername.text;
            //string password = txtpassword.text;

           // LoginDAO data = new LoginDAO();
           //Account ac =  data.GetAccounts(username, password);
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string userName = txtUserName.Text;
            string password = txtPassword.Text;
            LoginDAO data = new LoginDAO();
            Account ac = data.GetAccounts(userName, password);
            if (ac != null)
            {
                Session["account"] = ac;
                Response.Redirect("Home.aspx");

            }
        }
    }
}