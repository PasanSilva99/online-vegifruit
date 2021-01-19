using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace Vegifruit_Part_1
{
    public partial class AddNewLocation : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Vegifruit\VegifruitDB.mdf;Integrated Security=True;Connect Timeout=30");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_search_Click(object sender, EventArgs e)
        {
            
        }

        public void MsgBox(String ex, Page pg, Object obj)
        {
            string s = "<SCRIPT language='javascript'>alert('" + ex.Replace("\r\n", "\\n").Replace("'", "") + "'); </SCRIPT>";
            Type cstype = obj.GetType();
            ClientScriptManager cs = pg.ClientScript;
            cs.RegisterClientScriptBlock(cstype, s, s.ToString());
        }

        protected void saveLocation_Click(object sender, EventArgs e)
        {

            String qry = "INSERT INTO Location VALUES(@nic, @latlng, @Name)";
            String latting = tb_latlng.Text;
            String LocName = tb_locName.Text;

            String NIC = "";

            if (Session["loggedNIC"] != null)
            {
                Session["latlng"] = latting;
                Session["locName"] = LocName;
                NIC = Session["loggedNIC"].ToString();
            }


            if (NIC == "")
            {
                Response.Redirect("Login", false); // if there is no login record, Please login in again

            }
            else
            {
                if (latting == null && LocName == null)
                {

                }
                else
                {
                    try
                    {
                        SqlCommand cmd = new SqlCommand(qry, con);
                        cmd.Parameters.AddWithValue("@nic", NIC);
                        cmd.Parameters.AddWithValue("@latlng", latting);
                        cmd.Parameters.AddWithValue("@Name", LocName);

                        // Open the connection if it is closed
                        if (con.State == ConnectionState.Closed) con.Open();

                        int rowCount = cmd.ExecuteNonQuery();

                        if(rowCount > 0)
                        {
                            MsgBox("Location Saved Successfully", this.Page, this);
                        }
                        else
                        {
                            MsgBox("Internal Error Occured when saving", this.Page, this);
                        }
                    }
                    catch
                    {

                    }
                }
            }

        }
    }
}