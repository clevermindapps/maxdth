using Microsoft.Ajax.Utilities;
using Newtonsoft.Json.Linq;
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
    public partial class addtrip : System.Web.UI.Page
    {
        string strconn = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        int kms, amount;
        DateTime addeddatetime = DateTime.Now;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addtripbutton_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(strconn);
                conn.Open();
                SqlCommand cmd = new SqlCommand("INSERT INTO traveltrip_tbl(isactive,travelstatus,traveltype,fromtown,totown,noofkms,amount,remarks,addedby,addeddatetime) values(@isactive,@travelstatus,@traveltype,@fromtown,@totown,@noofkms,@amount,@remarks,@addedby,@addeddatetime)", conn);


                cmd.Parameters.AddWithValue("@isactive", "1");
                cmd.Parameters.AddWithValue("@travelstatus", "Pending");
                cmd.Parameters.AddWithValue("@traveltype", traveltype.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@fromtown", fromtown.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@totown", totown.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@noofkms", Convert.ToInt32(noofkms.Text.Trim()));
                cmd.Parameters.AddWithValue("@amount", Convert.ToInt32(travelamount.Text.Trim()));
                cmd.Parameters.AddWithValue("@remarks", remarks.Text.Trim());
                cmd.Parameters.AddWithValue("@addedby", Session["fullname"].ToString());
                cmd.Parameters.AddWithValue("@addeddatetime", addeddatetime.ToString());
                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Write("<Script>alert('Travel Trip added Successfully')</script>");

                traveltype.ClearSelection();
                fromtown.ClearSelection();
                totown.ClearSelection();
                noofkms.Text = "";
                travelamount.Text = "";
                remarks.Text = "";
            }
            catch (Exception)
            {
                Response.Write("<Script>alert('Travel Trip Not Added')</script>");

            }
        }

        protected void noofkms_Load(object sender, EventArgs e)
        {
            Int32.TryParse(noofkms.Text, out kms);
            amount = kms * 4;
            travelamount.Text = amount.ToString();
        }
    }
}