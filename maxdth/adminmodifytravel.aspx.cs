using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace maxdth
{
    public partial class adminmodifytravel : System.Web.UI.Page
    {
        string strconn = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        int kms, kmsamount;
        DateTime modifieddatetime = DateTime.Now;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void travelidbutton_Click(object sender, EventArgs e)
        {

        }

        protected void noofkms_Load(object sender, EventArgs e)
        {
            Int32.TryParse(noofkms.Text, out kms);
            kmsamount = kms * 4;
            amount.Text = kmsamount.ToString();
        }

        protected void modifytravelbutton_Click(object sender, EventArgs e)
        {

        }
    }
}