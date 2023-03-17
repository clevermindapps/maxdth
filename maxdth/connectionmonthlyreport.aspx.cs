using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace maxdth
{
    public partial class connectionmonthlyreport : System.Web.UI.Page
    {
        string strconn = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void monthname_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(strconn);
            conn.Open();
            SqlCommand com = new SqlCommand("select promotername as PromoterName, count(promotername) as Activations from newconnection_tbl where isactive=@isactive and monthcode=@monthcode group by promotername", conn);
            com.Parameters.AddWithValue("@isactive", "1");
            com.Parameters.AddWithValue("@monthcode", monthname.SelectedItem.Value);
            SqlDataAdapter sd = new SqlDataAdapter(com);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            monthlyactivationsgridview.DataSource = dt;
            monthlyactivationsgridview.DataBind();
            SqlCommand cmd = new SqlCommand("select count(promotername) from newconnection_tbl where isactive=@isactive and monthcode=@monthcode", conn);
            cmd.Parameters.AddWithValue("@isactive", "1");
            cmd.Parameters.AddWithValue("@monthcode", monthname.SelectedItem.Value);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                monthlyactivationslabel.Text = dr[0].ToString();
            }
            conn.Close();
        }
    }
}