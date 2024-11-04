using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyEngTutor_Website
{
    public partial class UserMasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lnkWriting_ServerClick(object sender, EventArgs e)
        {

            Session["skill"] = "WRITING";
            Session["skillImage"] = "Images/MainPageIMG.png"; //NO IMAGE !
            //Response.Redirect("index.aspx");

        }

        protected void lnkSpeaking_ServerClick(object sender, EventArgs e)
        {
            Session["skill"] = "SPEAKING";
            Session["skillImage"] = "Images/speakingMain.PNG";
        }

        protected void lnkReading_ServerClick(object sender, EventArgs e)
        {
            Session["skill"] = "READING";
            Session["skillImage"] = "Images/MainPageIMG.png"; //NO IMAGE !
        }

        protected void lnkListening_ServerClick(object sender, EventArgs e)
        {
            Session["skill"] = "LISTENING";
            Session["skillImage"] = "Images/listeningMain.PNG";
        }
    }
}