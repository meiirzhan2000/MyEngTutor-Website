using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyEngTutor_Website
{
    public partial class Section : System.Web.UI.Page
    {

        //string cs = ConfigurationManager.ConnectionStrings["myenglishtutorConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=myEngTutorDB;Integrated Security=True");
        SqlCommand cmd;
        SqlDataAdapter adapter;
        DataTable dt;

        public void DataLoad()
        {
            if (Page.IsPostBack)
            {
                GridView1.DataBind();
            }
        }

        protected void Dataload()
        {
            if (Page.IsPostBack)
            {
                GridView2.DataBind();
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            using (con)
            {
                con.Open();
                cmd = new SqlCommand("Insert Into question (Question_Order, Question, Question_Type, ContentID) Values(@urllink, @Description, @contentName, @unitname)", con);
                cmd.Parameters.AddWithValue("@urllink", txtOrder.Text);
                cmd.Parameters.AddWithValue("@Description", txtQuestion.Text);
                cmd.Parameters.AddWithValue("@contentName", txtQuestionType.SelectedValue);
                cmd.Parameters.AddWithValue("@unitname", txtContent.SelectedValue);
                cmd.ExecuteNonQuery();
                con.Close();
                DataLoad();
                ClearAllData();
            }
        }

        public void ClearAllData()
        {
            txtID.Text = "";
            txtOrder.Text = txtOrder.Items[0].ToString();
            txtQuestion.Text = "";
            txtQuestionType.Text = txtQuestionType.Items[0].ToString();
            txtContent.Text = txtContent.Items[0].ToString();
        }

        public void ClearAlldata()
        {
            txtIDanswer.Text = "";
            txtAnswer.Text = "";
            txtQuestionID.Text = txtOrder.Items[0].ToString();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            using (con)
            {
                con.Open();
                cmd = new SqlCommand("Delete from question where Id=@ID", con);
                cmd.Parameters.AddWithValue("@ID", txtID.Text);
                cmd.ExecuteNonQuery();
                con.Close();
                DataLoad();
                Dataload();
                ClearAllData();
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            using (con)
            {
                con.Open();
                cmd = new SqlCommand("Update question Set Question_Order=@urllink, Question=@Description, Question_Type=@contentName, ContentID=@unitname Where Id = @ID", con);
                cmd.Parameters.AddWithValue("@urllink", txtOrder.Text);
                cmd.Parameters.AddWithValue("@Description", txtQuestion.Text);
                cmd.Parameters.AddWithValue("@contentName", txtQuestionType.SelectedValue);
                cmd.Parameters.AddWithValue("@unitname", txtContent.SelectedValue);
                cmd.Parameters.AddWithValue("@ID", txtID.Text);
                cmd.ExecuteNonQuery();
                con.Close();
                DataLoad();
                ClearAllData();
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            ClearAllData();
        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            txtID.Text = GridView1.SelectedRow.Cells[1].Text;
            txtOrder.Text = GridView1.SelectedRow.Cells[2].Text;
            txtQuestion.Text = GridView1.SelectedRow.Cells[3].Text;
            txtQuestionType.Text = GridView1.SelectedRow.Cells[4].Text;
            txtContent.Text = GridView1.SelectedRow.Cells[5].Text;
        }

        protected void Button1_Click(object sender, EventArgs e) // add
        {
            using (con)
            {
                con.Open();
                cmd = new SqlCommand("Insert Into Section (answers, question_ID) Values(@urllink, @Description)", con);
                cmd.Parameters.AddWithValue("@urllink", txtAnswer.Text);
                cmd.Parameters.AddWithValue("@Description", txtQuestionID.Text);
                cmd.ExecuteNonQuery();
                con.Close();
                Dataload();
                ClearAlldata();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            using (con)
            {
                con.Open();
                cmd = new SqlCommand("Delete from Section where Id=@ID", con);
                cmd.Parameters.AddWithValue("@ID", txtIDanswer.Text);
                cmd.ExecuteNonQuery();
                con.Close();
                Dataload();
                ClearAlldata();
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            using (con)
            {
                con.Open();
                cmd = new SqlCommand("Update Section Set answers=@urllink, question_ID=@Description Where Id = @ID", con);
                cmd.Parameters.AddWithValue("@urllink", txtAnswer.Text);
                cmd.Parameters.AddWithValue("@Description", txtQuestionID.Text);
                cmd.Parameters.AddWithValue("@ID", txtIDanswer.Text);
                cmd.ExecuteNonQuery();
                con.Close();
                Dataload();
                ClearAlldata();
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            ClearAlldata();
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtIDanswer.Text = GridView2.SelectedRow.Cells[1].Text;
            txtAnswer.Text = GridView2.SelectedRow.Cells[2].Text;
            txtQuestionID.Text = GridView2.SelectedRow.Cells[3].Text;
        }

    }
}