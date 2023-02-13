using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace maxdth
{
    public partial class userprofile : System.Web.UI.Page
    {
        string strconn = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                profileimage.ImageUrl = Session["userphoto"].ToString();
                fullname.Text = Session["fullname"].ToString();
                role.Text = Session["usertype"].ToString();
                email.Text = Session["useremail"].ToString();
                phone.Text = Session["userphone"].ToString();
                address.Text = Session["useraddress"].ToString();
            }
            catch(Exception ex)
            {
                Response.Write(ex.Message);
            }
           
        }
    }
}