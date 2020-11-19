using model.Project_Final;
using Project_Final.entity;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Project_Final.model
{
    public class ServiceDAO : DAL
    {
        public List<Service> getAllNews(int id)
        {
            List<Service> list = new List<Service>();
            string sql = "select b.idDV,b.Url,b.Price from ConnectDichVu as a inner join DichVu as b on a.idDichVu = b.idDV where a.idLoaiDv = @id";
            
            SqlCommand command = new SqlCommand(sql, connection);
            command.Parameters.Add(new SqlParameter("@id", id));
            command.Connection.Open();
            SqlDataReader data = command.ExecuteReader();
            if (data.HasRows)
            {
                while (data.Read())
                {
                    Service nt = new Service();
                    nt.ID = Convert.ToInt32(data["idDV"].ToString());
                    nt.Url = data["Url"].ToString();
                    nt.Price = float.Parse(data["Price"].ToString());
                    list.Add(nt);
                }
            }
            command.Connection.Close();
            return list;
        }
    }
}
