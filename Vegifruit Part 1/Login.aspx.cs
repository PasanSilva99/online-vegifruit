﻿using System;
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
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\pasan\OneDrive\Documents\VegifruitDB.mdf;Integrated Security=True;Connect Timeout=30");

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

                String qry = "SELECT count(*), Nic FROM Farmer WHERE Email=@email AND Password=@psw";

                SqlCommand cmd = new SqlCommand(qry, con);
                cmd.Parameters.AddWithValue("@email", tb_email.Text);

                String passwordHash = CreateMD5(tb_psw.Text);

                cmd.Parameters.AddWithValue("@psw", passwordHash);

                int res = 0;

                SqlDataReader sdr = cmd.ExecuteReader();

                while (sdr.Read())
                {
                    res = sdr.GetInt32(0);

                    if (res > 0)
                    {
                        Response.Redirect("dashboard", false);
                        Session["loggedNIC"] = sdr.GetString(1);
                        Session["priv"] = "Farmer";
                    }
                    else
                    {
                        String qrystaff = "SELECT count(*), Nic, type FROM Staff WHERE Email=@email AND Password=@psw";

                        SqlCommand cmdstaff = new SqlCommand(qry, con);
                        cmd.Parameters.AddWithValue("@email", tb_email.Text);

                        String passwordHashstaff = CreateMD5(tb_psw.Text);

                        cmd.Parameters.AddWithValue("@psw", passwordHashstaff);

                        int resstaff = 0;

                        SqlDataReader sdrstaff = cmd.ExecuteReader();

                        while (sdrstaff.Read())
                        {
                            resstaff = sdrstaff.GetInt32(0);

                            if (resstaff > 0)
                            {
                                Session["loggedNIC"] = sdrstaff.GetString(1);
                                Session["priv"] = sdrstaff.GetString(2);
                            }
                            else
                            {

                            }
                        }
                    }
                }

                
            }
            catch
            {

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