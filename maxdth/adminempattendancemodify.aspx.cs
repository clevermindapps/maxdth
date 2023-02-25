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
    public partial class adminempattendancemodify : System.Web.UI.Page
    {
        string strconn = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        DateTime modifieddatetime = DateTime.Now;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void attendanceidbutton_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(strconn);
                conn.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM attendance_tbl where attendanceid='" + attendanceid.Text + "'", conn);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        isactive.SelectedValue = dr[0].ToString();
                        monthcode.Text = dr[2].ToString();
                        empfullname.Text = dr[3].ToString();
                        dateandtime.Text = dr[4].ToString();
                        fulldayorhalfday.Text = dr[5].ToString();
                        isonleave.Text = dr[6].ToString();
                        remarks.Text = dr[7].ToString();
                    }
                }
                else
                {
                    Response.Write("<Script>alert('Please Enter Correct Attendence ID ')</script>");

                    attendanceid.Text = "";
                }
            }
            catch (Exception)
            {
                Response.Write("<Script>alert('Please Enter Correct Attendence ID ')</script>");

                attendanceid.Text = "";
            }

        }

        protected void modifyattendancebutton_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strconn);
                con.Open();
                SqlCommand com = new SqlCommand("UPDATE attendance_tbl SET isactive=@isactive,monthcode=@monthcode,userfullname=@userfullname,datetime=@datetime,fulldayorhalfday=@fulldayorhalfday,isonleave=@isonleave,remarks=@remarks,modifiedby=@modifiedby,modifieddatetime=@modifieddatetime WHERE attendanceid='" + attendanceid.Text.Trim() + "'", con);

                com.Parameters.AddWithValue("@isactive", isactive.SelectedItem.Value);
                com.Parameters.AddWithValue("@monthcode", monthcode.Text.Trim());
                com.Parameters.AddWithValue("@userfullname", empfullname.Text.Trim());
                com.Parameters.AddWithValue("@datetime", dateandtime.Text.Trim());
                com.Parameters.AddWithValue("@fulldayorhalfday", fulldayorhalfday.Text.Trim());
                com.Parameters.AddWithValue("@isonleave", isonleave.Text.Trim());
                com.Parameters.AddWithValue("@remarks", remarks.Text.Trim());
                com.Parameters.AddWithValue("@modifiedby", Session["fullname"].ToString());
                com.Parameters.AddWithValue("@modifieddatetime", modifieddatetime.ToString());

                com.ExecuteNonQuery();
                con.Close();
                Response.Write("<Script>alert('Attendance Modified Successfully')</script>");

                isactive.ClearSelection();
                attendanceid.Text = "";
                monthcode.Text = "";
                empfullname.Text = "";
                dateandtime.Text = "";
                fulldayorhalfday.Text = "";
                isonleave.Text = "";
                remarks.Text = "";
            }
            catch (Exception)
            {
                Response.Write("<Script>alert('Attendance Not Modified')</script>");
            }
        }
    }
}