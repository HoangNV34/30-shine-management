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
    public partial class GioiThieu : System.Web.UI.Page
    {
        NewsDAO data = new NewsDAO();
        ServiceDAO serviceDAO = new ServiceDAO();
        ServiceTypeDAO servicedao = new ServiceTypeDAO();
        public List<News> listNews;
        public List<ServiceType> listSevice;
        public List<ServiceType> listSevicebyID;
        public List<Service> arr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                listNews = data.getAllNews();
                listSevice = servicedao.getAll();
                // listSevicebyID = servicedao.getAllbyID();
                int id = Convert.ToInt32(Request.QueryString["id"]);
                arr = serviceDAO.getAllNews(id);
            }
        }
    }
}