using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace maxdth
{
    public partial class duereportmodify : System.Web.UI.Page
    {
        string strconn = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        Int64 subid;
        DateTime modifieddatetime = DateTime.Now;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void modifyduereportbutton_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strconn);
                con.Open();
                SqlCommand com = new SqlCommand("UPDATE duereport_tbl SET isactive=@isactive,dthoperator=@dthoperator,custname=@custname,custphone=@custphone,custarea=@custarea,monthlyamount=@monthlyamount,duedate=@duedate,remarks=@remarks,modifiedby=@modifiedby,modifieddatetime=@modifieddatetime WHERE subscriberid=" + Convert.ToInt64(subscriberid.Text.Trim()), con);


                com.Parameters.AddWithValue("@isactive", isactive.SelectedItem.Value);
                com.Parameters.AddWithValue("@dthoperator", dthoperator.SelectedItem.Value);
                com.Parameters.AddWithValue("@custname", customername.Text.Trim());
                com.Parameters.AddWithValue("@custphone", customerphone.Text.Trim());
                com.Parameters.AddWithValue("@custarea", customerarea.Text.Trim());
                com.Parameters.AddWithValue("@monthlyamount", Convert.ToInt32(monthlyamount.Text.Trim()));
                com.Parameters.AddWithValue("@duedate", duedate.Text);
                com.Parameters.AddWithValue("@remarks", remarks.Text.Trim());
                com.Parameters.AddWithValue("@modifiedby", Session["fullname"].ToString());
                com.Parameters.AddWithValue("@modifieddatetime", modifieddatetime.ToString());
                com.ExecuteNonQuery();
                con.Close();
                Response.Write("<Script>alert('Details Modified Successfully')</script>");

                isactive.ClearSelection();
                dthoperator.ClearSelection();
                customername.Text = "";
                customerphone.Text = "";
                customerarea.Text = "";
                monthlyamount.Text = "";
                duedate.Text = "";
                remarks.Text = "";
            }
            catch (Exception)
            {
                Response.Write("<Script>alert('Task Not Modified')</script>");
            }
        }

        protected void modifybutton_Click(object sender, EventArgs e)
        {
            try
            {
                subid = Convert.ToInt64 (subscriberid.Text.Trim());
                if (subid > 0)
                {
                    SqlConnection conn = new SqlConnection(strconn);
                    conn.Open();
                    SqlCommand cmd = new SqlCommand("SELECT * from duereport_tbl WHERE subscriberid=" + Int64.Parse(subscriberid.Text), conn);
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            isactive.SelectedValue = dr[0].ToString();
                            dthoperator.SelectedValue = dr[2].ToString();
                            customername.Text = dr[3].ToString();
                            customerphone.Text = dr[4].ToString();
                            customerarea.Text = dr[5].ToString();
                            monthlyamount.Text = dr[6].ToString();
                            duedate.Text = dr[7].ToString();
                            remarks.Text = dr[8].ToString();
                        }
                    }
                    else
                    {
                        Response.Write("<Script>alert('Please Enter Correct Subscriber ID ')</script>");
                    }

                }
            }
            catch (Exception)
            {
                Response.Write("<Script>alert('Please Enter Correct Subscriber ID ')</script>");
            }
        }
    }
}