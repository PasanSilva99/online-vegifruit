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
    public partial class Profile : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Vegifruit\VegifruitDB.mdf;Integrated Security=True;Connect Timeout=30");

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

        String NIC = " ";

        protected void Page_Load(object sender, EventArgs e)
        {
            // get the user name form the saved cookie. If it is not exists, Redirect to the Login Page.
            if (checkSession("loggedNIC"))
            {
                NIC = Session["loggedNIC"].ToString();
            }
            else
                Response.Redirect("Login?message=Please%20Login%20First", false);

            loadUser();

        }

        protected void loadUser()
        {
            String qry = "SELECT * FROM Farmer WHERE Nic=@nic";

            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@nic", NIC);

            try
            {
                if (con.State == ConnectionState.Closed) con.Open();
                SqlDataReader sdr = cmd.ExecuteReader();

                while (sdr.Read())
                {


                    String name = sdr.GetString(1);
                    String email = sdr.GetString(0);
                    String fname = sdr.GetString(2);
                    String lname = sdr.GetString(3);
                    String Address = sdr.GetString(4) + sdr.GetString(5) + sdr.GetString(6) + sdr.GetString(7);
                    String Nic = sdr.GetString(8);
                    String Image = sdr.GetString(9);
                    String Phone = sdr.GetString(11);


                    if(email!=null)
                        tb_email.Text = email;
                    if(name!=null)
                        tb_UserName.Text = name;
                    if(fname!=null)
                        tb_firstName.Text = fname;
                    if(lname!=null)
                        tb_lastName.Text = lname;
                    if(Phone!=null)
                        tb_phone.Text = Phone;
                    if (Address != null)
                        tb_address.Text = Address;
                    if (Image != null)
                        img_profPic.Src = Image;
                }
            }
            catch { }
        }

        protected void savePic_Click(object sender, EventArgs e)
        {

        }

        protected void saveSettings_Click(object sender, EventArgs e)
        {
            String UserName = tb_UserName.Text;
            String Email = tb_email.Text;
            String fName = tb_firstName.Text;
            String lName = tb_lastName.Text;

            String qry = "UPDATE SET " +
                "UserName=@user, " +
                "FirstName=@fname, " +
                "LastName=@lname, " +
                "WHERE Email=@email";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@user", UserName);
            cmd.Parameters.AddWithValue("@fname", fName);
            cmd.Parameters.AddWithValue("@lname", lName);
            cmd.Parameters.AddWithValue("@email", Email);

            try
            {
                if (con.State == ConnectionState.Closed) con.Open();
                cmd.ExecuteNonQuery();
            }
            catch { }
            finally
            {
                cmd.Dispose();
                if (con.State == ConnectionState.Open) con.Close();
            }
        }

        protected void saveContacts_Click(object sender, EventArgs e)
        {
            String Addresss = tb_address.Text;
            String Phone = tb_phone.Text;

            String qry = "UPDATE SET " +
                "AddressL1=@addr, " +
                "Phone=@phone" +
                "WHERE Email=@email";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@addr", Addresss);
            cmd.Parameters.AddWithValue("@phone", Phone);
            cmd.Parameters.AddWithValue("@email", tb_email.Text);

            try
            {
                if (con.State == ConnectionState.Closed) con.Open();
                cmd.ExecuteNonQuery();
            }
            catch { }
            finally
            {
                cmd.Dispose();
                if (con.State == ConnectionState.Open) con.Close();
            }

        }

        protected void fillAnalysis()
        {

        }


    }
}