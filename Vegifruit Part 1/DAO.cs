using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Vegifruit_Part_1
{
	public class DAO
	{
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Vegifruit\VegifruitDB.mdf;Integrated Security=True;Connect Timeout=30");

        /// <summary>
        /// Returns List of product IDS
        /// </summary>
        /// <param name="NIC"></param>
        /// <returns></returns>
		public List<String> GetProductListFor(String NIC)
        {

            List<String> productIDs = new List<String>();

            String Qry = "SELECT productID FROM productOwner WHERE nic=@nic";

            try
            {
                if (con.State == ConnectionState.Closed) con.Open() ;

                SqlCommand cmd = new SqlCommand(Qry, con);
                cmd.Parameters.AddWithValue("@nic", NIC);

                SqlDataReader dataReader = cmd.ExecuteReader();

                while (dataReader.Read())
                {
                    productIDs.Add(dataReader.GetString(0));
                }
            }
            catch
            {

            }


            if (con.State == ConnectionState.Open) con.Close();

            return productIDs;
        }

        /// <summary>
        /// Returns List of Products
        /// </summary>
        /// <param name="NIC">NIC of the farmer</param>
        /// <returns>List Of Products</returns>
        public List<Product> GetProductList(String NIC)
        {
            List<String> IDList = GetProductListFor(NIC);
            List<Product> products = new List<Product>();

            foreach(String ID in IDList)
            {
                String Qry = "SELECT * FROM product WHERE id=@id";

                try
                {
                    if (con.State == ConnectionState.Closed) con.Open();

                    SqlCommand cmd = new SqlCommand(Qry, con);
                    cmd.Parameters.AddWithValue("@nic", NIC);

                    SqlDataReader dataReader = cmd.ExecuteReader();

                    while (dataReader.Read())
                    {
                        String id = dataReader.GetString(0),
                            Name = dataReader.GetString(1),
                            Weight = dataReader.GetValue(2).ToString(),
                            price = dataReader.GetValue(3).ToString(),
                            image1 = dataReader.GetValue(4).ToString(),
                            image2 = dataReader.GetString(5),
                            image3 = dataReader.GetString(6),
                            image4 = dataReader.GetString(7),
                            image5 = dataReader.GetString(8),
                            location = dataReader.GetString(9);

                        products.Add(new Product(id, Name, Weight, price, image1, image2, image3, image4, image5, location));

                    }
                }
                catch
                {

                }


                if (con.State == ConnectionState.Open) con.Close();

                

            }

            return products;

        }


    }
}