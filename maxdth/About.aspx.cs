using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace maxdth
{
    public partial class About : Page
    {
        string yyyymmdd = DateTime.Now.Year.ToString() + DateTime.Now.ToString("MM") + DateTime.Now.ToString("dd");
        string monthcode = DateTime.Now.Year.ToString() + DateTime.Now.ToString("MM");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void testing_Click(object sender, EventArgs e)
        {
            yyyymmddlable.Text = yyyymmdd;
            yyyymmlable.Text = monthcode;
        }
    }
}