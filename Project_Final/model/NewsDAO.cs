using model.Project_Final;
using Project_Final.entity;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Project_Final.model
{
    public class NewsDAO : DAL
    {
        public List<News> getAllNews()
        {
            List<News> list = new List<News>();
            string sql = "SELECT [Id] ,[Content] ,[Title] ,[Url] FROM [dbo].[News]";
            SqlCommand command = new SqlCommand(sql, connection);
            command.Connection.Open();
            SqlDataReader data = command.ExecuteReader();
            if (data.HasRows)
            {
                while (data.Read())
                {
                    News nt = new News();
                    nt.ID = Convert.ToInt32(data["Id"].ToString());
                    nt.Content = data["Content"].ToString();
                    nt.Title = data["Title"].ToString();
                    nt.Url = data["Url"].ToString();
                    list.Add(nt);
                }
            }
            command.Connection.Close();
            return list;
        }
    }
}