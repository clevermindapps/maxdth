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
        DateTime modifieddatetime = DateTime.Now;
        string monthcode, promoter, town, custtown;
        int connamount, baseamt, pendingamt;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                monthname();
                promoternamedd();
                customerareaname();
            }
        }

        protected void monthname()
        {
            SqlConnection conmname = new SqlConnection(strconn);
            conmname.Open();
            monthcode = "select * from monthcode_tbl";
            SqlCommand com = new SqlCommand(monthcode, conmname);
            com.CommandType = CommandType.Text;
            monthcodename.DataSource = com.ExecuteReader();
            monthcodename.DataTextField = "monthname";
            monthcodename.DataValueField = "monthcode";
            monthcodename.DataBind();
            monthcodename.Items.Insert(0, new ListItem("-- Select Month Name --", "0"));
        }

        protected void promoternamedd()
        {
            SqlConnection conpro = new SqlConnection(strconn);
            conpro.Open();
            promoter = "select dealerid, dealername from dealer_tbl";
            SqlCommand com = new SqlCommand(promoter, conpro);
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
            SqlConnection conarea = new SqlConnection(strconn);
            conarea.Open();
            town = "select townid, townname from town_tbl";
            SqlCommand com = new SqlCommand(town, conarea);
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
                SqlConnection newconcheck = new SqlConnection(strconn);
                newconcheck.Open();
                SqlCommand cmdd = new SqlCommand("select * from newconnection_tbl where subscriberid=" + Convert.ToInt64(subscriberid.Text), newconcheck);
                SqlDataReader dr = cmdd.ExecuteReader();
                if (dr.HasRows)
                {
                    Response.Write("<Script>alert('Details are already Added for this Subscriber ID')</script>");
                }
                else
                {
                    if (customerareadropdown.SelectedItem.Text.ToString() != "Others")
                    {
                        custtown = customerareadropdown.SelectedItem.Text.ToString();
                    }
                    else
                    {
                        custtown = customerareaothertbox.Text.ToString();
                    }

                    baseamt = Convert.ToInt32(actualprice.Text) - (Convert.ToInt32(discount.Text) + Convert.ToInt32(commission.Text));
                    pendingamt = Convert.ToInt32(receivedamount.Text) - baseamt;
                    connamount = Convert.ToInt32(receivedamount.Text) - Convert.ToInt32(evdamount.Text);

                    SqlConnection newcon = new SqlConnection(strconn);
                    newcon.Open();
                    SqlCommand cmd = new SqlCommand("INSERT into newconnection_tbl(isactive,monthcode,dthoperator,newconntype,custname,custphone,custarea,subscriberid,packinfo,connectiondate,promotername,salesperson,actualprice,discount,dealercommission,receivedamount,pendingamount,evdamount,connectionamount,remarks,addedby,addeddatetime) values(@isactive,@monthcode,@dthoperator,@newconntype,@custname,@custphone,@custarea,@subscriberid,@packinfo,@connectiondate,@promotername,@salesperson,@actualprice,@discount,@dealercommission,@receivedamount,@pendingamount,@evdamount,@connectionamount,@remarks,@addedby,@addeddatetime)", newcon);

                    cmd.Parameters.AddWithValue("@isactive", "1");
                    cmd.Parameters.AddWithValue("@monthcode", monthcodename.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@dthoperator", "TATA PLAY");
                    cmd.Parameters.AddWithValue("@newconntype", connectiontype.SelectedItem.Text);
                    cmd.Parameters.AddWithValue("@custname", customername.Text.ToString());
                    cmd.Parameters.AddWithValue("@custphone", customerphone.Text.ToString());
                    cmd.Parameters.AddWithValue("@custarea", custtown);
                    cmd.Parameters.AddWithValue("@subscriberid", Convert.ToInt64(subscriberid.Text.ToString()));
                    cmd.Parameters.AddWithValue("@packinfo", packdetails.Text.ToString());
                    cmd.Parameters.AddWithValue("@connectiondate", Convert.ToDateTime(congivendate.Text));
                    cmd.Parameters.AddWithValue("@promotername", promoterlist.SelectedItem.Text);
                    cmd.Parameters.AddWithValue("@salesperson", salesperson.Text.ToString());
                    cmd.Parameters.AddWithValue("@actualprice", Convert.ToInt32(actualprice.Text));
                    cmd.Parameters.AddWithValue("@discount", Convert.ToInt32(discount.Text));
                    cmd.Parameters.AddWithValue("@dealercommission", Convert.ToInt32(commission.Text));
                    cmd.Parameters.AddWithValue("@receivedamount", Convert.ToInt32(receivedamount.Text));
                    cmd.Parameters.AddWithValue("@pendingamount", pendingamt);
                    cmd.Parameters.AddWithValue("@evdamount", Convert.ToInt32(evdamount.Text));
                    cmd.Parameters.AddWithValue("@connectionamount", connamount);
                    cmd.Parameters.AddWithValue("@remarks", remarks.Text.ToString());
                    cmd.Parameters.AddWithValue("@addedby", Session["fullname"].ToString());
                    cmd.Parameters.AddWithValue("@addeddatetime", addeddatetime);

                    cmd.ExecuteNonQuery();
                    newcon.Close();

                    if (Convert.ToInt32(receivedamount.Text) < baseamt)
                    {
                        SqlConnection pencon = new SqlConnection(strconn);
                        pencon.Open();
                        SqlCommand com = new SqlCommand("INSERT INTO task_tbl(isactive,taskstatus,taskname,subscriberid,custname,custphone,custarea,amount,remarks,addedby,addeddatetime) values(@isactive,@taskstatus,@taskname,@subscriberid,@custname,@custphone,@custarea,@amount,@remarks,@addedby,@addeddatetime)", pencon);


                        com.Parameters.AddWithValue("@isactive", "1");
                        com.Parameters.AddWithValue("@taskstatus", "Pending");
                        com.Parameters.AddWithValue("@taskname", "Pending Amount");
                        com.Parameters.AddWithValue("@subscriberid", "");
                        com.Parameters.AddWithValue("@custname", customername.Text.Trim());
                        com.Parameters.AddWithValue("@custphone", customerphone.Text.Trim());
                        com.Parameters.AddWithValue("@custarea", custtown);
                        com.Parameters.AddWithValue("@amount", "0");
                        com.Parameters.AddWithValue("@remarks", "Pending Amount " + pendingamt.ToString());
                        com.Parameters.AddWithValue("@addedby", Session["fullname"].ToString());
                        com.Parameters.AddWithValue("@addeddatetime", addeddatetime.ToString());

                        com.ExecuteNonQuery();
                        pencon.Close();
                    }
                    else
                    {
                        pendingamt = Convert.ToInt32(receivedamount.Text) - baseamt;
                    }

                    SqlConnection consub = new SqlConnection(strconn);
                    consub.Open();
                    SqlCommand cmdsub = new SqlCommand("select * from duereport_tbl where subscriberid=" + Convert.ToInt64(subscriberid.Text), consub);
                    SqlDataReader drsub = cmdsub.ExecuteReader();
                    if (drsub.HasRows)
                    {
                        SqlConnection condue = new SqlConnection(strconn);
                        condue.Open();
                        SqlCommand cmddue = new SqlCommand("UPDATE duereport_tbl SET custname=@custname,custphone=@custphone,custarea=@custarea,monthlyamount=@monthlyamount,duedate=@duedate,modifiedby=@modifiedby,modifieddatetime=@modifieddatetime WHERE subscriberid=" + Convert.ToInt64(subscriberid.Text), condue);

                        cmddue.Parameters.AddWithValue("@custname", customername.Text.Trim());
                        cmddue.Parameters.AddWithValue("@custphone", customerphone.Text.Trim());
                        cmddue.Parameters.AddWithValue("@custarea", custtown);
                        cmddue.Parameters.AddWithValue("@monthlyamount", Convert.ToInt32(monthlyamount.Text.ToString()));
                        cmddue.Parameters.AddWithValue("@duedate", Convert.ToDateTime(duedate.Text.Trim()));
                        cmddue.Parameters.AddWithValue("@modifiedby", Session["fullname"].ToString());
                        cmddue.Parameters.AddWithValue("@modifieddatetime", modifieddatetime);
                        cmddue.ExecuteNonQuery();
                        condue.Close();
                    }
                    else
                    {
                        SqlConnection conins = new SqlConnection(strconn);
                        conins.Open();
                        SqlCommand cmdins = new SqlCommand("INSERT INTO duereport_tbl(isactive,subscriberid,dthoperator,custname,custphone,custarea,monthlyamount,duedate,addedby,addeddatetime) values(@isactive,@subscriberid,@dthoperator,@custname,@custphone,@custarea,@monthlyamount,@duedate,@addedby,@addeddatetime)", conins);


                        cmdins.Parameters.AddWithValue("@isactive", "1");
                        cmdins.Parameters.AddWithValue("@subscriberid", Convert.ToInt64(subscriberid.Text.Trim()));
                        cmdins.Parameters.AddWithValue("@dthoperator", "TATA PLAY");
                        cmdins.Parameters.AddWithValue("@custname", customername.Text.Trim());
                        cmdins.Parameters.AddWithValue("@custphone", customerphone.Text.Trim());
                        cmdins.Parameters.AddWithValue("@custarea", custtown);
                        cmdins.Parameters.AddWithValue("@monthlyamount", Convert.ToInt16(monthlyamount.Text.Trim()));
                        cmdins.Parameters.AddWithValue("@duedate", Convert.ToDateTime(duedate.Text.Trim()));
                        cmdins.Parameters.AddWithValue("@addedby", Session["fullname"].ToString());
                        cmdins.Parameters.AddWithValue("@addeddatetime", addeddatetime.ToString());


                        cmdins.ExecuteNonQuery();
                        conins.Close();
                    }

                    Response.Write("<Script>alert('New Connection Details Added Successfully')</script>");

                    monthcodename.ClearSelection();
                    connectiontype.ClearSelection();
                    customername.Text = string.Empty;
                    customerphone.Text = string.Empty;
                    customerareadropdown.ClearSelection();
                    customerareaothertbox.Text= string.Empty;
                    subscriberid.Text= string.Empty;
                    packdetails.Text= string.Empty;
                    congivendate.Text= string.Empty;
                    monthlyamount.Text= string.Empty;
                    duedate.Text= string.Empty;
                    promoterlist.ClearSelection();
                    salesperson.Text= string.Empty;
                    actualprice.Text= string.Empty;
                    discount.Text= string.Empty;
                    commission.Text= string.Empty;
                    receivedamount.Text= string.Empty;
                    evdamount.Text= string.Empty;
                    remarks.Text= string.Empty;
                }
            }
            catch (Exception)
            {
                Response.Write("<Script>alert('New Connection Details not Added')</script>");
            }
        }
    }
}