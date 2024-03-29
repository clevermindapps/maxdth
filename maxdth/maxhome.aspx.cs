﻿using System;
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
        string totalpendingtasks = "SELECT count(taskname) FROM task_tbl WHERE taskstatus!='Completed' AND isactive='1'";

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["usertype"].Equals("employee"))
                {
                    connectionmonthlyreport.Visible = false;
                    overallgraph.Visible = false;
                    adminempattendancereport.Visible = false;
                    adminmodifyattendance.Visible = false;
                    adminviewtravel.Visible = false;
                    adminmodifytravel.Visible = false;
                    addtravelpayment.Visible = false;
                    viewtravelpayment.Visible = false;
                    modifyemptravelpaymentid.Visible = false;
                    adddealer.Visible = false;
                    modifydealer.Visible = false;
                    viewdealers.Visible = false;
                }
            }
            catch(Exception ex)
            {
                Response.Write(ex.Message);
            }

            // Number of Pending Tasks
            SqlConnection connc = new SqlConnection(strconn);
            connc.Open();
            SqlCommand cmdnc = new SqlCommand(totalpendingtasks, connc);
            SqlDataReader drpt = cmdnc.ExecuteReader();
            if (drpt.Read())
            {
                noofpendingtasks.Text = drpt[0].ToString();
            }
            connc.Close();
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

        protected void connectionmonthlyreport_Click(object sender, EventArgs e)
        {
            Response.Redirect("connectionmonthlyreport.aspx");
        }

        protected void overallgraph_Click(object sender, EventArgs e)
        {
            Response.Redirect("overallgraph.aspx");
        }

        protected void adminempattendancereport_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminempattendancereport.aspx");
        }

        protected void adminmodifyattendance_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminempattendancemodify.aspx");
        }

        protected void adminviewtravel_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminviewtravel.aspx");
        }

        protected void adminmodifytravel_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminmodifytravel.aspx");
        }

        protected void addtravelpayment_Click(object sender, EventArgs e)
        {
            Response.Redirect("addtravelpayment.aspx");
        }

        protected void adddealer_Click(object sender, EventArgs e)
        {
            Response.Redirect("dealeradd.aspx");
        }

        protected void modifydealer_Click(object sender, EventArgs e)
        {
            Response.Redirect("dealermodify.aspx");
        }

        protected void viewdealers_Click(object sender, EventArgs e)
        {
            Response.Redirect("dealerslist.aspx");
        }

        protected void modifyemptravelpayment_Click(object sender, EventArgs e)
        {
            Response.Redirect("modifyemptravelpayment.aspx");
        }

        protected void viewtravelpayment_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminviewtravelpayment.aspx");
        }

        protected void newconnectionlink_Click(object sender, EventArgs e)
        {
            Response.Redirect("newconnectionentry.aspx");
        }
    }
}