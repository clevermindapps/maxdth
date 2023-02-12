using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace maxdth
{
    public partial class _Default : Page
    {
        string strconn = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
        
        }

        protected void loginbutton_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strconn);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand com = new SqlCommand("select * from user_tbl where userid='"+ userid.Text.Trim() + "'AND password='"+ password.Text.Trim() + "'" + "AND isactive='1'", con);
                SqlDataReader reader = com.ExecuteReader();
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        Session["userid"] = reader.GetValue(1).ToString();
                        Session["fullname"] = reader.GetValue(4).ToString();
                        Session["usertype"] = reader.GetValue(3).ToString();
                        Session["userphoto"] = reader.GetValue(8).ToString();

                    }
                    Response.Redirect("maxhome.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid ID OR Password OR Maybe Your User ID is not Active');</script>");
                }
            }
            catch(Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}