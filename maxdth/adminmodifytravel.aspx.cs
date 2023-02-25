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
    public partial class adminmodifytravel : System.Web.UI.Page
    {
        string strconn = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        int kms, finalamount;
        DateTime modifieddatetime = DateTime.Now;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void travelidbutton_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(strconn);
                conn.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM traveltrip_tbl where travelid='" + travelid.Text + "'", conn);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        isactive.SelectedValue = dr[0].ToString();
                        travelstatus.Text = dr[2].ToString();
                        traveltype.Text = dr[3].ToString();
                        fromtown.Text = dr[4].ToString();
                        totown.Text = dr[5].ToString();
                        noofkms.Text = dr[6].ToString();
                        amount.Text = dr[7].ToString();
                        remarks.Text = dr[8].ToString();
                    }
                }
                else
                {
                    Response.Write("<Script>alert('Please Enter Travelid ID ')</script>");

                    travelid.Text = "";
                }
            }
            catch (Exception)
            {
                Response.Write("<Script>alert('Please Enter Correct Travelid ID ')</script>");

                travelid.Text = "";
            }
        }

        protected void noofkms_Load(object sender, EventArgs e)
        {
            Int32.TryParse(noofkms.Text, out kms);
            finalamount = kms * 4;
            amount.Text = finalamount.ToString();
        }

        protected void modifytravelbutton_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strconn);
                con.Open();
                SqlCommand com = new SqlCommand("UPDATE traveltrip_tbl SET isactive=@isactive,travelstatus=@travelstatus,traveltype=@traveltype,fromtown=@fromtown,totown=@totown,noofkms=@noofkms,amount=@amount,remarks=@remarks,modifiedby=@modifiedby,modifieddatetime=@modifieddatetime WHERE travelid='" + travelid.Text.Trim() + "'", con);

                com.Parameters.AddWithValue("@isactive", isactive.SelectedItem.Value);
                com.Parameters.AddWithValue("@travelstatus", travelstatus.SelectedItem.Value);
                com.Parameters.AddWithValue("@traveltype", traveltype.SelectedItem.Value);
                com.Parameters.AddWithValue("@fromtown", fromtown.Text.Trim());
                com.Parameters.AddWithValue("@totown", totown.Text.Trim());
                com.Parameters.AddWithValue("@noofkms", noofkms.Text.Trim());
                com.Parameters.AddWithValue("@amount", amount.Text.Trim());
                com.Parameters.AddWithValue("@remarks", remarks.Text.Trim());
                com.Parameters.AddWithValue("@modifiedby", Session["fullname"].ToString());
                com.Parameters.AddWithValue("@modifieddatetime", modifieddatetime.ToString());

                com.ExecuteNonQuery();
                con.Close();
                Response.Write("<Script>alert('Travel Details Modified Successfully')</script>");

                isactive.ClearSelection();
                travelstatus.ClearSelection();
                traveltype.ClearSelection();
                travelid.Text = "";
                fromtown.Text = "";
                totown.Text = "";
                noofkms.Text = "";
                amount.Text = "";
                remarks.Text = "";
            }
            catch (Exception)
            {
                Response.Write("<Script>alert('Travel Details Not Modified')</script>");
            }
        }
    }
}