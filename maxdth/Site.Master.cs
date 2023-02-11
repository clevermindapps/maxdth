using System;
using System.Collections.Generic;
using System.Configuration;
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
        string strconn = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        string strimage = "select userphoto from user_tbl where userid=" + "'cmsemp'";
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strconn);
            con.Open();
            SqlCommand com = new SqlCommand(strimage, con);
            SqlDataReader reader = com.ExecuteReader();
            if (reader.Read())
            {
                userimage.ImageUrl = reader[0].ToString();
            }
            con.Close();

        }
    }
}