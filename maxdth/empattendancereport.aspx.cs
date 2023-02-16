using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace maxdth
{
    public partial class empattendancereport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void empmonthcode_SelectedIndexChanged(object sender, EventArgs e)
        {
            empmonthlyattendance.DataBind();
        }
    }
}