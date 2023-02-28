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
                            customername.Text = dr[4].ToString();
                            customerphone.Text = dr[5].ToString();
                            customerarea.Text = dr[6].ToString();
                            amount.Text = dr[7].ToString();
                            remarks.Text = dr[8].ToString();

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
                        SqlCommand cmd = new SqlCommand("select * from duereport_tbl where subscriberid=" + Convert.ToInt64(customerphone.Text), conn);
                        SqlDataReader dr = cmd.ExecuteReader();
                        if (dr.HasRows)
                        {
                            conn.Close();
                            SqlConnection con = new SqlConnection(strconn);
                            con.Open();
                            SqlCommand com = new SqlCommand("UPDATE task_tbl SET isactive=@isactive,taskstatus=@taskstatus,taskname=@taskname,custname=@custname,amount=@amount,custphone=@custphone,custarea=@custarea,remarks=@remarks,modifiedby=@modifiedby,modifieddatetime=@modifieddatetime WHERE taskid=" + Convert.ToInt32(taskid.Text.Trim()), con);

                            com.Parameters.AddWithValue("@isactive", isactive.SelectedItem.Value);
                            com.Parameters.AddWithValue("@taskstatus", taskstatus.SelectedItem.Value);
                            com.Parameters.AddWithValue("@taskname", taskname.SelectedItem.Value);
                            com.Parameters.AddWithValue("@custname", customername.Text.Trim());
                            com.Parameters.AddWithValue("@custphone", customerphone.Text.Trim());
                            com.Parameters.AddWithValue("@custarea", customerarea.Text.Trim());
                            com.Parameters.AddWithValue("@amount", Convert.ToInt32(amount.Text.Trim()));
                            com.Parameters.AddWithValue("@remarks", remarks.Text.Trim());
                            com.Parameters.AddWithValue("@modifiedby", Session["fullname"].ToString());
                            com.Parameters.AddWithValue("@modifieddatetime", modifieddatetime.ToString());
                            com.ExecuteNonQuery();
                            con.Close();

                            taskid.Text = "";
                            isactive.ClearSelection();
                            taskstatus.ClearSelection();
                            taskname.ClearSelection();
                            customername.Text = "";
                            customerphone.Text = "";
                            customerarea.Text = "";
                            amount.Text = "";
                            remarks.Text = "";

                            Response.Redirect("duereportmodify.aspx");

                        }
                        else
                        {
                            conn.Close();
                            SqlConnection con = new SqlConnection(strconn);
                            con.Open();
                            SqlCommand com = new SqlCommand("UPDATE task_tbl SET isactive=@isactive,taskstatus=@taskstatus,taskname=@taskname,custname=@custname,amount=@amount,custphone=@custphone,custarea=@custarea,remarks=@remarks,modifiedby=@modifiedby,modifieddatetime=@modifieddatetime WHERE taskid=" + Convert.ToInt32(taskid.Text.Trim()), con);

                            com.Parameters.AddWithValue("@isactive", isactive.SelectedItem.Value);
                            com.Parameters.AddWithValue("@taskstatus", taskstatus.SelectedItem.Value);
                            com.Parameters.AddWithValue("@taskname", taskname.SelectedItem.Value);
                            com.Parameters.AddWithValue("@custname", customername.Text.Trim());
                            com.Parameters.AddWithValue("@custphone", customerphone.Text.Trim());
                            com.Parameters.AddWithValue("@custarea", customerarea.Text.Trim());
                            com.Parameters.AddWithValue("@amount", Convert.ToInt32(amount.Text.Trim()));
                            com.Parameters.AddWithValue("@remarks", remarks.Text.Trim());
                            com.Parameters.AddWithValue("@modifiedby", Session["fullname"].ToString());
                            com.Parameters.AddWithValue("@modifieddatetime", modifieddatetime.ToString());
                            com.ExecuteNonQuery();
                            con.Close();

                            taskid.Text = "";
                            isactive.ClearSelection();
                            taskstatus.ClearSelection();
                            taskname.ClearSelection();
                            customername.Text = "";
                            customerphone.Text = "";
                            customerarea.Text = "";
                            amount.Text = "";
                            remarks.Text = "";
                            Response.Redirect("duereportentry.aspx");
                        }
                    }
                    else
                    {
                        SqlConnection con = new SqlConnection(strconn);
                        con.Open();
                        SqlCommand com = new SqlCommand("UPDATE task_tbl SET isactive=@isactive,taskstatus=@taskstatus,taskname=@taskname,custname=@custname,amount=@amount,custphone=@custphone,custarea=@custarea,remarks=@remarks,modifiedby=@modifiedby,modifieddatetime=@modifieddatetime WHERE taskid=" + Convert.ToInt32(taskid.Text.Trim()), con);


                        com.Parameters.AddWithValue("@isactive", isactive.SelectedItem.Value);
                        com.Parameters.AddWithValue("@taskstatus", taskstatus.SelectedItem.Value);
                        com.Parameters.AddWithValue("@taskname", taskname.SelectedItem.Value);
                        com.Parameters.AddWithValue("@custname", customername.Text.Trim());
                        com.Parameters.AddWithValue("@custphone", customerphone.Text.Trim());
                        com.Parameters.AddWithValue("@custarea", customerarea.Text.Trim());
                        com.Parameters.AddWithValue("@amount", Convert.ToInt32(amount.Text.Trim()));
                        com.Parameters.AddWithValue("@remarks", remarks.Text.Trim());
                        com.Parameters.AddWithValue("@modifiedby", Session["fullname"].ToString());
                        com.Parameters.AddWithValue("@modifieddatetime", modifieddatetime.ToString());
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
                    SqlCommand com = new SqlCommand("UPDATE task_tbl SET isactive=@isactive,taskstatus=@taskstatus,taskname=@taskname,custname=@custname,amount=@amount,custphone=@custphone,custarea=@custarea,remarks=@remarks,modifiedby=@modifiedby,modifieddatetime=@modifieddatetime WHERE taskid=" + Convert.ToInt32(taskid.Text.Trim()), con);


                    com.Parameters.AddWithValue("@isactive", isactive.SelectedItem.Value);
                    com.Parameters.AddWithValue("@taskstatus", taskstatus.SelectedItem.Value);
                    com.Parameters.AddWithValue("@taskname", taskname.SelectedItem.Value);
                    com.Parameters.AddWithValue("@custname", customername.Text.Trim());
                    com.Parameters.AddWithValue("@custphone", customerphone.Text.Trim());
                    com.Parameters.AddWithValue("@custarea", customerarea.Text.Trim());
                    com.Parameters.AddWithValue("@amount", Convert.ToInt32(amount.Text.Trim()));
                    com.Parameters.AddWithValue("@remarks", remarks.Text.Trim());
                    com.Parameters.AddWithValue("@modifiedby", Session["fullname"].ToString());
                    com.Parameters.AddWithValue("@modifieddatetime", modifieddatetime.ToString());
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
    }
}