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
    public partial class modifyemptravelpayment : System.Web.UI.Page
    {
        string strconn = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        DateTime modifieddatetime = DateTime.Now;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void paymentidbutton_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(strconn);
                conn.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM travelpayment_tbl where paymentid='" + paymentid.Text + "'", conn);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        
                        empname.Text = dr[2].ToString();
                        amount.Text = dr[3].ToString();
                        paiddate.Text = dr[4].ToString();
                        remarks.Text = dr[5].ToString();
                    }
                }
                else
                {
                    Response.Write("<Script>alert('Please Enter Correct Payment ID ')</script>");

                    paymentid.Text = "";
                }
            }
            catch (Exception)
            {
                Response.Write("<Script>alert('Please Enter Correct Payment ID ')</script>");

                paymentid.Text = "";
            }
        }

        protected void travelpayment_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strconn);
                con.Open();
                SqlCommand com = new SqlCommand("UPDATE travelpayment_tbl SET isactive=@isactive,empname=@empname,amount=@amount,paiddate=@paiddate,remarks=@remarks,modifiedby=@modifiedby,modifieddatetime=@modifieddatetime WHERE paymentid='" + paymentid.Text.Trim() + "'", con);

                com.Parameters.AddWithValue("@isactive", "1");
                com.Parameters.AddWithValue("@empname", empname.Text.Trim());
                com.Parameters.AddWithValue("@amount", amount.Text.Trim());
                com.Parameters.AddWithValue("@paiddate", paiddate.Text.Trim());
                com.Parameters.AddWithValue("@remarks", remarks.Text.Trim());
                com.Parameters.AddWithValue("@modifiedby", Session["fullname"].ToString());
                com.Parameters.AddWithValue("@modifieddatetime", modifieddatetime.ToString());

                com.ExecuteNonQuery();
                con.Close();
                Response.Write("<Script>alert('Travel Payment Modified Successfully')</script>");


                empname.Text = "";
                amount.Text = "";
                paiddate.Text = "";
                remarks.Text = "";
            }
            catch (Exception)
            {
                Response.Write("<Script>alert('Travel Payment Not Modified')</script>");
            }
        }
    }
}