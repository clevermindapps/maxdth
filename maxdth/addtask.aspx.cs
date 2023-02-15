﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace maxdth
{
    public partial class addtask : System.Web.UI.Page
    {
        string strconn = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        DateTime addeddatetime = DateTime.Now;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addtaskbutton_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(strconn);
                conn.Open();
                SqlCommand cmd = new SqlCommand("INSERT INTO task_tbl(isactive,taskstatus,taskname,custname,custphone,custarea,amount,remarks,addedby,addeddatetime) values(@isactive,@taskstatus,@taskname,@custname,@custphone,@custarea,@amount,@remarks,@addedby,@addeddatetime)", conn);


                cmd.Parameters.AddWithValue("@isactive", "1");
                cmd.Parameters.AddWithValue("@taskstatus", "Pending");
                cmd.Parameters.AddWithValue("@taskname", taskname.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@custname", customername.Text.Trim());
                cmd.Parameters.AddWithValue("@custphone", Convert.ToInt32(customerphone.Text.Trim()));
                cmd.Parameters.AddWithValue("@custarea", customerarea.Text.Trim());
                cmd.Parameters.AddWithValue("@amount", "0");
                cmd.Parameters.AddWithValue("@remarks", remarks.Text.Trim());
                cmd.Parameters.AddWithValue("@addedby", Session["fullname"].ToString());
                cmd.Parameters.AddWithValue("@addeddatetime", addeddatetime.ToString());
               

                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Write("<Script>alert('Task added Successfully')</script>");

                taskname.ClearSelection();
                customername.Text = "";
                customerphone.Text = "";
                customerarea.Text = "";
                remarks.Text = "";
            }
            catch(Exception ex)
            {
                Response.Write(ex.Message);

            }
           
        }
    }
}