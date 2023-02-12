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
            try
            {


                if (Session["usertype"].Equals("employee"))
                {
                    
                    userimage.ImageUrl = Session["userphoto"].ToString();

                    userfullname.Text = Session["fullname"].ToString();
                    userrole.Text = "Employee";
                }
                else if(Session["usertype"].Equals("admin"))
                {
                    
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

      
        
    }
}