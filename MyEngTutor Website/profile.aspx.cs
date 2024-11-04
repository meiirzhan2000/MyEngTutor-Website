using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyEngTutor_Website
{
    public partial class profile : System.Web.UI.Page
    {

        string[] userInfo;

        
        protected void Page_Load(object sender, EventArgs e)
        {

            string Email = "";

            Master.FindControl("footerSlideContainer").Visible = false;
            userInfo = (string[])Session["values"];
            if (userInfo != null)
            {
                if (userInfo[4] != null)
                {
                    if (userInfo[4] != "" || userInfo[4] != "NULL")
                    {
                        fname.InnerText = userInfo[2];
                        firstName.InnerText = userInfo[2];
                        sName.InnerText = userInfo[3];
                        email.InnerText = userInfo[0];

                        Email = email.InnerText;

                        profileImage.Src = userInfo[4];
                    }
                }
            }


            //To get the number of completed units for each skill

            //Already have Email

            /*
            string[] Skills = {"LISTENING", "READING", "SPEAKING", "WRITING"};

            SqlConnection con = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=myEngTutorDB;Integrated Security=True");


            List<string> progress = new List<string>(); //[hello, world, clown, yo]


            foreach (string skill in Skills)
            {
                con.Open();

                string query =

                    "SELECT COUNT(unitCompleted.completed) AS numOfUnitsCompleted" +
                    "FROM unitCompleted INNER JOIN units ON unitCompleted.unitName = units.unitName" +
                    "WHERE unitCompleted.email='" + Email + "' AND units.skillName = '" + skill + "'";

                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataReader reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    string value = reader["numOfUnitsCompleted"].ToString();
                    progress.Add(value);
                }

                con.Close();

            }

            */

            //listeningPrac.Style.Add("width", progress[0] + "%");
            //readingPrac.Style.Add("width", progress[1] + "%");
            //speakingPrac.Style.Add("width", progress[2] + "%");
            //writingPrac.Style.Add("width", progress[3] + "%");





            // To get the level acheived in each exam
            //Advanced - 100%
            //Intermediate - 66%
            //Foundation - 33%

            string level = "";

            string query2 = 
                "SELECT unitCompleted.completed" +
                "FROM unitCompleted" +
                "WHERE unitCompleted.email= '' AND unitCompleted.unitName='" + level + "'";


        }


    }
}