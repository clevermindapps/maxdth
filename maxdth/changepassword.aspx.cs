using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace maxdth
{
    public partial class changepassword : System.Web.UI.Page
    {
        string strconn = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void changeuserpassword_Click(object sender, EventArgs e)
        {
            try
            {

                if (Session["password"].ToString()==oldpassword.Text)
                {
                    if (newpassword.Text == confirmnewpassword.Text)
                    {
                        SqlConnection con = new SqlConnection(strconn);
                        con.Open();
                        SqlCommand com = new SqlCommand("update user_tbl set password='" + confirmnewpassword.Text + "'" + " where userid='" + Session["userid"].ToString() + "'",con);
                        com.ExecuteNonQuery();
                        con.Close();
                        

                        SqlConnection conn = new SqlConnection(strconn);
                        conn.Open();
                        SqlCommand cmd = new SqlCommand("update user_tbl set modifiedby='" + Session["fullname"].ToString() + "'" + " where userid='" + Session["userid"].ToString() + "'", conn);
                        cmd.ExecuteNonQuery();
                        conn.Close();
                        oldpassword.Text = "";
                        newpassword.Text = "";
                        confirmnewpassword.Text = "";
                        Response.Write("<script>alert('Password changed successfully')</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('New password AND Confirm new password is not equal')</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Old password is not Matching')</script>");
                }
            }
            catch(Exception ex)
            {
                Response.Write(ex.Message);
            }






        }



    }
}