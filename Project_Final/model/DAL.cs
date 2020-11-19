using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;

namespace model.Project_Final
{
    public class DAL
    {
        protected SqlConnection connection; 

        public DAL()
        {
            this.connection =  new SqlConnection(WebConfigurationManager.ConnectionStrings["strCon"].ToString());
            
        }


    }
}