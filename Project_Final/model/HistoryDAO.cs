using model.Project_Final;
using Project_Final.entity;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Project_Final.model
{
    public class HistoryDAO : DAL
    {
        public bool Insert(Orders orders)
        {
            string sql = "INSERT INTO [dbo].[Order] ([userName] ,[Name]  ,[Email]  ,[DiaChi] ,[Phone] ,[Date] ,[Total] ,[idVatPham]) VALUES  (@userName ,@Name ,@Email ,@DiaChi  ,@Phone ,@Date ,@Total  ,@idVatPham)";
            SqlCommand command = new SqlCommand(sql, connection);
            command.Parameters.Add(new SqlParameter("@userName",orders.UserName));
            command.Parameters.Add(new SqlParameter("@Name",orders.Name));
            command.Parameters.Add(new SqlParameter("@Email",orders.Email));
            command.Parameters.Add(new SqlParameter("@DiaChi",orders.Address));
            command.Parameters.Add(new SqlParameter("@Phone", orders.Phone));
            command.Parameters.Add(new SqlParameter("@Date",orders.Date));
            command.Parameters.Add(new SqlParameter("@Total",orders.Total));
            command.Parameters.Add(new SqlParameter("@idVatPham",orders.idVatPham));

            command.Connection.Open();
            int count = command.ExecuteNonQuery();
            command.Connection.Close();
            return count != 0;
        }

        public List<Orders> GetAlllistOrder(string userName)
        {
            List<Orders> list = new List<Orders>();
            string sql = "select a.userName,a.Name,a.Email,a.DiaChi,a.Phone,a.Date,a.Total,b.idVP from [Order] as a inner join  VatPham as  b on a.idVatPham = b.idVP where userName = @userName";
            SqlCommand command = new SqlCommand(sql, connection);
            command.Parameters.Add(new SqlParameter("@userName", userName));
            command.Connection.Open();
            SqlDataReader data = command.ExecuteReader();
            if (data.HasRows)
            {
                while (data.Read())
                {
                    Orders od = new Orders();
                    od.UserName = data["userName"].ToString();
                    od.Name = data["Name"].ToString();
                    od.Email = data["Email"].ToString(); ;
                    od.Address = data["DiaChi"].ToString();
                    od.Phone = data["Phone"].ToString();
                    od.Date = Convert.ToDateTime(data["Date"].ToString());
                    od.Total = Convert.ToInt32(data["Total"].ToString());
                    od.idVatPham = Convert.ToInt32(data["idVP"].ToString());
                    list.Add(od);
                }
            }
            command.Connection.Close();
            return list;

        }
    }
}