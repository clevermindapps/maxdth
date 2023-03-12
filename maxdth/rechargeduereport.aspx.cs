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
    public partial class rechargeduereport : System.Web.UI.Page
    {
        string strconn = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        public int NewPageIndex { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                duereportgridview.DataBind();
            }
        }

        protected void duereportbutton_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(strconn);
            conn.Open();
            SqlCommand com = new SqlCommand("select * from duereport_tbl where duedate<=@duedate", conn);
            com.Parameters.AddWithValue("@duedate", submissiondate.Text);
            SqlDataAdapter sd = new SqlDataAdapter(com);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            duereportgridview.DataSource = dt;
            duereportgridview.DataBind();
            conn.Close();
        }

        protected void duereportgridview_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void duereportgridview_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            duereportgridview.PageIndex = e.NewPageIndex;
            SqlConnection conn = new SqlConnection(strconn);
            conn.Open();
            SqlCommand com = new SqlCommand("select * from duereport_tbl where duedate<=@duedate", conn);
            com.Parameters.AddWithValue("@duedate", submissiondate.Text);
            SqlDataAdapter sd = new SqlDataAdapter(com);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            duereportgridview.DataSource = dt;
            duereportgridview.DataBind();
            conn.Close();
        }
    }
}