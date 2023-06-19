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

        public SqlConnection SqlConnection { get; private set; }

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

        protected void TextBox1_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(strconn);
            conn.Open();
            SqlCommand com = new SqlCommand("select * from duereport_tbl where duedate<=@duedate", conn);
            com.Parameters.AddWithValue("@duedate", TextBox1.Text);
            SqlDataAdapter sd = new SqlDataAdapter(com);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView2.DataSource = dt;
            GridView2.DataBind();
            conn.Close();
        }

        protected void barchart_Load(object sender, EventArgs e)
        {

        }

        protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void userbtn_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strconn);
                SqlCommand com = new SqlCommand("showuserdetails", con);
                com.CommandType = CommandType.StoredProcedure;

                DataTable dt = new DataTable();

                SqlDataAdapter da = new SqlDataAdapter(com);
                da.Fill(dt);

                usertbl.DataSource = dt;
                usertbl.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        //protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    string mnthname;
        //    try
        //    {
        //        mnthname = DropDownList2.SelectedItem.Value;

        //        //if (!Page.IsPostBack)
        //        //{
        //        //    SqlConnection conn = new SqlConnection(strconn);
        //        //    conn.Open();
        //        //    SqlCommand cmd = new SqlCommand("monthtbl", conn);
        //        //    DropDownList2.DataTextField = "monthname";
        //        //    DropDownList2.DataValueField = "monthcode";
        //        //    DropDownList2.DataSource = cmd.ExecuteReader();
        //        //    DropDownList2.DataBind();
        //        //    DropDownList2.Items.Insert(0, new ListItem("-- Select Month --"));
        //        //    conn.Close();
        //        //}



        //        SqlConnection con = new SqlConnection(strconn);
        //        SqlCommand com = new SqlCommand("monthdata", con);
        //        com.CommandType = CommandType.StoredProcedure;


        //        //com.Parameters.AddWithValue("@monthname", mnthname);

        //        DataTable dt = new DataTable();
        //        SqlDataAdapter da = new SqlDataAdapter(com);
        //        da.Fill(dt);
        //        mnthdata.DataSource = dt;
        //        mnthdata.DataBind();
        //    }
        //    catch (Exception ex)
        //    {
        //        Response.Write(ex.Message);
        //    }
        //}

        protected void Show_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strconn);
                SqlCommand com = new SqlCommand("countfullorhalfdays", con);
                com.CommandType = CommandType.StoredProcedure;




                DataTable dt = new DataTable();

                SqlDataAdapter da = new SqlDataAdapter(com);
                da.Fill(dt);

                atndscount.DataSource = dt;
                atndscount.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

     

        //protected void sum_Click(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        SqlConnection con = new SqlConnection(strconn);
        //        SqlCommand com = new SqlCommand("sumamountoftoltrlptm", con);
        //        com.CommandType = CommandType.StoredProcedure;

        //        DataTable dt = new DataTable();

        //        SqlDataAdapter da = new SqlDataAdapter(com);
        //        da.Fill(dt);

        //        amount.DataSource = dt;
        //        amount.DataBind();
        //    }
        //    catch (Exception ex)
        //    {
        //        Response.Write(ex.Message);
        //    }
        //}

        protected void Label3_Load(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strconn);
                SqlCommand com = new SqlCommand("sumamountoftoltrlptm", con);
                com.CommandType = CommandType.StoredProcedure;

                DataTable dt = new DataTable();

                SqlDataAdapter da = new SqlDataAdapter(com);
                da.Fill(dt);

                amount.DataSource = dt;
                amount.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}