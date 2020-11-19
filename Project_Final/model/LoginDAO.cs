using Project_Final.entity;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace model.Project_Final
{
    public class LoginDAO : DAL
    {
        public Account GetAccounts(string userName,string password)
        {
            string sql = "SELECT [username] ,[password]  FROM [dbo].[Account]  where username= @username and password=@password";
            SqlCommand command = new SqlCommand(sql, connection);
            command.Parameters.Add(new SqlParameter("@username", userName));
            command.Parameters.Add(new SqlParameter("@password", password));
            command.Connection.Open();
            SqlDataReader data = command.ExecuteReader();
            if (data.HasRows)
            {
                while(data.Read())
                {
                    Account ac = new Account();
                    ac.UserName = data["username"].ToString();
                    ac.Password = data["password"].ToString();
                    return ac;                 
                }
            }
            command.Connection.Close();
            return null;
        }
        public bool Insert(Account ac)
        {
            string sql = "INSERT INTO [dbo].[Account] ([username] ,[password] ,[name] ,[dob] ,[gender] ,[address] ,[email],[phone]) VALUES (@username ,@password  ,@name, @dob ,@gender ,@address ,@email,@phone)";
            SqlCommand command = new SqlCommand(sql, connection);
            command.Parameters.Add(new SqlParameter("@username", ac.UserName));
            command.Parameters.Add(new SqlParameter("@password", ac.Password));
            command.Parameters.Add(new SqlParameter("@name", ac.Name));
            command.Parameters.Add(new SqlParameter("@dob", DateTime.Now));
            command.Parameters.Add(new SqlParameter("@gender", ac.Gender));
            command.Parameters.Add(new SqlParameter("@address", ac.Address));
            command.Parameters.Add(new SqlParameter("@email", ac.Email));
            command.Parameters.Add(new SqlParameter("@phone", ac.Phone));

            command.Connection.Open();
            int count = command.ExecuteNonQuery();
            command.Connection.Close();

            return count != 0;
        }
    }
}