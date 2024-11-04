using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyEngTutor_Website
{
    public partial class userPage : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            string[] value = (string[])Session["values"];
            if (value != null)
            {
                Label1.InnerText = "Welcome " + value[2] + " " + value[3] + "!";
            }

        }


    }
}