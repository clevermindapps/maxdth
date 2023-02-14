using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace maxdth
{
    public partial class maxhome : System.Web.UI.Page
    {
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
    }
}