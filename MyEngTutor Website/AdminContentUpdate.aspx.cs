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
    public partial class AdminContentUpdate : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=myEngTutorDB;Integrated Security=True");
        SqlCommand cmd;
        protected void DataLoad()
        {
            if (Page.IsPostBack)
            {
                GridView1.DataBind();
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            using (con)
            {
                con.Open();
                cmd = new SqlCommand("Insert Into content (urlLink, TranscriptionOrText, contentType, unitName) Values(@urllink, @Description, @contentName, @unitname)", con);
                cmd.Parameters.AddWithValue("@urllink", txtURL.Text);
                cmd.Parameters.AddWithValue("@Description", txtText.Text);
                cmd.Parameters.AddWithValue("@contentName", txtContent.SelectedValue);
                cmd.Parameters.AddWithValue("@unitname", txtUnitName.SelectedValue);
                cmd.ExecuteNonQuery();
                con.Close();
                DataLoad();
                ClearAllData();
            }
        }

        public void ClearAllData()
        {
            txtURL.Text = "";
            txtText.Text = "";
            txtContent.SelectedValue = txtContent.Items[0].ToString();
            txtUnitName.SelectedValue = txtUnitName.Items[0].ToString();
            txtID.Text = "";
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            using (con)
            {
                con.Open();
                cmd = new SqlCommand("Delete from Content where Id=@ID", con);
                cmd.Parameters.AddWithValue("@ID", txtID.Text);
                cmd.ExecuteNonQuery();
                con.Close();
                DataLoad();
                ClearAllData();
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            using (con)
            {
                con.Open();
                cmd = new SqlCommand("Update Content Set urlLink=@urllink, TranscriptionOrText=@Description, contentType=@contentName, unitName=@unitname Where Id = @ID", con);
                cmd.Parameters.AddWithValue("@urllink", txtURL.Text);
                cmd.Parameters.AddWithValue("@Description", txtText.Text);
                cmd.Parameters.AddWithValue("@contentName", txtContent.SelectedValue);
                cmd.Parameters.AddWithValue("@unitname", txtUnitName.SelectedValue);
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
            txtURL.Text = GridView1.SelectedRow.Cells[2].Text;
            txtText.Text = GridView1.SelectedRow.Cells[3].Text;
            txtContent.Text = GridView1.SelectedRow.Cells[4].Text;
            txtUnitName.Text = GridView1.SelectedRow.Cells[5].Text;
            txtID.Text = GridView1.SelectedRow.Cells[1].Text;
        }
    }
}