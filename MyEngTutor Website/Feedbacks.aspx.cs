using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyEngTutor_Website
{
    public partial class Feedbacks : System.Web.UI.Page
    {

        //string cs = ConfigurationManager.ConnectionStrings["myenglishtutorConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=myEngTutorDB;Integrated Security=True");
        SqlCommand cmd;
        protected void DataLoad()
        {
            if (Page.IsPostBack)
            {
                GridView1.DataBind();
            }
        }

        public void ClearAllData()
        {
            txtEmail.Text = "";
            txtDescription.Text = "";
            txtTitle.Text = "";
            txtName.Text = "";
            txtID.Text = "";
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            using (con)
            {
                con.Open();
                cmd = new SqlCommand("Delete from [dbo].[Table] where Id=@ID", con);
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

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtID.Text = GridView1.SelectedRow.Cells[1].Text;
            txtName.Text = GridView1.SelectedRow.Cells[4].Text;
            txtDescription.Text = GridView1.SelectedRow.Cells[5].Text;
            txtTitle.Text = GridView1.SelectedRow.Cells[3].Text;
            txtEmail.Text = GridView1.SelectedRow.Cells[2].Text;
        }

    }
}