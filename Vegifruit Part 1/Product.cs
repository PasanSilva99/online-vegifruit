using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace Vegifruit_Part_1
{
    public class Product
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Vegifruit\VegifruitDB.mdf;Integrated Security=True;Connect Timeout=30");

        public Product(string id, string name, string weight, string price, string image1, string image2, string image3, string image4, string image5, string location)
        {
            ID = id;
            Name = name;
            Weight = float.Parse(weight, System.Globalization.CultureInfo.InvariantCulture);
            Price = float.Parse(price, System.Globalization.CultureInfo.InvariantCulture);
            ImagePath1 = image1;
            ImagePath2 = image2;
            ImagePath3 = image3;
            ImagePath4 = image4;
            ImagePath5 = image5;
            Location = location;
        }

        public String ID { get; set; } = "";
        public String Name { get; set; } = "";
        public float Weight { get; set; } = 0;
        public float Price { get; set; } = 0;
        public String ImagePath1 { get; set; } = "";
        public String ImagePath2 { get; set; } = "";
        public String ImagePath3 { get; set; } = "";
        public String ImagePath4 { get; set; } = "";
        public String ImagePath5 { get; set; } = "";
        public String Location { get; set; } = "";

        public String GetOwner()
        {
            try
            {
                if (con.State == ConnectionState.Closed) con.Open();
                String Qry = "SELECT nic FROM productOwner WHERE productID=@id";
                SqlCommand cmd = new SqlCommand(Qry, con);
                cmd.Parameters.AddWithValue("@id", ID.Trim());

                SqlDataReader sdr = cmd.ExecuteReader();

                String OwnerNIC = "";

                while (sdr.Read())
                {
                    OwnerNIC = sdr.GetString(0);
                }

                String QryGetOwner = "SELECT name FROM Farmer WHERE Nic=@nic";
                SqlCommand cmd2 = new SqlCommand(QryGetOwner, con);
                cmd2.Parameters.AddWithValue("@nic", OwnerNIC);

                SqlDataReader sqlDataReader = cmd2.ExecuteReader();

                while (sqlDataReader.Read())
                {
                    return sqlDataReader.GetString(0);
                }
            }
            catch { }
            finally
            {
                if (con.State == ConnectionState.Open) con.Close();
            }

            return "Can't Find The Owner";
        }
    }
}