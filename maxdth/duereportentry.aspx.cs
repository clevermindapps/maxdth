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
    public partial class duereportentry : System.Web.UI.Page
    {
        string strconn = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        DateTime addeddatetime = DateTime.Now;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void duereportentrybutton_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(strconn);
                conn.Open();
                SqlCommand cmd = new SqlCommand("INSERT INTO duereport_tbl(isactive,subscriberid,dthoperator,custname,custphone,custarea,monthlyamount,duedate,remarks,addedby,addeddatetime) values(@isactive,@subscriberid,@dthoperator,@custname,@custphone,@custarea,@monthlyamount,@duedate,@remarks,@addedby,@addeddatetime)", conn);


                cmd.Parameters.AddWithValue("@isactive", "1");
                cmd.Parameters.AddWithValue("@subscriberid", Convert.ToInt64(subscriberid.Text.Trim()));
                cmd.Parameters.AddWithValue("@dthoperator", dthoperator.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@custname", customername.Text.Trim());
                cmd.Parameters.AddWithValue("@custphone", customerphone.Text.Trim());
                cmd.Parameters.AddWithValue("@custarea", customerarea.Text.Trim());
                cmd.Parameters.AddWithValue("@monthlyamount", Convert.ToInt16(rechargeamount.Text.Trim()));
                cmd.Parameters.AddWithValue("@duedate", Convert.ToDateTime(duedate.Text.Trim()));
                cmd.Parameters.AddWithValue("@remarks", remarks.Text.Trim());
                cmd.Parameters.AddWithValue("@addedby", Session["fullname"].ToString());
                cmd.Parameters.AddWithValue("@addeddatetime", addeddatetime.ToString());


                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Write("<Script>alert('Details added Successfully')</script>");

                subscriberid.Text = "";
                dthoperator.ClearSelection();
                customername.Text = "";
                customerphone.Text = "";
                customerarea.Text = "";
                rechargeamount.Text = "";
                duedate.Text = "";
                remarks.Text = "";
            }
            catch (Exception)
            {
                Response.Write("<Script>alert('Details Not Added')</script>");

            }
        }
    }
}