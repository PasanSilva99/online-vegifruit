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
    public class ProductItem
    {
        public String name { get; set; } = " ";
        public String weight { get; set; } = " ";
        public String price { get; set; } = " ";
    }

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
            fillItemList();
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

            sdr.Close();

        }

        protected void fillItemList()
        {
            List<ProductItem> productItems = new List<ProductItem>();

            String qry = "SELECT product.name, product.amount, product.price FROM product INNER JOIN productState ON productState.productID = product.id AND nic=@nic ORDER BY productState.updateDate";

            try
            {

                if (con.State == ConnectionState.Closed) con.Open();

                SqlCommand cmd = new SqlCommand(qry, con);
                cmd.Parameters.AddWithValue("@nic", NIC);

                SqlDataReader sdr = cmd.ExecuteReader();

                while (sdr.Read())
                {
                    String name = sdr.GetString(0);
                    String amount = sdr.GetValue(1).ToString();
                    String price = sdr.GetValue(2).ToString();

                    productItems.Add(new ProductItem { name = name, weight = amount, price = price });
                }
                cmd.Dispose();
                sdr.Close();

                if(productItems.Count > 0)
                {
                    String CodeList = "";

                    foreach(ProductItem item in productItems)
                    {
                        CodeList = CodeList + GenerateItem(item.name, item.weight, item.price);
                    }

                    myItems.InnerHtml = CodeList;
                }
            }
            catch { }
            finally
            {
               
                if (con.State == ConnectionState.Open) con.Close();
            }

        }

        protected String GenerateItem(String ItemName, String ItemWeight, String ItemPrice)
        {
            String code = "<li class='list-group-item'> " +
                                 "<div class='row align-items-center no-gutters'>" +
                                       "<div class='col mr-2'>" +
                                       "<h6 class='mb-0'>" +
                                            "<strong>"+ItemName+" "+ItemWeight+" Kg</strong>" +
                                       "</h6>" +
                                       "<span class='text-xs'>Rs."+ItemPrice+"/=</span>" +
                                 "</div>" +
                          "</li>";

            return code;
        }


    }
}