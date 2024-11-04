using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyEngTutor_Website
{
    public partial class Res : System.Web.UI.Page
    {
        protected void Page_PreInit(object sender, EventArgs e)
        {
            string[] value = (string[])Session["values"];
            if (!IsPostBack)
            {
                if (value != null)
                {
                    this.MasterPageFile = "~/UserMasterPage.Master";
                }
                else
                {
                    this.MasterPageFile = "~/VisitorMasterPage.Master";
                }
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

    }
}