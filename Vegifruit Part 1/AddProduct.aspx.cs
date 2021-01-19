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



        }
    }
}