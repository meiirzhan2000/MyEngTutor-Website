using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;
using Antlr.Runtime;
using Newtonsoft.Json.Linq;

namespace MyEngTutor_Website
{
    public partial class index : System.Web.UI.Page
    {
        //SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\content.mdf;Integrated Security=True");
        //SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Owner\\source\\repos\\WAPPAssignment\\App_Data\\content.mdf;Integrated Security=True");
        SqlConnection con = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=myEngTutorDB;Integrated Security=True");
        

        protected void Page_Load(object sender, EventArgs e)
            
        {
            string[] value = (string[])Session["values"];
            if (value != null)
            {
                pageer1.Attributes["href"] = "homePage.aspx";
            }
            else
            {
                pageer1.Attributes["href"] = "Default.aspx";
            }

                string type = "";
            string img = null;
            string[] buttonData = Request.QueryString["button"].Split(',');

            string buttonClicked = buttonData[0];
            //string email = buttonData[1];
            string email = "";

            string skill = buttonClicked;

            if (buttonClicked != null)
            {
                if (buttonClicked == "WRITING")
                {
                    type = "WRITING";
                    img = "Images/MainPageIMG.png";
                    Session["type"] = "WRITING";
                }
                else if (buttonClicked == "SPEAKING")
                {
                    type = "SPEAKING";
                    img = "Images/speakingMain.PNG";
                    Session["type"] = "SPEAKING";

                }
                else if (buttonClicked == "READING")
                {

                    type = "READING";
                    img = "Images/speakingMain.PNG";
                    Session["type"] = "READING";

                }
                else if (buttonClicked == "LISTENING")
                {

                    type = "LISTENING";
                    img = "Images/speakingMain.PNG";
                    Session["type"] = "LISTENING";
                }
            }
            skillName.InnerText = type + " SKILLS";
            skillImage.Src = img;


            btnFoundation.Attributes.Add("href", "courseContents.aspx?button=" + buttonClicked + ",FOUNDATION");
            btnPIntermediate.Attributes.Add("href", "courseContents.aspx?button=" + buttonClicked + ",PRE-INTERMEDIATE");
            btnIntermediate.Attributes.Add("href", "courseContents.aspx?button=" + buttonClicked + ",INTERMEDIATE");
            btnAdvanced.Attributes.Add("href", "courseContents.aspx?button=" + buttonClicked + ",ADVANCED");



            
            //string skill = Request.QueryString["button"]; //Session["skill"].ToString(); <= or this ?

            string examTitle = "";

            if(skill == "WRITING")
            {
                examTitle = "WRITING EXAM";

            }else if(skill == "SPEAKING")
            {
                examTitle = "SPEAKING EXAM";

            }
            else if(skill == "READING")
            {
                examTitle = "READING EXAM";

            }
            else if (skill == "LISTENING")
            {
                examTitle = "LISTENING EXAM";

            }


            con.Open();

            string getQuery =
                "SELECT unitCompleted.completed FROM unitCompleted WHERE unitCompleted.email='" + email + "' AND unitCompleted.unitName='" + examTitle + "'";

            SqlCommand cmd = new SqlCommand(getQuery, con);
            SqlDataReader reader = cmd.ExecuteReader();

            string valuePresent = "";

            while (reader.Read())
            {
                valuePresent = reader["completed"].ToString();

            }

            con.Close();

            string examType = "";
            if (valuePresent == null)
            {
                string setOnceQuery =
                    "INSERT INTO unitCompleted VALUES('" + email + "', '" + examTitle + "', 'INCOMPLETE')";

                cmd = new SqlCommand(setOnceQuery, con);

                examType = "FOUNDATION";

            }
            else if (valuePresent == "INCOMPLETE")
            {
                examType = "FOUNDATION";


            }else if (valuePresent == "FOUNDATION")
            {
                examType = "INTERMEDIATE";

            }else if(valuePresent == "INTERMEDIATE")
            {
                examType = "ADVANCED";
            }

            btnExam.InnerText = "TAKE " + examTitle;

                                                            //LISTENING EXAM     //INTERMEDIATE
                                                                 //skill            //level
            btnExam.Attributes.Add("href", "exam.aspx?button=" + examTitle + "," + examType + "," + email);

        }

        protected void btnFoundation_ServerClick(object sender, EventArgs e)
        {
            string buttonClicked = Request.QueryString["button"];

            //btnFoundation.Attributes.Add("href", "courseContents.aspx?button=" + buttonClicked + ",FOUNDATION");

        }

        protected void btnPIntermediate_ServerClick(object sender, EventArgs e)
        {
            string buttonClicked = Request.QueryString["button"];

            //btnFoundation.Attributes.Add("href", "courseContents.aspx?button=" + buttonClicked + ",PRE-INTERMEDIATE");

        }

        protected void btnIntermediate_ServerClick(object sender, EventArgs e)
        {
            string buttonClicked = Request.QueryString["button"];
            //btnFoundation.Attributes.Add("href", "courseContents.aspx?button=" + buttonClicked + ",INTERMEDIATE");

        }

        protected void btnAdvanced_ServerClick(object sender, EventArgs e)
        {
            string buttonClicked = Request.QueryString["button"];
           // btnFoundation.Attributes.Add("href", "courseContents.aspx?button=" + buttonClicked + ",ADVANCED");
        }




    }
}