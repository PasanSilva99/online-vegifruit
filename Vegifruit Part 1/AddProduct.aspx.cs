using System;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace Vegifruit_Part_1
{
    public partial class AddProduct : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Vegifruit\VegifruitDB.mdf;Integrated Security=True;Connect Timeout=30");

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
            String savedImagePath2=" ", savedImagePath3=" ", savedImagePath4=" ", savedImagePath5=" ";

            //Save the File to the Directory (Folder).
            ImageUpload1.SaveAs(folderPath + Path.GetFileName(savedimagepath));

            try
            {
                // Other images if the user has uploadted,.
                if (ImageUpload2.FileName != null)
                {
                    file2 = ImageUpload2.FileName.Split('.');

                    //Save the File to the Directory (Folder).
                    ImageUpload2.SaveAs(folderPath + Path.GetFileName(ImageUpload2.FileName));

                    savedImagePath2 = folderPath + @"/" + DateTime.Now.ToString("yyyyMMddhhmmss") + "." + file2[file2.Length - 1];
                }
            }
            catch { }
            try
            {
                // Other images if the user has uploadted,.
                if (ImageUpload3.FileName != null)
                {
                    file3 = ImageUpload3.FileName.Split('.');

                    //Save the File to the Directory (Folder).
                    ImageUpload3.SaveAs(folderPath + Path.GetFileName(ImageUpload3.FileName));

                    savedImagePath3 = folderPath + @"/" + DateTime.Now.ToString("yyyyMMddhhmmss") + "." + file3[file3.Length - 1];
                }
            }
            catch { }
            try
            {
                // Other images if the user has uploadted,.
                if (ImageUpload4.FileName != null)
                {
                    file4 = ImageUpload4.FileName.Split('.');

                    //Save the File to the Directory (Folder).
                    ImageUpload4.SaveAs(folderPath + Path.GetFileName(ImageUpload4.FileName));

                    savedImagePath4 = folderPath + @"/" + DateTime.Now.ToString("yyyyMMddhhmmss") + "." + file4[file4.Length - 1];
                }
            }
            catch { }
            try
            {
                // Other images if the user has uploadted,.
                if (ImageUpload5.FileName != null)
                {
                    file5 = ImageUpload5.FileName.Split('.');

                    //Save the File to the Directory (Folder).
                    ImageUpload5.SaveAs(folderPath + Path.GetFileName(ImageUpload5.FileName));

                    savedImagePath5 = folderPath + @"/" + DateTime.Now.ToString("yyyyMMddhhmmss") + "." + file5[file5.Length - 1];

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