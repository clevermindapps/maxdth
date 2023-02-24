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
    public partial class dealermodify : System.Web.UI.Page
    {
        string strconn = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        DateTime modifieddatetime = DateTime.Now;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void dealeridbutton_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(strconn);
                conn.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM dealer_tbl where dealerid='" + dealerid.Text + "'", conn);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        isactive.SelectedValue = dr[0].ToString();
                        dealername.Text = dr[2].ToString();
                        dealerphone.Text = dr[3].ToString();
                        dealerarea.Text = dr[4].ToString();
                        remarks.Text = dr[5].ToString();
                    }
                }
                else
                {
                    Response.Write("<Script>alert('Please Enter Correct Dealer ID ')</script>");

                    dealerid.Text = "";
                }
            }
            catch (Exception)
            {
                Response.Write("<Script>alert('Please Enter Correct Dealer ID ')</script>");

                dealerid.Text = "";
            }
        }

        protected void modifydealerbutton_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strconn);
                con.Open();
                SqlCommand com = new SqlCommand("UPDATE dealer_tbl SET isactive=@isactive,dealername=@dealername,dealerphone=@dealerphone,dealerarea=@dealerarea,remarks=@remarks,modifiedby=@modifiedby,modifieddatetime=@modifieddatetime WHERE dealerid='" + dealerid.Text.Trim() + "'", con);

                com.Parameters.AddWithValue("@isactive", isactive.SelectedItem.Value);
                com.Parameters.AddWithValue("@dealername", dealername.Text.Trim());
                com.Parameters.AddWithValue("@dealerphone", dealerphone.Text.Trim());
                com.Parameters.AddWithValue("@dealerarea", dealerarea.Text.Trim());
                com.Parameters.AddWithValue("@remarks", remarks.Text.Trim());
                com.Parameters.AddWithValue("@modifiedby", Session["fullname"].ToString());
                com.Parameters.AddWithValue("@modifieddatetime", modifieddatetime.ToString());

                com.ExecuteNonQuery();
                con.Close();
                Response.Write("<Script>alert('Dealer Modified Successfully')</script>");

                isactive.ClearSelection();
                dealerid.Text = "";
                dealername.Text = "";
                dealerphone.Text = "";
                dealerarea.Text = "";
                remarks.Text = "";
            }
            catch (Exception)
            {
                Response.Write("<Script>alert('Dealer Not Modified')</script>");
            }
        }
    }
}