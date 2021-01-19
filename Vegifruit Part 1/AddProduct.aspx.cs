using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vegifruit_Part_1
{
    public partial class AddProduct : System.Web.UI.Page
    {
        String NIC = "not-set";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (checkSession("loggedNIC"))
                NIC = Session["loggedNIC"].ToString().Trim();
            else
            {
                Response.Redirect("Login?message=Please%20Login%First", false);
            }
        }

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

        protected void Save(object sender, EventArgs e)
        {
            String ProductName = tb_productName.Text;
            String Weight = tb_weight.Text;
            String Price = tb_price.Text;
            String LatLng = tb_latlng.Text;

            string folderPath = Server.MapPath("~/Files/"+NIC+"/");

            //Check whether Directory (Folder) exists.
            if (!Directory.Exists(folderPath))
            {
                //If Directory (Folder) does not exists Create it.
                Directory.CreateDirectory(folderPath);
            }

            string[] file1 = ImageUpload1.FileName.Split('.');
            String savedimagepath = folderPath + @"/" + DateTime.Now.ToString("yyyyMMddhhmmss") + "." + file1[file1.Length - 1];

            string[] file2, file3, file4, file5;
            String avedImagePath2, savedImagePath3, avedImagePath4, savedImagePath5;

            //Save the File to the Directory (Folder).
            ImageUpload1.SaveAs(folderPath + Path.GetFileName(savedimagepath));

            try
            {
                // Other images if the user has uploadted,.
                if (ImageUpload2.FileName != null)
                {
                    //Save the File to the Directory (Folder).
                    ImageUpload2.SaveAs(folderPath + Path.GetFileName(ImageUpload2.FileName));
                }
            }
            catch { }
            try
            {
                // Other images if the user has uploadted,.
                if (ImageUpload2.FileName != null)
                {
                    //Save the File to the Directory (Folder).
                    ImageUpload2.SaveAs(folderPath + Path.GetFileName(ImageUpload2.FileName));
                }
            }
            catch { }
            try
            {
                // Other images if the user has uploadted,.
                if (ImageUpload2.FileName != null)
                {
                    //Save the File to the Directory (Folder).
                    ImageUpload2.SaveAs(folderPath + Path.GetFileName(ImageUpload2.FileName));
                }
            }
            catch { }
            try
            {
                // Other images if the user has uploadted,.
                if (ImageUpload2.FileName != null)
                {
                    //Save the File to the Directory (Folder).
                    ImageUpload2.SaveAs(folderPath + Path.GetFileName(ImageUpload2.FileName));

                }
            }
            catch { }
            // Send the captured data to the database

            SaveProduct(ProductName, Weight, Price, LatLng, savedimagepath, savedImagePath2, savedImagePath3, savedImagePath4, savedImagePath5);

        }

        private void SaveProduct(string productName, string weight, string price, string latLng, string savedimagepath, string savedImagePath2, string savedImagePath3, string savedImagePath4, string savedImagePath5)
        {
            try {

                if (con.State == ConnectionState.Closed) con.Open();

                String QRY1 = "INSERT INTO Product " +
                    "VALUES (@id, @name, @amount, @type, @price, @image1, @image2, @image3, @image4, @image5, @location)";


                String GeneratedID = "PRD" + DateTime.Now.ToString("yyyyMMddhhmmss");

                SqlCommand cmd = new SqlCommand(QRY1, con);
                cmd.Parameters.AddWithValue("@id", GeneratedID);
                cmd.Parameters.AddWithValue("@name", productName);
                cmd.Parameters.AddWithValue("@amount", weight);
                cmd.Parameters.AddWithValue("@type", " Kg");
                cmd.Parameters.AddWithValue("@price", float.Parse(price));
                cmd.Parameters.AddWithValue("@image1", savedimagepath);
                cmd.Parameters.AddWithValue("@image2", savedImagePath2);
                cmd.Parameters.AddWithValue("@image3", savedImagePath3);
                cmd.Parameters.AddWithValue("@image4", savedImagePath4);
                cmd.Parameters.AddWithValue("@image5", savedImagePath5);
                cmd.Parameters.AddWithValue("@location", latLng);

                // Execute the Quary with a vr to save the row count
                int rowCount1 = cmd.ExecuteNonQuery();

                String QRY2 = "INSERT INTO productOwner VALUES(@productID, @nic)";

                cmd.Dispose();

                SqlCommand cmd2 = new SqlCommand(QRY2, con);
                cmd2.Parameters.AddWithValue("@productID", GeneratedID);
                cmd2.Parameters.AddWithValue("@nic", NIC);

                cmd2.Dispose();

                String QRY3 = "INSERT INTO productState VALUES (@id, @nic, @status, @date)";
                SqlCommand cmd3 = new SqlCommand(QRY3, con);
                cmd3.Parameters.AddWithValue("@id", GeneratedID);
                cmd3.Parameters.AddWithValue("@nic", NIC);
                cmd3.Parameters.AddWithValue("@status", "Pending");
                cmd3.Parameters.AddWithValue("@date", DateTime.Now.ToString("yyyy-MM-dd"));

                int rowCount3 = cmd3.ExecuteNonQuery();

                cmd3.Dispose();
            }
            catch(Exception exc)
            {
                Response.Redirect("Login?message=" + exc.Message);
            }
            finally
            {
                if (con.State == ConnectionState.Open) con.Close();
            }
        }
    }
}