using model.Project_Final;
using Project_Final.entity;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Project_Final.model
{
    public class ServiceTypeDAO : DAL
    {
        public List<ServiceType> getAll()
        {
            List<ServiceType> list = new List<ServiceType>();
            string sql = "SELECT [idLoaiDV] ,[nameLoaiDV] ,[money],[url] ,[idDV]  FROM [dbo].[LoaiDV]";
            SqlCommand command = new SqlCommand(sql, connection);
            command.Connection.Open();
            SqlDataReader data = command.ExecuteReader();
            if (data.HasRows)
            {
                while (data.Read())
                {
                    ServiceType st = new ServiceType();
                    st.ID = Convert.ToInt32(data["idLoaiDV"].ToString());
                    st.Name = data["nameLoaiDV"].ToString();
                    st.Money = float.Parse(data["money"].ToString());
                    st.Url = data["url"].ToString();
                    st.IDService = Convert.ToInt32(data["idDV"].ToString());
                    list.Add(st);
                }
            }
            command.Connection.Close();
            return list;
        }
        public List<ServiceType> getAllbyID(int id)
        {
            List<ServiceType> list = new List<ServiceType>();
            string sql = "SELECT [idLoaiDV] ,[nameLoaiDV] ,[money],[url] ,[idDV]  FROM [dbo].[LoaiDV] where idLoaiDV = @id";
            SqlCommand command = new SqlCommand(sql, connection);
            command.Parameters.Add(new SqlParameter("@id", id));
            command.Connection.Open();
            SqlDataReader data = command.ExecuteReader();
            if (data.HasRows)
            {
                while (data.Read())
                {
                    ServiceType st = new ServiceType();
                    st.ID = Convert.ToInt32(data["idLoaiDV"].ToString());
                    st.Name = data["nameLoaiDV"].ToString();
                    st.Money = float.Parse(data["money"].ToString());
                    st.Url = data["url"].ToString();
                    st.IDService = Convert.ToInt32(data["idDV"].ToString());
                    list.Add(st);
                }
            }
            command.Connection.Close();
            return list;
        }
    }
}