using model.Project_Final;
using Project_Final.entity;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Project_Final.model
{
    public class ItemTypeDAO : DAL
    {
        public List<ItemsType>  getAllItem()
        {

            List<ItemsType> list = new List<ItemsType>();
            string sql = "SELECT [idLoaiVP]  ,[nameLoaiVP] ,[url]  ,[id_VP] FROM [dbo].[LoaiVatPham]";
            SqlCommand command = new SqlCommand(sql, connection);
            command.Connection.Open();
            SqlDataReader data = command.ExecuteReader();
            if (data.HasRows)
            {
                while (data.Read())
                {
                    ItemsType it = new ItemsType();
                    it.ID = Convert.ToInt32(data["idLoaiVP"].ToString());
                    it.Name = data["nameLoaiVP"].ToString();
                    it.Url = data["url"].ToString();
                    it.id_VP = Convert.ToInt32(data["id_VP"].ToString());
                    list.Add(it);
                }
            }
            command.Connection.Close();

            return list;
        }
        public List<Items> getAllItembyID(int id)
        {
            List<Items> list = new List<Items>();
            string sql = "select a.idVatPham,b.nameVP,b.url,b.price,b.priceDisCount,b.ThuongHieu,b.Content1,b.DesCription,b.Quantity from SubTitle as a inner join VatPham as b on a.idVatPham = b.idVP where a.idLoaiVatPham = @id";
            SqlCommand command = new SqlCommand(sql, connection);
            command.Parameters.Add(new SqlParameter("@id", id));
            command.Connection.Open();
            SqlDataReader data = command.ExecuteReader();
            if (data.HasRows)
            {
                while(data.Read())
                {
                    Items it = new Items();
                    it.ID = Convert.ToInt32(data["idVatPham"].ToString());
                    it.Name = data["nameVP"].ToString();
                    it.Url = data["url"].ToString();
                    it.Price = float.Parse(data["price"].ToString());
                    it.PriceDiscount = float.Parse(data["priceDisCount"].ToString());
                    it.ThuongHieu = data["ThuongHieu"].ToString();
                    it.Content1 = data["Content1"].ToString();
                    it.DesCription = data["DesCription"].ToString();
                    it.Quantity = Convert.ToInt32(data["Quantity"].ToString());
                    list.Add(it);
                }
            }
            command.Connection.Close();
            return list;
        }

       
    }
}