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


    public partial class staffDashboard : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\VegiFruit\VegifruitDB.mdf;Integrated Security=True;Connect Timeout=30");

        String DisplayName = "";
        
        
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


            /// get the username from the saved cookie. If it is not exist, Redirect to the Login Page.
            if (checkSession("Fullname"))
            {
                DisplayName = Session["Fullname"].ToString();
                lbl_DisplayName.Text = DisplayName;  //Assign the text to the label
                
            }
            else
                Response.Redirect("Login?message=Please%20Login%20First", false);


            LoadChart();
            Chart_Successfull.Series[0].ChartType = System.Web.UI.DataVisualization.Charting.SeriesChartType.Area;
            LoadPieChart();
            Chart_Pie.Series[0].ChartType = System.Web.UI.DataVisualization.Charting.SeriesChartType.Pie;

        }
        protected void LoadChart()
        {
            //GetHashCode the virtual table from the database

            string qry = "SELECT product.price, productState.updateDate FROM product INNER JOIN productState ON productState.productID = product.id AND status='Pending' ORDER BY productState.updateDate";

            SqlCommand cmd = new SqlCommand(qry,con);
           

            SqlDataAdapter sda = new SqlDataAdapter(cmd);

            if (con.State == ConnectionState.Closed) con.Open();

            SqlDataReader sdr = cmd.ExecuteReader();

            Chart_Successfull.DataBindTable(sdr, "updateDate");

            sdr.Close();

        }
        protected void LoadPieChart()
        {
            //GetHashCode the virtual table from the database

            string qry = "SELECT product.price, productState.updateDate FROM product INNER JOIN productState ON productState.productID = product.id AND status='Pending' ORDER BY productState.updateDate";

            SqlCommand cmd = new SqlCommand(qry, con);


            SqlDataAdapter sda = new SqlDataAdapter(cmd);

            if (con.State == ConnectionState.Closed) con.Open();

            SqlDataReader sdr = cmd.ExecuteReader();

            Chart_Pie.DataBindTable(sdr, "updateDate");

            sdr.Close();
        }

    }
}