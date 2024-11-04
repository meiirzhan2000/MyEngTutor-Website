using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyEngTutor_Website
{
    public partial class exam : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=myEngTutorDB;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            string[] examDetails = Request.QueryString["button"].Split(',');

            string examHeader = examDetails[0]; //LISTENING EXAM 
            string examType = examDetails[1];  ///level//////FOUNDATION

            string email = examDetails[2];

            levelHeader.InnerText = examHeader;

            string[] splitHeader = examHeader.Split(',');

            string examTitle = splitHeader[0]; ///skill///////LISTENING

            
            //string unitName = levelHeader.InnerText;



            int questionCounter = 0;

            /////////////////LOAD TRANSCRIPT////////////////////

            /////////////////LOAD SECTION A/////////////////////

            con.Open();
            //string sqlQuery = "SELECT question, questionOrder FROM Questions WHERE questionType='TF' AND section='A' AND unitName='Unit 3: How to be Help People In Need' AND levelName='FOUNDATION' AND skillName='READING' ORDER BY questionOrder ASC";

            //string sqlQuery =

            //"SELECT question.Question, question.Question_Order, question.Question_Type, Content.urlLink, Section.section, Content.unitName, units.levelName, units.skillName " +
            //"FROM (((question " +
            //"INNER JOIN Content ON question.ContentID = Content.Id)" +
            //"INNER JOIN Section ON question.Id = Section.question_ID)" +
            //"INNER JOIN units ON Content.unitName = units.unitName)" +
            //"WHERE question.Question_Type='TF' AND Section.section='A' AND Content.unitName='" + unitName + "' AND units.levelName='" + level + "' AND units.skillName='" + skill + "' " +
            //"ORDER BY question.Question_Order ASC";

            SqlCommand cmd = new SqlCommand("loadQuestions", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@level", examType);
            cmd.Parameters.AddWithValue("@skill", examTitle);
            cmd.Parameters.AddWithValue("@type", "TF");
            cmd.Parameters.AddWithValue("@unitName", examHeader);
            cmd.ExecuteNonQuery();

            SqlDataReader reader = cmd.ExecuteReader();

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

            //sqlQuery =

            //"SELECT question.Question, questions.Question_Order, question.Question_Type, question.Id, Section.Id, Section.question_ID, Section.answers, Content.unitName, units.levelName, units.skillName " +
            //"FROM (((question " +
            //"INNER JOIN Section ON question.Id = Section.question_ID)" +
            //"INNER JOIN Content ON question.ContentID = Content.Id)" +
            //"INNER JOIN units ON Content.unitName = units.unitName)" +
            //"WHERE question.Question_Type='MCQ' AND Section.Id='B' AND Content.unitName='" + unitName + "' AND units.levelName='" + level + "' AND units.skillName='" + skill + "' AND Section.question_ID = question.Id " +
            //"ORDER BY question.Question_Order ASC";

            cmd = new SqlCommand("loadQuestions", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@level", examType);
            cmd.Parameters.AddWithValue("@skill", examTitle);
            cmd.Parameters.AddWithValue("@type", "MCQ");
            cmd.Parameters.AddWithValue("@unitName", examHeader);
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

            //sqlQuery =

            //"SELECT question.Question, question.Question_Order, question.Question_Type, Content.unitName, Section.Id, units.levelName, units.skillName " +
            //"FROM (((question " +
            //"INNER JOIN Content ON question.Content_Id = Content.Id)" +
            //"INNER JOIN Section ON question.Id = Section.question_ID)" +
            //"INNER JOIN units ON Content.unitName = units.unitName)" +
            //"WHERE question.Question_Type='FITB' AND Section.Id='C' AND Content.unitName='" + unitName + "' AND units.levelName='" + level + "' AND units.skillName='" + skill + "' " +
            //"ORDER BY question.Question_Order ASC";

            cmd = new SqlCommand("loadQuestions", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@level", examType);
            cmd.Parameters.AddWithValue("@skill", examTitle);
            cmd.Parameters.AddWithValue("@type", "FITB");
            cmd.Parameters.AddWithValue("@unitName", examHeader);
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

            //string ansQuery =

            //"SELECT Section.question_ID, Section.Id, Section.answers, question.Id, question.Question_Order, units.levelName, units.skillName, Content.unitName" +
            //"FROM (((Section " +
            //"INNER JOIN question ON Section.question_ID = question.Id)" +
            //"INNER JOIN Content ON question.ContentID = Content.Id)" +
            //"INNER JOIN units ON Content.unitName = units.unitName)" +
            //"WHERE units.skillName='" + skill + "' AND units.levelName='" + level + "' AND Content.unitName='" + unitName + "' " +
            //"ORDER BY Section.Id, question.Question_Order ASC";



            cmd = new SqlCommand("loadAnswers", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@level", "INTERMEDIATE");
            cmd.Parameters.AddWithValue("@skill", "LISTENING");
            cmd.Parameters.AddWithValue("@unitName", "Unit 1: Podcast: Environmental issues");
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

    }
}