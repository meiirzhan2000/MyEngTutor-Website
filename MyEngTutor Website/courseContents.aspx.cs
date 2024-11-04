using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;

namespace MyEngTutor_Website
{
    public partial class courseContents : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=myEngTutorDB;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

            //string level = Session["level"].ToString();
            //string skill = Session["skill"].ToString();

            ////////////////////////////////////////////

            string buttonClicked = Request.QueryString["button"];

            string[] splitData = buttonClicked.Split(',');

            string skill = splitData[0].ToString();
            string level = splitData[1].ToString();

            string[] value1 = (string[])Session["values"];
            if (value1 != null)
            {
                pageer1.Attributes["href"] = "homePage.aspx";
            }
            else
            {
                pageer1.Attributes["href"] = "Default.aspx";
            }
            A1.Attributes["href"] = "index.aspx" + "?button=" + skill;
            string imgSource = "";

            if (level == "FOUNDATION")
            {
                imgSource = "Images/foundation-removebg.png";
                Session["Level"] = "FOUNDATION";
         

            }
            else if (level == "PRE-INTERMEDIATE")
            {
                imgSource = "Images/preIntermediate-removebg.png";
                Session["Level"] = "PRE-INTERMEDIATE";
            }
            else if (level == "INTERMEDIATE")
            {
                imgSource = "Images/intermediate-removebg.png";
                Session["Level"] = "INTERMEDIATE";
            }
            else if (level == "ADVANCED")
            {
                imgSource = "Images/advanced-removebg.png";
                Session["Level"] = "ADVANCED";
            }


            levelHeader.InnerText = level;
            levelImage.Src = imgSource;

            taskHeader.InnerText = skill + " TASKS";


            con.Open();

            //string sqlQuery = "select * from unit where levelName='" + level + "'";
            string sqlQuery = "SELECT unitName, description FROM units WHERE levelName='" + level + "' AND skillName='" + skill + "'";

            SqlCommand cmd = new SqlCommand(sqlQuery, con);
            SqlDataReader reader = cmd.ExecuteReader();


            List<string> data = new List<string>(); //[hello, world, clown, yo]

            while (reader.Read())
            {
                string value = reader["unitName"].ToString() + "," + reader["description"].ToString(); //'data','clown' = data,clown
                data.Add(value);
            }

            con.Close();

            //uniter.Style.Add("display", "none"); --HOW TO MODIFY CSS USING C#

            foreach (string unitData in data)
            {
                transferer.InnerText = transferer.InnerText + unitData + ".";
            }

            //Console.WriteLine("hello world");

            //string[] unitData = data[1].Split(',');

            //uniter.InnerText = unitData[0];
            //uniterQuestionCount.InnerText = unitData[1];

        }


        protected void Button1_Click(object sender, EventArgs e)
        {

            con.Open();
            SqlCommand cmd = con.CreateCommand();

            //cmd.CommandType = CommandType.Text;
            //cmd.CommandText = "insert into skills values('READING', 'You basically Read Text')";
            //cmd.ExecuteNonQuery();

            //cmd.CommandType = CommandType.Text;
            //cmd.CommandText = "insert into levels values('FOUNDATION', 'You are noob as hell')";
            //cmd.ExecuteNonQuery();

            //SCHEMA: unitName description skillName levelName

            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into unit values('Unit 3: How to be Help People In Need', '30 QUESTIONS', 'READING', 'FOUNDATION')";
            cmd.ExecuteNonQuery();

            con.Close();
        }


    }
}