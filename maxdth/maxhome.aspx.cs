using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.SessionState;

namespace maxdth
{
    public partial class maxhome : System.Web.UI.Page
    {
        string strconn = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        string yyyymmdd = DateTime.Now.Year.ToString() + DateTime.Now.ToString("MM") + DateTime.Now.ToString("dd");
        string monthcode = DateTime.Now.Year.ToString() + DateTime.Now.ToString("MM");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addtask_Click(object sender, EventArgs e)
        {
            Response.Redirect("addtask.aspx");
        }

        protected void pendingtasks_Click(object sender, EventArgs e)
        {
            Response.Redirect("pendingtasks.aspx");
        }

        protected void modifytask_Click(object sender, EventArgs e)
        {
            Response.Redirect("modifytask.aspx");
        }

        protected void attendance_Click(object sender, EventArgs e)
        {
            try
            {
                string attendanceid = Session["userid"].ToString() + yyyymmdd;
                SqlConnection con = new SqlConnection(strconn);
                con.Open();
                SqlCommand cmd = new SqlCommand("INSERT INTO attendance_tbl(isactive,attendanceid,monthcode,userfullname,fulldayorhalfday,isonleave) values(@isactive,@attendanceid,@monthcode,@userfullname,@fulldayorhalfday,@isonleave)", con);

                cmd.Parameters.AddWithValue("@isactive", "1");
                cmd.Parameters.AddWithValue("@attendanceid", attendanceid);
                cmd.Parameters.AddWithValue("@monthcode", Convert.ToInt32(monthcode));
                cmd.Parameters.AddWithValue("@userfullname", Session["fullname"].ToString());
                cmd.Parameters.AddWithValue("@fulldayorhalfday", "1");
                cmd.Parameters.AddWithValue("@isonleave", "0");

                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<Script>alert('Attendence Submited Successfully')</script>");

            }
            catch (Exception)
            {
                Response.Write("<Script>alert('Attendence Already Submited')</script>");
            }

        }

        protected void empattendancereport_Click(object sender, EventArgs e)
        {
            Response.Redirect("empattendancereport.aspx");
        }

        protected void addtrip_Click(object sender, EventArgs e)
        {
            Response.Redirect("addtrip.aspx");
        }

        protected void emptravelreport_Click(object sender, EventArgs e)
        {
            Response.Redirect("emptravelreport.aspx");
        }

        protected void emptravelpayment_Click(object sender, EventArgs e)
        {
            Response.Redirect("emptravelpayment.aspx");
        }

        protected void rechargeentry_Click(object sender, EventArgs e)
        {
            Response.Redirect("duereportentry.aspx");
        }

        protected void rechargeduereport_Click(object sender, EventArgs e)
        {
            Response.Redirect("rechargeduereport.aspx");
        }

        protected void modifyrecharge_Click(object sender, EventArgs e)
        {
            Response.Redirect("duereportmodify.aspx");
        }
    }
}