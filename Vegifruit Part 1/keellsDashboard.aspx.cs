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

    public class ProductItemKeells
    {
        public String nameK { get; set; } = " ";
        public String weightK { get; set; } = " ";
        public String priceK { get; set; } = " ";
    }



    public partial class keellsDashboard : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\VegiFruit\VegifruitDB.mdf;Integrated Security=True;Connect Timeout=30");

        String DispayName = "";
        

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

            String qry = "SELECT productState.updateDate, product.price FROM product INNER JOIN productState ON productState.productID = product.id AND status='Pending' ORDER BY productState.updateDate";

            SqlCommand cmd = new SqlCommand(qry, con);
           

            SqlDataAdapter sda = new SqlDataAdapter(cmd);

            if (con.State == ConnectionState.Closed) con.Open();

            SqlDataReader sdr = cmd.ExecuteReader();


            chrt_earnings.DataBindTable(sdr, "updateDate");

            sdr.Close();

        }

        protected void fillItemList()
        {
            List<ProductItemKeells> productItemsKeells = new List<ProductItemKeells>();

            String qry = "SELECT product.name, product.amount, product.price FROM product INNER JOIN productState ON productState.productID = product.id ORDER BY productState.updateDate";

            try
            {

                if (con.State == ConnectionState.Closed) con.Open();

                SqlCommand cmd = new SqlCommand(qry, con);
                

                SqlDataReader sdr = cmd.ExecuteReader();

                while (sdr.Read())
                {
                    String name = sdr.GetString(0);
                    String amount = sdr.GetValue(1).ToString();
                    String price = sdr.GetValue(2).ToString();

                    productItemsKeells.Add(new ProductItemKeells { nameK = name, weightK = amount, priceK = price });
                }
                cmd.Dispose();
                sdr.Close();

                if (productItemsKeells.Count > 0)
                {
                    String CodeList = "";

                    foreach (ProductItemKeells item in productItemsKeells)
                    {
                        CodeList = CodeList + GenerateItem(item.nameK, item.weightK, item.priceK);
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
                                            "<strong>" + ItemName + " " + ItemWeight + " Kg</strong>" +
                                       "</h6>" +
                                       "<span class='text-xs'>Rs." + ItemPrice + "/=</span>" +
                                 "</div>" +
                          "</li>";

            return code;
        }


    }
}