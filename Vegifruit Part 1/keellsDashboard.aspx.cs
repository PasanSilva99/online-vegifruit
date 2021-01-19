using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vegifruit_Part_1
{
    public partial class keellsDashboard : System.Web.UI.Page
    {

        String DispayName = "";

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

        protected void Page_Load(object sender, EventArgs e)
        {
            // get the user name form the saved cookie. If it is not exists, Redirect to the Login Page.
            if (checkSession("FullName"))
            {
                DispayName = Session["FullName"].ToString();
                lbl_DisplayName.Text = DispayName; // Assign the text to the label that displays the user's name
            }
            else
                Response.Redirect("Login?message=Please%20Login%20First", false);
        }
    }
}