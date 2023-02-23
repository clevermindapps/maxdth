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
    public partial class dealeradd : System.Web.UI.Page
    {
        string strconn = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        DateTime addeddatetime = DateTime.Now;
        DateTime modifieddatetime = DateTime.Now;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void adddealerbutton_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strconn);
                con.Open();
                SqlCommand cmd = new SqlCommand("INSERT INTO dealer_tbl(isactive,dealerid,dealername,dealerphone,dealerarea,remarks,addedby,addeddatetime,modifiedby,modifieddatetime) values(@isactive,@dealerid,@dealername,@dealerphone,@dealerarea,@remarks,@addedby,@addeddatetime,@modifiedby,@modifieddatetime)", con);


                cmd.Parameters.AddWithValue("@isactive", "1");
                cmd.Parameters.AddWithValue("@dealerid", dealerid.Text.Trim());
                cmd.Parameters.AddWithValue("@dealername", dealername.Text.Trim());
                cmd.Parameters.AddWithValue("@dealerphone", dealerphone.Text.Trim());
                cmd.Parameters.AddWithValue("@dealerarea", dealerarea.Text.Trim());
                cmd.Parameters.AddWithValue("@remarks", remarks.Text.Trim());
                cmd.Parameters.AddWithValue("@addedby", Session["fullname"].ToString());
                cmd.Parameters.AddWithValue("@addeddatetime", addeddatetime.ToString());
                cmd.Parameters.AddWithValue("@modifiedby", Session["fullname"].ToString());
                cmd.Parameters.AddWithValue("@modifieddatetime", modifieddatetime.ToString());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<Script>alert('Dealer Added Successfully')</script>");

                dealerid.Text = "";
                dealername.Text = "";
                dealerphone.Text = "";
                dealerarea.Text = "";
                remarks.Text = "";
            }
            catch (Exception)
            {
                Response.Write("<Script>alert('Dealer Not Added')</script>");
            }
        }
    }
}