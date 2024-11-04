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
    public partial class adminFooterContentUpdate : System.Web.UI.Page
    {
        //string cs = ConfigurationManager.ConnectionStrings["connectionTest"].ConnectionString;

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
                cmd = new SqlCommand("Insert Into footerContent (title, description, image, urlLinks, lastUpdate, typeOfContent) Values(@Title, @Description, @Image, @UrlLinks, @LastUpdate, @TypeOfContent)", con);
                cmd.Parameters.AddWithValue("@Title", txtTitle.Text);
                cmd.Parameters.AddWithValue("@Description", txtDescription.Text);
                cmd.Parameters.AddWithValue("@Image", txtImage.Text);
                cmd.Parameters.AddWithValue("@UrlLinks", txtURL.Text);
                cmd.Parameters.AddWithValue("@LastUpdate", txtLastUpdate.Text);
                cmd.Parameters.AddWithValue("@TypeOfContent", txtType.SelectedValue);
                cmd.ExecuteNonQuery();
                con.Close();
                DataLoad();
                ClearAllData();
            }
        }

        public void ClearAllData()
        {
            txtURL.Text = "";
            txtDescription.Text = "";
            txtTitle.Text = "";
            txtImage.Text = "";
            txtLastUpdate.Text = "";
            txtType.SelectedValue = txtType.Items[0].ToString();
            txtID.Text = "";
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            using (con)
            {
                con.Open();
                cmd = new SqlCommand("Delete from footerContent where Id=@ID", con);
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
                cmd = new SqlCommand("Update footerContent Set title=@Title, description=@Description, image=@Image, urlLinks=@UrlLinks, lastUpdate=@LastUpdate, typeOfContent=@TypeOfContent  Where Id = @ID", con);
                cmd.Parameters.AddWithValue("@Title", txtTitle.Text);
                cmd.Parameters.AddWithValue("@Description", txtDescription.Text);
                cmd.Parameters.AddWithValue("@Image", txtImage.Text);
                cmd.Parameters.AddWithValue("@UrlLinks", txtURL.Text);
                cmd.Parameters.AddWithValue("@LastUpdate", txtLastUpdate.Text);
                cmd.Parameters.AddWithValue("@TypeOfContent", txtType.SelectedValue);
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
            txtURL.Text = GridView1.SelectedRow.Cells[5].Text;
            txtDescription.Text = GridView1.SelectedRow.Cells[3].Text;
            txtTitle.Text = GridView1.SelectedRow.Cells[2].Text;
            txtImage.Text = GridView1.SelectedRow.Cells[4].Text;
            txtLastUpdate.Text = GridView1.SelectedRow.Cells[6].Text;
            txtType.SelectedValue = GridView1.SelectedRow.Cells[7].Text;
        }

    }
}