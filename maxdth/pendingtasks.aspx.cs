using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace maxdth
{
    public partial class pendingtasks : System.Web.UI.Page
    {
        string strconn = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        string strconnections = "SELECT count(taskname) FROM task_tbl WHERE taskname='New Connection' AND taskstatus!='Completed' AND isactive='1'";
        string strservices = "SELECT count(taskname) FROM task_tbl WHERE taskname='Service' AND taskstatus!='Completed' AND isactive='1'";
        string strrecharges = "SELECT count(taskname) FROM task_tbl WHERE taskname='Recharge' AND taskstatus!='Completed' AND isactive='1'";
        string strshiftings = "SELECT count(taskname) FROM task_tbl WHERE taskname='Shifting' AND taskstatus!='Completed' AND isactive='1'";
        string straccessories = "SELECT count(taskname) FROM task_tbl WHERE taskname='Accessories' AND taskstatus!='Completed' AND isactive='1'";
        string strpendingamt = "SELECT count(taskname) FROM task_tbl WHERE taskname='Pending Amount' AND taskstatus!='Completed' AND isactive='1'";
        protected void Page_Load(object sender, EventArgs e)
        {
            // new connection count//
            SqlConnection connc = new SqlConnection(strconn);
            connc.Open();
            SqlCommand cmdnc = new SqlCommand(strconnections, connc);
            SqlDataReader drnc = cmdnc.ExecuteReader();
            if (drnc.Read())
            {
                connections.Text = drnc[0].ToString();
            }
            connc.Close();

            // services count//
            SqlConnection consr = new SqlConnection(strconn);
            consr.Open();
            SqlCommand cmdsr = new SqlCommand(strservices, consr);
            SqlDataReader drsr = cmdsr.ExecuteReader();
            if (drsr.Read())
            {
                services.Text = drsr[0].ToString();
            }
            consr.Close();

            // recharge count//
            SqlConnection conrc = new SqlConnection(strconn);
            conrc.Open();
            SqlCommand cmdrc = new SqlCommand(strrecharges, conrc);
            SqlDataReader drrc = cmdrc.ExecuteReader();
            if (drrc.Read())
            {
                recharges.Text = drrc[0].ToString();
            }
            conrc.Close();

            // shifting count//
            SqlConnection consh = new SqlConnection(strconn);
            consh.Open();
            SqlCommand cmdsh = new SqlCommand(strshiftings, consh);
            SqlDataReader drsh = cmdsh.ExecuteReader();
            if (drsh.Read())
            {
                shiftings.Text = drsh[0].ToString();
            }
            consh.Close();

            // accessories count//
            SqlConnection conac = new SqlConnection(strconn);
            conac.Open();
            SqlCommand cmdac = new SqlCommand(straccessories, conac);
            SqlDataReader drac = cmdac.ExecuteReader();
            if (drac.Read())
            {
                accessories.Text = drac[0].ToString();
            }
            conac.Close();

            // pending amount count//
            SqlConnection conpn = new SqlConnection(strconn);
            conpn.Open();
            SqlCommand cmdpn = new SqlCommand(strpendingamt, conpn);
            SqlDataReader drpn = cmdpn.ExecuteReader();
            if (drpn.Read())
            {
                pendingamt.Text = drpn[0].ToString();
            }

            conpn.Close();
        }

        protected void tasks_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void completedtasksgridview_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}