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
    public partial class newconnectionentry : System.Web.UI.Page
    {
        string strconn = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        DateTime addeddatetime = DateTime.Now;
        string monthcode, promoter, town, custtown;
        int connamount;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                monthname();
                promotername();
                customerareaname();
            }
        }

        protected void monthname()
        {
            SqlConnection con = new SqlConnection(strconn);
            con.Open();
            monthcode = "select * from monthcode_tbl";
            SqlCommand com = new SqlCommand(monthcode, con);
            com.CommandType = CommandType.Text;
            monthcodename.DataSource = com.ExecuteReader();
            monthcodename.DataTextField = "monthname";
            monthcodename.DataValueField = "monthcode";
            monthcodename.DataBind();
            monthcodename.Items.Insert(0, new ListItem("-- Select Month Code and Name --", "0"));
        }

        protected void promotername()
        {
            SqlConnection con = new SqlConnection(strconn);
            con.Open();
            promoter = "select dealerid, dealername from dealer_tbl";
            SqlCommand com = new SqlCommand(promoter, con);
            com.CommandType = CommandType.Text;
            promoterlist.DataSource = com.ExecuteReader();
            promoterlist.DataTextField = "dealername";
            promoterlist.DataValueField = "dealerid";
            promoterlist.DataBind();
            promoterlist.Items.Insert(0, new ListItem("-- Select Promoter Name --", "0"));
        }

        protected void customerareadropdown_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (customerareadropdown.SelectedItem.Text.ToString() == "Others")
            {
                customerareaothertbox.Enabled = true;
                RequiredFieldValidator10.Enabled = true;
            }
            else
            {
                customerareaothertbox.Enabled = false;
                RequiredFieldValidator10.Enabled = false;
            }
        }

        protected void customerareaname()
        {
            SqlConnection con = new SqlConnection(strconn);
            con.Open();
            town = "select townid, townname from town_tbl";
            SqlCommand com = new SqlCommand(town, con);
            com.CommandType = CommandType.Text;
            customerareadropdown.DataSource = com.ExecuteReader();
            customerareadropdown.DataTextField = "townname";
            customerareadropdown.DataValueField = "townid";
            customerareadropdown.DataBind();
            customerareadropdown.Items.Insert(0, new ListItem("-- Select Customer Area --", "0"));
        }

        protected void addconnectionbutton_Click(object sender, EventArgs e)
        {
            try
            {
                if (customerareadropdown.SelectedItem.Text.ToString() != "Others")
                {
                    custtown = customerareadropdown.SelectedItem.Text.ToString();
                }
                else
                {
                    custtown = customerareaothertbox.Text.ToString();
                }

                connamount = Convert.ToInt32(actualprice.Text) - Convert.ToInt32(discount.Text) - Convert.ToInt32(commission.Text);

                SqlConnection con = new SqlConnection(strconn);
                con.Open();
                SqlCommand cmd = new SqlCommand("INSERT into newconnection_tbl", con);
            }
            catch(Exception) 
            {
                Response.Write("<Script>alert('New Connection Details Added Successfully')</script>");
            }
        }
    }
}