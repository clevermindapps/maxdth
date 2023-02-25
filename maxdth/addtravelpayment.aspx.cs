using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace maxdth
{
    public partial class addtravelpayment : System.Web.UI.Page
    {
        string strconn = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        DateTime addeddatetime = DateTime.Now;
        DateTime modifieddatetime = DateTime.Now;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addtravelpaymentbutton_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strconn);
                con.Open();
                SqlCommand cmd = new SqlCommand("INSERT INTO travelpayment_tbl(isactive,empname,amount,paiddate,remarks,addedby,addeddatetime,modifiedby,modifieddatetime) values(@isactive,@empname,@amount,@paiddate,@remarks,@addedby,@addeddatetime,@modifiedby,@modifieddatetime)", con);

                cmd.Parameters.AddWithValue("@isactive", "1");
                cmd.Parameters.AddWithValue("@empname", employeename.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@amount", travelamount.Text.Trim());
                cmd.Parameters.AddWithValue("@paiddate", paymentdate.Text.Trim());
                cmd.Parameters.AddWithValue("@remarks", remarks.Text.Trim());
                cmd.Parameters.AddWithValue("@addedby", Session["fullname"].ToString());
                cmd.Parameters.AddWithValue("@addeddatetime", addeddatetime.ToString());
                cmd.Parameters.AddWithValue("@modifiedby", Session["fullname"].ToString());
                cmd.Parameters.AddWithValue("@modifieddatetime", modifieddatetime.ToString());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<Script>alert('Travel Payment Added Successfully')</script>");

                employeename.ClearSelection();
                travelamount.Text = "";
                paymentdate.Text = "";
                remarks.Text = "";
                
            }
            catch (Exception)
            {
                Response.Write("<Script>alert('Travel Payment Not Added')</script>");
            }
        }
    }
}