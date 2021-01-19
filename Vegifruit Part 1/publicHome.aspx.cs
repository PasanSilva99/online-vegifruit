using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vegifruit_Part_1
{
    public partial class publicHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void openRegister(object sender, EventArgs e)
        {
            Response.Redirect("Register", false);
        }
    }
}