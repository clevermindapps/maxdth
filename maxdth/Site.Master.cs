using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace maxdth
{
    public partial class SiteMaster : MasterPage
    {
        string strconn = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            logo.Visible = false;
            userimage.Visible = false;
            userfullname.Visible = false;
            userrole.Visible = false;
            try
            {
                if(Session["usertype"].Equals(""))
                {
                    logo.Visible= false;
                }

                else if (Session["usertype"].Equals("employee"))
                {
                    logo.Visible= true;
                    userimage.Visible = true;
                    userfullname.Visible = true;
                    userrole.Visible = true;
                    userimage.ImageUrl = Session["userphoto"].ToString();

                    userfullname.Text = Session["fullname"].ToString();
                    userrole.Text = "Employee";
                }
                else if(Session["usertype"].Equals("admin"))
                {
                    logo.Visible = true;
                    userimage.Visible = true;
                    userfullname.Visible = true;
                    userrole.Visible = true;
                    userimage.ImageUrl = Session["userphoto"].ToString();
                    userfullname.Text = Session["fullname"].ToString();
                    userrole.Text = "Admin";
                }
                else
                {
                    Response.Redirect("Default.aspx");
                }
                

            }
            catch(Exception ex)
            {
                Response.Write(ex.Message);
            }
           
        }

        protected void userlogout_Click(object sender, EventArgs e)
        {
            Session["userid"] = "";
            Session["fullname"] = "";
            Session["usertype"] = "";
            Session["userphoto"] = "";
            Response.Redirect("Default.aspx");
        }
        // user profile button//
        protected void userprofile_Click(object sender, EventArgs e)
        {
            Response.Redirect("userprofile.aspx");
        }
        // changepassword button//
        protected void userpassword_Click(object sender, EventArgs e)
        {
            Response.Redirect("changepassword.aspx");
        }

        protected void logo_Click(object sender, EventArgs e)
        {
            Response.Redirect("maxhome.aspx");
        }
    }
}