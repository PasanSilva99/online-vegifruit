using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Vegifruit_Part_1
{
    public partial class dashboard : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Vegifruit\VegifruitDB.mdf;Integrated Security=True;Connect Timeout=30");

        String DispayName = "";
        String NIC = " ";

        /// <summary>
        /// Che wether the session is null.
        /// </summary>
        /// <param name="sessid"></param>
        /// <returns></returns>
        protected bool checkSession(String sessid)
        {
            if (Session[sessid] != null && Session[sessid].ToString().Length > 0)
                return true;

            return false;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            // get the user name form the saved cookie. If it is not exists, Redirect to the Login Page.
            if (checkSession("FullName"))
            {
                DispayName = Session["FullName"].ToString();
                lbl_DisplayName.Text = DispayName; // Assign the text to the label that displays the user's name
                NIC = Session["loggedNIC"].ToString();
            }
            else
                Response.Redirect("Login?message=Please%20Login%20First", false);
            
            LoadChart();
            chrt_earnings.Series[0].ChartType = System.Web.UI.DataVisualization.Charting.SeriesChartType.Area;
        }

        protected void LoadChart()
        {
            //GetHashCode the vitual table form the database.

            String qry = "SELECT productState.updateDate, product.price FROM product INNER JOIN productState ON productState.productID = product.id AND nic=@nic AND status='Pending' ORDER BY productState.updateDate";

            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@nic", NIC);

            SqlDataAdapter sda = new SqlDataAdapter(cmd);

            if (con.State == ConnectionState.Closed) con.Open();

            SqlDataReader sdr = cmd.ExecuteReader();
 
            
            chrt_earnings.DataBindTable(sdr, "updateDate");


        }


    }
}