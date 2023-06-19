using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace maxdth
{
    public partial class customernumbers : System.Web.UI.Page
    {
        string strconn = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        DateTime addeddatetime = DateTime.Now;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(strconn);
                conn.Open();
                string sql = "select * from custphnumbers where customerphone=@customerphone";
                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@customerphone", Convert.ToInt64(contactnumber.Text));
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.HasRows)
                {
                    Response.Write("<Script>alert('This phone number is already taken , please enter another phone number')</script>");
                    conn.Close();
                }
                else
                {
                    SqlConnection ncon = new SqlConnection(strconn);
                    ncon.Open();
                    string nsql = "insert into custphnumbers(customerphone, ispaid, isconverted, addedby, addeddatetime) values(@customerphone, @ispaid, @isconverted, @addedby, @addeddatetime)";
                    SqlCommand ncmd=new SqlCommand(nsql, ncon);
                    ncmd.CommandType = CommandType.Text;
                    ncmd.Parameters.AddWithValue("@customerphone", Convert.ToInt64(contactnumber.Text.Trim()));
                    ncmd.Parameters.AddWithValue("@ispaid", "0");
                    ncmd.Parameters.AddWithValue("@isconverted", "0");
                    ncmd.Parameters.AddWithValue("@addedby", Session["fullname"].ToString());
                    ncmd.Parameters.AddWithValue("@addeddatetime", addeddatetime);
                    ncmd.ExecuteNonQuery();
                    ncon.Close();

                    contactnumber.Text = "";
                    Response.Write("<Script>alert('Phone number is successfully added')</script>");
                }
            }
            catch (Exception)
            {
                Response.Write("<Script>alert('Phone number is not added , please try again')</script>");
            }     
        }
    }
}