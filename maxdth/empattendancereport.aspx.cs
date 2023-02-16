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
    public partial class empattendancereport : System.Web.UI.Page
    {
        string strconn = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void empmonthcode_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(strconn);
            conn.Open();
            SqlCommand com = new SqlCommand("select * from attendance_tbl where isactive=@isactive and userfullname=@userfullname and monthcode=@monthcode", conn);
            com.Parameters.AddWithValue("@isactive", "1");
            com.Parameters.AddWithValue("@userfullname", Session["fullname"].ToString());
            com.Parameters.AddWithValue("@monthcode", empmonthcode.SelectedItem.Value);
            SqlDataAdapter sd = new SqlDataAdapter(com);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            empmonthlyattendance.DataSource = dt;
            empmonthlyattendance.DataBind();
            conn.Close();
        }
    }
}