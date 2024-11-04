using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyEngTutor_Website
{
    public partial class unitPage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=myEngTutorDB;Integrated Security=True");
        string buttonString;
        string email;
        protected void Page_Load(object sender, EventArgs e)
        {

            string buttonClicked = Request.QueryString["button"];

            string[] splitData = buttonClicked.Split(',');

            string skill = splitData[0].ToString();
            string skill1 = splitData[1].ToString();
            string skill2 = splitData[2].ToString();
            string[] value5 = (string[])Session["values"];
            if (value5 != null)
            {
                pageer1.Attributes["href"] = "homePage.aspx";
            }
            else
            {
                pageer1.Attributes["href"] = "Default.aspx";
            }
            A1.Attributes["href"] = "index.aspx" + "?button=" + skill1 ;
            A2.Attributes["href"] = "courseContents.aspx" + "?button=" + skill1 + "," + skill2;

            string[] value2 = (string[])Session["values"];
            if (!IsPostBack)
            {
                if (value2 != null)
                {
                    email = value2[0];
                }
            }
            string imgSource = "";

            //string email = Session["email"].ToString();
            
            string unitName = skill;

            SqlCommand cmd;
            SqlDataReader reader;

            if (value2 != null)
            {
                con.Open();
                string getQuery =
                    "SELECT completed" +
                    "FROM unitCompleted" +
                    "WHERE email='" + email + "' AND unitName='" + unitName + "'";
           

            cmd = new SqlCommand("checkCompletion", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@email", email);
            cmd.Parameters.AddWithValue("@unit", unitName);
            cmd.ExecuteNonQuery();

            reader = cmd.ExecuteReader();

            string valuePresent = "";

            while (reader.Read())
            {
                valuePresent = reader["completed"].ToString();
                
            }

            con.Close();

            con.Open();

            if(valuePresent == null && email != null)
            {
                string setOnceQuery = 
                    "INSERT INTO unitCompleted VALUES('" + email + "', '" + unitName + "', 'INCOMPLETE')";

                cmd = new SqlCommand(setOnceQuery, con);

            }
            else
            {

            }

            con.Close();
            }
            int questionCounter = 0;

            buttonString = Request.QueryString["button"];
            string type = (string)Session["type"];
            string value1 = (string)Session["Level"];


                    //string[] splitString = buttonString.Split(',');

                    Debug.Print("Ger " + type);

            //string skill = splitString[1];
            //string level = splitString[2];


            /////////////////LOAD TRANSCRIPT////////////////////
            con.Open();

            //transcript.InnerText = "";

            //string transQuery = 
                //"SELECT ContentTranscriptionOrText" +
                //"FROM Content INNER JOIN units ON Content.unitName = units.unitID" +
                //"WHERE units.unitName='" + unitName + "'";


            cmd = new SqlCommand("tranQuery", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@unitData", "Unit 1: Podcast: Environmental issues");
            cmd.ExecuteNonQuery();

            reader = cmd.ExecuteReader();

            List<string> transData = new List<string>();

            while (reader.Read())
            {
                string value = reader["TranscriptionOrText"].ToString();
                transData.Add(value);
            }

            con.Close();

            //uniter.Style.Add("display", "none"); --HOW TO MODIFY CSS USING C#

            foreach (string trans in transData)
            {
                transcriptBody.InnerText = trans;
            }



            /////////////////LOAD SECTION A/////////////////////



            con.Open();
            
            //string sqlQuery = "SELECT question, questionOrder FROM Questions WHERE questionType='TF' AND section='A' AND unitName='Unit 3: How to be Help People In Need' AND levelName='FOUNDATION' AND skillName='READING' ORDER BY questionOrder ASC";
            //            string sqlQuery =

            //                "SELECT question.Question, question.Question_Order, question.Question_Type, Content.urlLink, Section.Id, Content.unitName, units.levelName, units.skillName " +
            //                "FROM (((question " +
            //               "INNER JOIN Content ON question.ContentID = Content.Id)" +
            //                "INNER JOIN Section ON question.Id = Section.question_ID)" +
            //                "INNER JOIN units ON Content.unitName = units.unitID)" +
            //                "WHERE question.Question_Type='TF' AND Content.unitName=2 AND units.levelName='" + level + "' AND units.skillName='" + skill + "' " +
            //                "ORDER BY question.Question_Order ASC";


            cmd = new SqlCommand("loadQuestions", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@level", value1);
            cmd.Parameters.AddWithValue("@skill", type);
            cmd.Parameters.AddWithValue("@type", "TF");
            cmd.Parameters.AddWithValue("@unitName", unitName);
            cmd.ExecuteNonQuery();
            

            reader = cmd.ExecuteReader();

            List<string> dataA = new List<string>();

            while (reader.Read())
            {
                
                string value = reader["Question"].ToString();
                dataA.Add(value);
            }
            
            con.Close();


            foreach (string questionData in dataA)
            {
                transfererA.InnerText = transfererA.InnerText + questionData + ",";
                questionCounter++;
            }

            ///////////////////LOAD SECTION B//////////////////

            List<string> dataB = new List<string>();
            con.Open();
            //sqlQuery = "SELECT Questions.question, Questions.questionOrder, Answers.answerID, Answers.answer FROM Questions INNER JOIN Answers ON Questions.answerID=Answers.answerID WHERE Questions.questionType='MCQ' AND Questions.section='B' AND Questions.unitName='Unit 3: How to be Help People In Need' AND Questions.levelName='FOUNDATION' AND Questions.skillName='READING' AND Answers.answerID = Questions.answerID ORDER BY questionOrder ASC";

//            sqlQuery =
//                "SELECT question.Question, question.Question_Order, question.Question_Type, Content.urlLink, Section.Id, Content.unitName, units.levelName, units.skillName " +
//                "FROM (((question " +
//                "INNER JOIN Content ON question.ContentID = Content.Id) " +
//                "INNER JOIN Section ON question.Id = Section.question_ID) " +
//                "INNER JOIN units ON Content.unitName = units.unitID) " +
//                "WHERE question.Question_Type='MCQ' AND Content.unitName=1 AND units.levelName='" + level + "' AND units.skillName='" + skill + "' " +
//                "ORDER BY question.Question_Order ASC";

            cmd = new SqlCommand("loadQuestions", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@level", value1);
            cmd.Parameters.AddWithValue("@skill", type);
            cmd.Parameters.AddWithValue("@type", "MCQ");
            cmd.Parameters.AddWithValue("@unitName", unitName);
            cmd.ExecuteNonQuery();

            //Page.Response.Write("<script>console.log('" + level + "')</script>");

            reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                string value = reader["Question"].ToString() + "$" + reader["answers"].ToString();

                

                dataB.Add(value);
            }

            con.Close();

            foreach (string questionData in dataB)
            {
                transfererB.InnerText = transfererB.InnerText + questionData + "/";
                questionCounter++;
            }

            ///////////////////LOAD SECTION C//////////////////
            List<string> dataC = new List<string>();
            con.Open();
            //sqlQuery = "SELECT question, questionOrder FROM Questions WHERE questionType='FITB' AND section='C' AND unitName='Unit 3: How to be Help People In Need' AND levelName='FOUNDATION' AND skillName='READING' ORDER BY questionOrder ASC";
//            sqlQuery =
//                "SELECT question.Question, question.Question_Order, question.Question_Type, Content.urlLink, Section.Id, Content.unitName, units.levelName, units.skillName " +
//                "FROM (((question " +
//                "INNER JOIN Content ON question.ContentID = Content.Id) " +
//               "INNER JOIN Section ON question.Id = Section.question_ID) " +
//               "INNER JOIN units ON Content.unitName = units.unitID) " +
//               "WHERE question.Question_Type='FITB' AND Content.unitName=3 AND units.levelName='" + level + "' AND units.skillName='" + skill + "' " +
//                "ORDER BY question.Question_Order ASC";

            cmd = new SqlCommand("loadQuestions", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@level", value1);
            cmd.Parameters.AddWithValue("@skill", type);
            cmd.Parameters.AddWithValue("@type", "FITB");
            cmd.Parameters.AddWithValue("@unitName", unitName);
            cmd.ExecuteNonQuery();

            reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                string value = reader["Question"].ToString();
                dataC.Add(value);
            }

            con.Close();

            foreach (string questionData in dataC)
            {
                transfererC.InnerText = transfererC.InnerText + questionData + ",";
                questionCounter++;
            }

            Session["questionCount"] = questionCounter;


            //////////////// GET ANSWERS ///////////////////
            List<string> answers = new List<string>();
            con.Open();
            //string ansQuery = "SELECT Answers.answerID, Answers.answer, Questions.section, Questions.questionOrder FROM Answers INNER JOIN Questions ON Answers.answerID=Questions.answerID WHERE Questions.skillName='READING' AND Questions.levelName='FOUNDATION' AND Questions.unitName='Unit 3: How to be Help People In Need' ORDER BY section, questionOrder ASC";

//            string ansQuery =
//
//                "SELECT Section.question_ID, question.Question_Type, question.ContentID, Content.Id, Section.Id, Section.answers, question.Id, question.Question_Order, units.unitID, units.levelName, units.skillName, Content.unitName" +
//                "FROM (((Section " +
//               "INNER JOIN question ON Section.question_ID = question.Id) " +
//                "INNER JOIN Content ON question.ContentID = Content.Id) " +
//                "INNER JOIN units ON Content.unitName = units.unitID) " +
//                "WHERE units.skillName='" + skill + "' AND units.levelName='" + level + "' AND Content.unitName=1 " +
//                "ORDER BY Section.Id, question.Question_Order ASC";

            cmd = new SqlCommand("loadAnswers", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@level", value1);
            cmd.Parameters.AddWithValue("@skill", type);
            cmd.Parameters.AddWithValue("@unitName", unitName);
            cmd.ExecuteNonQuery();

            
            reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                string value = reader["answers"].ToString() + "." + reader["Question_Type"].ToString();
                //assuming Section ID = 'A, B or C'
                answers.Add(value.Trim());
            }

            con.Close();

            foreach (string answer in answers)
            {

                //Page.Response.Write("<script>console.log('" + answer + "');</script>");

                if (answer.EndsWith("F")) //Because TF ends with F
                {
                    answersA.InnerText = answersA.InnerText + answer + "$";
                    //Page.Response.Write("<script>console.log('" + answer + "');</script>");
                }
                else if (answer.EndsWith("Q")) //Because MCQ ends with Q
                {
                    answersB.InnerText = answersB.InnerText + answer + "$";
                    

                }
                else if (answer.EndsWith("B"))//Because FITB ends with B
                {
                    answersC.InnerText = answersC.InnerText + answer + "$";
                }
                else
                {
                    //Page.Response.Write("<script>console.log('" + answer + "');</script>");
                    //Page.Response.Write("<script>console.log('" + "NOOOOOOOO               " + "');</script>");
                }

            }

        }


        protected void chkButton_Click(object sender, EventArgs e)
        {
            int totalQuestions = Int32.Parse(Session["questionCount"].ToString());
            int totalScore = Int32.Parse(score.InnerText);

          
            string unitName = taskHeader.InnerText;


            if (totalScore == totalQuestions && email != null)
            {

                string getQuery =
                    "SELECT completed" +
                    "FROM unitCompleted" +
                    "WHERE email='" + email + "' AND unitName='" + unitName + "'";

                SqlCommand cmd = new SqlCommand(getQuery, con);
                SqlDataReader reader = cmd.ExecuteReader();

                string valuePresent = "";

                while (reader.Read())
                {
                    valuePresent = reader["completed"].ToString();

                }

                con.Close();

                if (valuePresent == "INCOMPLETE")
                {
                    string setOnceQuery =
                        "INSERT INTO unitCompleted VALUES('" + email + "', '" + unitName + "', 'COMPLETE')";

                    cmd = new SqlCommand(setOnceQuery, con);

                }
                else
                {

                }


            }




        }


    }
}