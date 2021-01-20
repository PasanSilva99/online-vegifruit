using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vegifruit_Part_1
{
    public partial class staffMap : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Vegifruit\VegifruitDB.mdf;Integrated Security=True;Connect Timeout=30");


        List<Product> products = new List<Product>();


        protected void Page_Load(object sender, EventArgs e)
        {
            products = GetProductList();

            foreach(Product product in products)
            {
                mapCardLoader.Controls.Add(GenerateCodeForPanel(product));
            }

            map_loader.InnerHtml = GenerateMap(); 
        }

        private String GenerateMap()
        {
            String Code = "" + initmap();
                
            return Code;
         }

        private String initmap()
        {
            return
            "<script>" +
            "let map;" +

            "function initMap() "+
            "{" +

                "var myLatlng = new google.maps.LatLng(-25.363882, 131.044922);" +

                "const pos1 = {" +
                    "lat: 6.727476264929106," +
                    "lng: 80.02175523681771," +
                "};" +

                "map = new google.maps.Map(document.getElementById('map'), {" +
                    "center: pos1," +
                    "zoom: 19," +
                "});" +

                



            "}" +


        "</script>" +

        "<div id='map' style='width: 100%; height: 80vh; background-color: antiquewhite;'></div>'";


        }

        private String CreateMarker()
        {
            return
                "var marker1 = new google.maps.Marker({" +
                    "position: pos1," +
                    "map: map," +
                    "draggable: false," +
                    "title: 'Set your location 1'" +
                "});";
        }


        private Panel GenerateCodeForPanel(Product product)
        {
            Panel panel = new Panel();
            panel.ID = product.ID;
            panel.CssClass = "card shadow m-2 d-flex justify-content-center align-items-center f w-100 ";
            panel.Attributes.Add("style", "height:280px;");

            Label label = new Label();
            label.Text = product.Name + " " + product.Weight+ "Kg \n Rs." + product.Price;

            Image image = new Image();
            image.Attributes.Add("src", product.ImagePath1);
            image.Height = 200;

            Button button = new Button();
            button.ID = product.ID;
            button.Text = "Find";
            button.CssClass = "btn btn-primary rounded-pill w-75 m-2";

            panel.Controls.Add(label);
            panel.Controls.Add(image);
            panel.Controls.Add(button);

            return panel;

        }

        private List<Product> GetProductList()
        {
            List<Product> products = new List<Product>();

            String Qry = "SELECT * FROM product";

            try
            {
                if (con.State == ConnectionState.Closed) con.Open();

                SqlCommand cmd = new SqlCommand(Qry, con);

                SqlDataReader dataReader = cmd.ExecuteReader();

                while (dataReader.Read())
                {
                    String id = dataReader.GetString(0),
                        Name = dataReader.GetString(1),
                        Weight = dataReader.GetValue(2).ToString(),
                        price = dataReader.GetValue(4).ToString(),
                        image1 = dataReader.GetValue(5).ToString(),
                        image2 = dataReader.GetString(6),
                        image3 = dataReader.GetString(7),
                        image4 = dataReader.GetString(8),
                        image5 = dataReader.GetString(9),
                        location = dataReader.GetString(10);

                    products.Add(new Product(id, Name, Weight, price, image1, image2, image3, image4, image5, location));

                }
            }
            catch
            {

            }


            if (con.State == ConnectionState.Open) con.Close();



            return products;
        }
    }
}