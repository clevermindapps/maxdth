using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace maxdth
{
    public partial class customernumberstotal : System.Web.UI.Page
    {
        string strconn = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                //--------------- total ------------------//
                SqlConnection tcon = new SqlConnection(strconn);
                tcon.Open();
                string tsql = "select count(addedby) from custphnumbers where addedby = @addedby";
                SqlCommand tcmd = new SqlCommand(tsql, tcon);
                tcmd.Parameters.AddWithValue("@addedby", Session["fullname"].ToString());
                SqlDataReader treader = tcmd.ExecuteReader();
                
                if (treader.Read())
                {
                    totallbl.Text = treader[0].ToString();
                }
                tcon.Close();

                //--------------- paid ------------------//

                SqlConnection paidcon = new SqlConnection(strconn);
                paidcon.Open();
                string paidsql = "select count(addedby) from custphnumbers where addedby = @addedby and ispaid = 'true'";
                SqlCommand paidcmd = new SqlCommand(paidsql, paidcon);
                paidcmd.Parameters.AddWithValue("@addedby", Session["fullname"].ToString());
                SqlDataReader paidr = paidcmd.ExecuteReader();

                if (paidr.Read())
                {
                    paidlbl.Text = paidr[0].ToString();
                }
                paidcon.Close();

                //--------------- pending ------------------//
                SqlConnection pndcon = new SqlConnection(strconn);
                pndcon.Open();
                string pndsql = "select count(addedby) from custphnumbers where addedby = @addedby and ispaid = 'false'";
                SqlCommand pndcmd = new SqlCommand(pndsql, pndcon);
                pndcmd.Parameters.AddWithValue("@addedby", Session["fullname"].ToString());
                SqlDataReader pndr = pndcmd.ExecuteReader();

                if (pndr.Read())
                {
                    pendinglbl.Text = pndr[0].ToString();
                }
                pndcon.Close();
            }
            catch (Exception)
            {

            }
        }
    }
}