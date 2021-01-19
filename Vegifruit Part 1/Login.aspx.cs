using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Text;

namespace Vegifruit_Part_1
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Vegifruit\VegifruitDB.mdf;Integrated Security=True;Connect Timeout=30");

        Boolean isRedirect = false;

        protected void Page_Load(object sender, EventArgs e)
        {


            if (checkSession("emailAdd"))  // Check if null
                tb_email.Text = Session["emailAdd"].ToString();  // set the session value to the text box

            String msg = Page.Request["message"];
            String from = Page.Request["from"];
            Label lbl_message = new Label();
            if (msg != null)
            {

                lbl_message.Text = msg;
                lbl_message.CssClass = "m-1 mb-0";

                message_pnl.Controls.Add(lbl_message);
            }
            else
            {
                lbl_message.CssClass = "m-0";
                message_pnl.Controls.Clear();
            }

            // if the login is from a spesific page, redirect back with the values.



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

        protected void login_Click(object sender, EventArgs e)
        {
            try
            {
                if (con.State == ConnectionState.Closed) con.Open();

                String qry = "SELECT FirstName, LastName, Nic FROM Farmer WHERE Email=@email AND Password=@psw";

                SqlCommand cmd = new SqlCommand(qry, con);
                cmd.Parameters.AddWithValue("@email", tb_email.Text);

                String passwordHash = CreateMD5(tb_psw.Text);

                cmd.Parameters.AddWithValue("@psw", passwordHash);

                int res = 0;

                SqlDataReader sdr = cmd.ExecuteReader();

                bool isFarmer = false;

                String fName="", lName="", FullName="";

                while (sdr.Read())
                {
                    Response.Redirect("dashboard", false);
                    fName = sdr.GetString(0);
                    lName = sdr.GetString(1);
                    Session["FullName"] = fName + " " + lName;
                    Session["loggedNIC"] = sdr.GetString(2);
                    Session["priv"] = "Farmer";
                    isFarmer = true;
                }

                sdr.Close();

                bool isStaff = false;

                if (!(isFarmer))
                {
                    String qrystaff = "SELECT firstName, lastName, nic, type type FROM Staff WHERE Email=@email AND Password=@psw";

                    SqlCommand cmdstaff = new SqlCommand(qrystaff, con);
                    cmdstaff.Parameters.AddWithValue("@email", tb_email.Text);

                    String passwordHashstaff = CreateMD5(tb_psw.Text);

                    cmdstaff.Parameters.AddWithValue("@psw", passwordHashstaff);

                    cmd.Dispose();
                    
                    SqlDataReader sdrstaff = cmdstaff.ExecuteReader();

                    while (sdrstaff.Read())
                    {
                        isStaff = true;
                        fName = sdrstaff.GetString(0);
                        lName = sdrstaff.GetString(1);

                        Session["FullName"] = fName + " " + lName;
                        Session["loggedNIC"] = sdrstaff.GetString(2);
                        String priev = sdrstaff.GetString(3);
                        Session["priv"] = priev;

                        if (priev.Contains("doa"))
                        {
                            Response.Redirect("staffDashboard", false);
                        }
                        else if (priev.Contains("keells"))
                        {
                            Response.Redirect("keellsDashboard", false);
                        }


                    }
                         
                }

                if (!(isFarmer) && !(isStaff))
                {
                    Response.Redirect("Login?message='Login Failed. Please check your Email and Password. If you're not registered to the system, Please Register first.'", false);
                }

            }
            catch(Exception exc)
            {
                Response.Redirect("Login?message='" + exc.Message + "'");
            }
        }

        protected string CreateMD5(string input)
        {
            // Use input string to calculate MD5 hash
            using (System.Security.Cryptography.MD5 md5 = System.Security.Cryptography.MD5.Create())
            {
                byte[] inputBytes = System.Text.Encoding.ASCII.GetBytes(input);
                byte[] hashBytes = md5.ComputeHash(inputBytes);

                // Convert the byte array to hexadecimal string
                StringBuilder sb = new StringBuilder();
                for (int i = 0; i < hashBytes.Length; i++)
                {
                    sb.Append(hashBytes[i].ToString("X2"));
                }
                return sb.ToString();
            }
        }
    }
}