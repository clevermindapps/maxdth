using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace maxdth
{
    public partial class About : Page
    {
        string strconn = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        string yyyymmdd = DateTime.Now.Year.ToString() + DateTime.Now.ToString("MM") + DateTime.Now.ToString("dd");
        string monthcode = DateTime.Now.Year.ToString() + DateTime.Now.ToString("MM");
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                SqlConnection con = new SqlConnection(strconn);
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from monthcode_tbl", con);
                DropDownList1.DataTextField = "monthname";
                DropDownList1.DataValueField = "monthcode";
                DropDownList1.DataSource = cmd.ExecuteReader();
                DropDownList1.DataBind();
                DropDownList1.Items.Insert(0, new ListItem("-- Select Month --"));
                con.Close();
            }
            
        }

        protected void testing_Click(object sender, EventArgs e)
        {
            yyyymmddlable.Text = yyyymmdd;
            yyyymmlable.Text = monthcode;
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(strconn);
            conn.Open();
            SqlCommand com = new SqlCommand("select * from attendance_tbl where isactive=@isactive and monthcode=@monthcode", conn);
            com.Parameters.AddWithValue("@isactive", "1");
            //com.Parameters.AddWithValue("@userfullname", Session["userfullname"].ToString());
            com.Parameters.AddWithValue("@monthcode", DropDownList1.SelectedItem.Value);
            SqlDataAdapter sd = new SqlDataAdapter(com);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            conn.Close();
        }
    }
}