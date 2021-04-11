using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication1
{
    public class customer
    {
        SqlCommand cmd = new SqlCommand();
        GlobalConnection gc = new GlobalConnection();

        public void AddCustomer(string Name, string Address, string Phone, string Email, string Mem_type)
        {
            SqlCommand cmd = new SqlCommand("Insert into Customers(Customer_Name,Customer_address,Contact_Number,Email,Member_Type) values (@Customer_Name,@Customer_address,@Contact_Number,@Email,@Member_Type)", gc.cn);
            cmd.Parameters.AddWithValue("@Customer_Name", Name);
            cmd.Parameters.AddWithValue("@Customer_address", Address);
            cmd.Parameters.AddWithValue("@Contact_Number", Phone);
            cmd.Parameters.AddWithValue("@Email", Email);
            cmd.Parameters.AddWithValue("@Member_Type", Mem_type);
            //cmd.Parameters.AddWithValue("@username", Mem_type);
            cmd.ExecuteNonQuery();
            //con.Close();
            gc.cn.Close();
            // lbl_Msg.Text = "Data Inserted";        
        }
    }
}