using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vegifruit_Part_1
{
    public partial class staffDashboard : System.Web.UI.Page
    {

        String DisplayName = "";        
        
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


            /// get the username from the saved cookie. If it is not exist, Redirect to the Login Page.
            if (checkSession("Fullname"))
            {
                DisplayName = Session["Fullname"].ToString();
                lbl_DisplayName.Text = DisplayName;  //Assign the text to the label
            }
            else
                Response.Redirect("Login?message=Please%20Login%20First", false);

                

        }


    }
}