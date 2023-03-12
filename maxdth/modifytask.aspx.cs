using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace maxdth
{
    public partial class modifytask : System.Web.UI.Page
    {
        string strconn = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        int taskno;
        DateTime addeddatetime = DateTime.Now;
        DateTime modifieddatetime = DateTime.Now;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void taskidbutton_Click(object sender, EventArgs e)
        {
            try
            {
                taskno = Convert.ToInt32(taskid.Text);
                if (taskno > 9999)
                {
                    SqlConnection conn = new SqlConnection(strconn);
                    conn.Open();
                    SqlCommand cmd = new SqlCommand("SELECT * from task_tbl WHERE taskid=" + int.Parse(taskid.Text), conn);
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            isactive.SelectedValue = dr[0].ToString();
                            taskstatus.SelectedValue = dr[2].ToString();
                            taskname.SelectedValue = dr.GetValue(3).ToString();
                            subscriberid.Text = dr[4].ToString();
                            customername.Text = dr[5].ToString();
                            customerphone.Text = dr[6].ToString();
                            customerarea.Text = dr[7].ToString();
                            amount.Text = dr[8].ToString();
                            remarks.Text = dr[9].ToString();

                        }
                    }
                    else
                    {
                        Response.Write("<Script>alert('Please Enter Correct Task ID ')</script>");
                    } 
                       
                }
            }
            catch (Exception)
            {
                Response.Write("<Script>alert('Please Enter Correct Task ID ')</script>");
            }
        }

        protected void modifytaskbutton_Click(object sender, EventArgs e)
        {
            try
            {
                if(taskname.SelectedItem.Value == "Recharge")
                {
                    if(taskstatus.SelectedItem.Value == "Completed")
                    {
                        SqlConnection conn = new SqlConnection(strconn);
                        conn.Open();
                        SqlCommand cmd = new SqlCommand("select * from duereport_tbl where subscriberid=" + Convert.ToInt64(subscriberid.Text), conn);
                        SqlDataReader dr = cmd.ExecuteReader();
                        if (dr.HasRows)
                        {
                            conn.Close();
                            SqlConnection con = new SqlConnection(strconn);
                            con.Open();
                            SqlCommand com = new SqlCommand("UPDATE task_tbl SET isactive=@isactive,taskstatus=@taskstatus,taskname=@taskname,subscriberid=@subscriberid,custname=@custname,amount=@amount,custphone=@custphone,custarea=@custarea,remarks=@remarks,modifiedby=@modifiedby,modifieddatetime=@modifieddatetime WHERE taskid=" + Convert.ToInt32(taskid.Text.Trim()), con);

                            com.Parameters.AddWithValue("@isactive", isactive.SelectedItem.Value);
                            com.Parameters.AddWithValue("@taskstatus", taskstatus.SelectedItem.Value);
                            com.Parameters.AddWithValue("@taskname", taskname.SelectedItem.Value);
                            com.Parameters.AddWithValue("@subscriberid", Convert.ToInt64(subscriberid.Text.Trim()));
                            com.Parameters.AddWithValue("@custname", customername.Text.Trim());
                            com.Parameters.AddWithValue("@custphone", customerphone.Text.Trim());
                            com.Parameters.AddWithValue("@custarea", customerarea.Text.Trim());
                            com.Parameters.AddWithValue("@amount", Convert.ToInt32(amount.Text.Trim()));
                            com.Parameters.AddWithValue("@remarks", remarks.Text.Trim());
                            com.Parameters.AddWithValue("@modifiedby", Session["fullname"].ToString());
                            com.Parameters.AddWithValue("@modifieddatetime", modifieddatetime);
                            com.ExecuteNonQuery();
                            con.Close();

                            SqlConnection condue = new SqlConnection(strconn);
                            condue.Open();
                            SqlCommand cmdd = new SqlCommand("UPDATE duereport_tbl SET custname=@custname,custphone=@custphone,custarea=@custarea,monthlyamount=@monthlyamount,duedate=@duedate,modifiedby=@modifiedby,modifieddatetime=@modifieddatetime WHERE subscriberid=" + Convert.ToInt64(subscriberid.Text), condue);

                            cmdd.Parameters.AddWithValue("@custname", customername.Text.Trim());
                            cmdd.Parameters.AddWithValue("@custphone", customerphone.Text.Trim());
                            cmdd.Parameters.AddWithValue("@custarea", customerarea.Text.Trim());
                            cmdd.Parameters.AddWithValue("@monthlyamount", Convert.ToInt32(monthlyamount.Text.ToString()));
                            cmdd.Parameters.AddWithValue("@duedate", Convert.ToDateTime(duedate.Text.Trim()));
                            cmdd.Parameters.AddWithValue("@modifiedby", Session["fullname"].ToString());
                            cmdd.Parameters.AddWithValue("@modifieddatetime", modifieddatetime);
                            cmdd.ExecuteNonQuery();
                            condue.Close();

                            taskid.Text = "";
                            isactive.ClearSelection();
                            taskstatus.ClearSelection();
                            taskname.ClearSelection();
                            subscriberid.Text = "";
                            customername.Text = "";
                            customerphone.Text = "";
                            customerarea.Text = "";
                            amount.Text = "";
                            remarks.Text = "";
                            monthlyamount.Text = "";
                            duedate.Text = "";

                            Response.Write("<Script>alert('Task Modified Successfully')</script>");

                        }
                        else
                        {
                            conn.Close();
                            SqlConnection con = new SqlConnection(strconn);
                            con.Open();
                            SqlCommand com = new SqlCommand("UPDATE task_tbl SET isactive=@isactive,taskstatus=@taskstatus,taskname=@taskname,subscriberid=@subscriberid,custname=@custname,amount=@amount,custphone=@custphone,custarea=@custarea,remarks=@remarks,modifiedby=@modifiedby,modifieddatetime=@modifieddatetime WHERE taskid=" + Convert.ToInt32(taskid.Text.Trim()), con);

                            com.Parameters.AddWithValue("@isactive", isactive.SelectedItem.Value);
                            com.Parameters.AddWithValue("@taskstatus", taskstatus.SelectedItem.Value);
                            com.Parameters.AddWithValue("@taskname", taskname.SelectedItem.Value);
                            com.Parameters.AddWithValue("@subscriberid", Convert.ToInt64(subscriberid.Text.Trim()));
                            com.Parameters.AddWithValue("@custname", customername.Text.Trim());
                            com.Parameters.AddWithValue("@custphone", customerphone.Text.Trim());
                            com.Parameters.AddWithValue("@custarea", customerarea.Text.Trim());
                            com.Parameters.AddWithValue("@amount", Convert.ToInt32(amount.Text.Trim()));
                            com.Parameters.AddWithValue("@remarks", remarks.Text.Trim());
                            com.Parameters.AddWithValue("@modifiedby", Session["fullname"].ToString());
                            com.Parameters.AddWithValue("@modifieddatetime", modifieddatetime);
                            com.ExecuteNonQuery();
                            con.Close();

                            SqlConnection condue = new SqlConnection(strconn);
                            condue.Open();
                            SqlCommand cmdd = new SqlCommand("INSERT into duereport_tbl(isactive,subscriberid,dthoperator,custname,custphone,custarea,monthlyamount,duedate,remarks,addedby,addeddatetime,modifieddatetime) values(@isactive,@subscriberid,@dthoperator,@custname,@custphone,@custarea,@monthlyamount,@duedate,@remarks,@addedby,@addeddatetime,@modifieddatetime)", condue);

                            cmdd.Parameters.AddWithValue("@isactive", "1");
                            cmdd.Parameters.AddWithValue("@subscriberid", Convert.ToInt64(subscriberid.Text.ToString()));
                            cmdd.Parameters.AddWithValue("@dthoperator", "TATA PLAY");
                            cmdd.Parameters.AddWithValue("@custname", customername.Text.Trim());
                            cmdd.Parameters.AddWithValue("@custphone", customerphone.Text.Trim());
                            cmdd.Parameters.AddWithValue("@custarea", customerarea.Text.Trim());
                            cmdd.Parameters.AddWithValue("@monthlyamount", Convert.ToInt32(monthlyamount.Text.ToString()));
                            cmdd.Parameters.AddWithValue("@duedate", Convert.ToDateTime(duedate.Text.Trim()));
                            cmdd.Parameters.AddWithValue("@remarks", remarks.Text.Trim());
                            cmdd.Parameters.AddWithValue("@addedby", Session["fullname"].ToString());
                            cmdd.Parameters.AddWithValue("@addeddatetime", addeddatetime);
                            cmdd.Parameters.AddWithValue("@modifieddatetime", modifieddatetime);
                            cmdd.ExecuteNonQuery();
                            condue.Close();

                            taskid.Text = "";
                            isactive.ClearSelection();
                            taskstatus.ClearSelection();
                            taskname.ClearSelection();
                            subscriberid.Text = "";
                            customername.Text = "";
                            customerphone.Text = "";
                            customerarea.Text = "";
                            amount.Text = "";
                            remarks.Text = "";
                            monthlyamount.Text = "";
                            duedate.Text = "";

                            Response.Write("<Script>alert('Task Modified Successfully')</script>");
                        }
                    }
                    else
                    {
                        SqlConnection con = new SqlConnection(strconn);
                        con.Open();
                        SqlCommand com = new SqlCommand("UPDATE task_tbl SET isactive=@isactive,taskstatus=@taskstatus,taskname=@taskname,subscriberid=@subscriberid,custname=@custname,amount=@amount,custphone=@custphone,custarea=@custarea,remarks=@remarks,modifiedby=@modifiedby,modifieddatetime=@modifieddatetime WHERE taskid=" + Convert.ToInt32(taskid.Text.Trim()), con);


                        com.Parameters.AddWithValue("@isactive", isactive.SelectedItem.Value);
                        com.Parameters.AddWithValue("@taskstatus", taskstatus.SelectedItem.Value);
                        com.Parameters.AddWithValue("@taskname", taskname.SelectedItem.Value);
                        com.Parameters.AddWithValue("@subscriberid", Convert.ToInt64(subscriberid.Text.Trim()));
                        com.Parameters.AddWithValue("@custname", customername.Text.Trim());
                        com.Parameters.AddWithValue("@custphone", customerphone.Text.Trim());
                        com.Parameters.AddWithValue("@custarea", customerarea.Text.Trim());
                        com.Parameters.AddWithValue("@amount", Convert.ToInt32(amount.Text.Trim()));
                        com.Parameters.AddWithValue("@remarks", remarks.Text.Trim());
                        com.Parameters.AddWithValue("@modifiedby", Session["fullname"].ToString());
                        com.Parameters.AddWithValue("@modifieddatetime", modifieddatetime);
                        com.ExecuteNonQuery();
                        con.Close();
                        Response.Write("<Script>alert('Task Modified Successfully')</script>");

                        taskid.Text = "";
                        isactive.ClearSelection();
                        taskstatus.ClearSelection();
                        taskname.ClearSelection();
                        customername.Text = "";
                        customerphone.Text = "";
                        customerarea.Text = "";
                        amount.Text = "";
                        remarks.Text = "";
                    }
                }
                else
                {
                    SqlConnection con = new SqlConnection(strconn);
                    con.Open();
                    SqlCommand com = new SqlCommand("UPDATE task_tbl SET isactive=@isactive,taskstatus=@taskstatus,taskname=@taskname,subscriberid=@subscriberid,custname=@custname,amount=@amount,custphone=@custphone,custarea=@custarea,remarks=@remarks,modifiedby=@modifiedby,modifieddatetime=@modifieddatetime WHERE taskid=" + Convert.ToInt32(taskid.Text.Trim()), con);


                    com.Parameters.AddWithValue("@isactive", isactive.SelectedItem.Value);
                    com.Parameters.AddWithValue("@taskstatus", taskstatus.SelectedItem.Value);
                    com.Parameters.AddWithValue("@taskname", taskname.SelectedItem.Value);
                    com.Parameters.AddWithValue("@subscriberid", Convert.ToInt64(subscriberid.Text.Trim()));
                    com.Parameters.AddWithValue("@custname", customername.Text.Trim());
                    com.Parameters.AddWithValue("@custphone", customerphone.Text.Trim());
                    com.Parameters.AddWithValue("@custarea", customerarea.Text.Trim());
                    com.Parameters.AddWithValue("@amount", Convert.ToInt32(amount.Text.Trim()));
                    com.Parameters.AddWithValue("@remarks", remarks.Text.Trim());
                    com.Parameters.AddWithValue("@modifiedby", Session["fullname"].ToString());
                    com.Parameters.AddWithValue("@modifieddatetime", modifieddatetime);
                    com.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<Script>alert('Task Modified Successfully')</script>");

                    taskid.Text = "";
                    isactive.ClearSelection();
                    taskstatus.ClearSelection();
                    taskname.ClearSelection();
                    customername.Text = "";
                    customerphone.Text = "";
                    customerarea.Text = "";
                    amount.Text = "";
                    remarks.Text = "";
                }
            }
            catch (Exception)
            {
                Response.Write("<Script>alert('Task Not Modified')</script>");

            }
        }

        protected void taskstatus_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(taskstatus.SelectedItem.Text == "Completed")
            {
                monthlyamount.Enabled = true;
                RequiredFieldValidator9.Enabled = true;
                duedate.Enabled= true;
                RequiredFieldValidator10.Enabled = true;
            }
            else
            {
                monthlyamount.Enabled = false;
                RequiredFieldValidator9.Enabled = false;
                duedate.Enabled = false;
                RequiredFieldValidator10.Enabled = false;
            }
        }
    }
}