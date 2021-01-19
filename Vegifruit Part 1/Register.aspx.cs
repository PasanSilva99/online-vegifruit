using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Text;

namespace Vegifruit_Part_1
{
    public partial class Register : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Vegifruit\VegifruitDB.mdf;Integrated Security=True;Connect Timeout=30");

        protected void Page_Load(object sender, EventArgs e)
        {
            WarningPassword.Visible = false;
            warningNic.Visible = false;

            String msg = Page.Request["message"];
            Label lbl_message = new Label();
            if (msg != null)
            {
                
                lbl_message.Text = msg;
                lbl_message.CssClass = "m-5 mb-0";

                message_pnl.Controls.Add(lbl_message);
            }
            else
            {
                lbl_message.CssClass = "m-0";
                message_pnl.Controls.Clear();
            }
        }

        protected void Register_Click(object sender, EventArgs e)
        {
            String FirstName = tb_firstName.Text;
            String LastName = tb_lastName.Text;
            String Email = tb_emailAddress.Text;
            String Phone = tb_phoneNumber.Text;
            String NIC = tb_nic.Text;
            String AddressL1 = tb_add_l1.Text;
            String AddressL2 = tb_add_l2.Text;
            String City = tb_city.Text;
            String ZipCode = tb_zipCode.Text;
            String Password = tb_psw.Text;

            String qry = "INSERT INTO Farmer VALUES (@Email, @userName, @fname, @lname, @addressL1, @addressL2, @city, @zip, @nic, @profilePic, @psw)";
                

            SqlCommand cmd = new SqlCommand(qry, con);

            String userName = FirstName + " " + LastName;

            cmd.Parameters.AddWithValue("@Email", Email);
            cmd.Parameters.AddWithValue("@userName", userName);
            cmd.Parameters.AddWithValue("@fname", FirstName);
            cmd.Parameters.AddWithValue("@lname", LastName);
            cmd.Parameters.AddWithValue("@addressL1", AddressL1);
            cmd.Parameters.AddWithValue("@addressL2", AddressL2);
            cmd.Parameters.AddWithValue("@city", City);
            cmd.Parameters.AddWithValue("@zip", ZipCode);
            cmd.Parameters.AddWithValue("@nic", NIC);
            cmd.Parameters.AddWithValue("@profilePic", @"~/assets/img/profile.svg");
            cmd.Parameters.AddWithValue("@psw", CreateMD5(Password));


            try
            {
                if(con.State == System.Data.ConnectionState.Closed) con.Open();

                int rowUpdate = cmd.ExecuteNonQuery();

                if (rowUpdate > 0)
                {
                    // User added successfully
                    Session["emailAdd"] = Email;
                    Response.Redirect("Login?message=Registration%20Successfull", false);
                }
                else
                {
                     // User registration error
                     Response.Redirect("Register?message=Registration%20Failed", false);
                }
            }
            catch(Exception ex)
            {
                Response.Redirect("Register?message=Error%20!%20Registration%20Failed!");
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