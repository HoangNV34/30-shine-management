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
    public partial class Register : System.Web.UI.Page
    {
        LoginDAO loginDAO = new LoginDAO();
        public string name = "Hoang";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Account account = new Account();
            account.UserName = txtuserName.Text;
            account.Password = txtPassword.Text;
            account.Name = txtNames.Text;
            account.Email = txtEmails.Text;
            account.Address = txtAddress.Text;
            account.Phone = txtPhones.Text;
            bool gender;
            
            if (rbMale.Checked)
            {
                gender = true;
            }
            else
            {
                gender = false;
            }
            account.Gender = gender;
           bool check =  loginDAO.Insert(account);
            if (check)
            {
                Response.Redirect("Login.aspx");

            }
            else
            {
                Label1.Text = "Login failer";
            }

        }
       
    }
}