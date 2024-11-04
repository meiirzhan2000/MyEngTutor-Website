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
    public partial class WebForm2 : System.Web.UI.Page
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
                unit.DataBind();
            }
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtUnit.Text = unit.SelectedRow.Cells[2].Text;
            txtDescription.Text = unit.SelectedRow.Cells[3].Text;
            txtSkill.Text = unit.SelectedRow.Cells[4].Text;
            txtLevel.Text = unit.SelectedRow.Cells[5].Text;
            txtID.Text = unit.SelectedRow.Cells[1].Text;
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            using (con)
            {
                con.Open();
                cmd = new SqlCommand("Insert Into units (unitName, description, skillName, levelName) Values(@name, @Description, @skillname, @levelname)", con);
                cmd.Parameters.AddWithValue("@name", txtUnit.Text);
                cmd.Parameters.AddWithValue("@Description", txtDescription.Text);
                cmd.Parameters.AddWithValue("@skillname", txtSkill.SelectedValue);
                cmd.Parameters.AddWithValue("@levelname", txtLevel.SelectedValue);
                cmd.ExecuteNonQuery();
                con.Close();
                DataLoad();
                ClearAllData();
            }
        }

        public void ClearAllData()
        {
            txtDescription.Text = "";
            txtUnit.Text = "";
            txtSkill.SelectedValue = txtSkill.Items[0].ToString();
            txtLevel.SelectedValue = txtLevel.Items[0].ToString();
            txtID.Text = "";
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            using (con)
            {
                con.Open();
                cmd = new SqlCommand("Delete from units where unitID=@unitId", con);
                cmd.Parameters.AddWithValue("@unitId", txtID.Text);
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
                cmd = new SqlCommand("Update units Set unitName=@name, description=@Description, skillName=@skillname, levelName=@levelname Where unitID = @unitid", con);
                cmd.Parameters.AddWithValue("@name", txtUnit.Text);
                cmd.Parameters.AddWithValue("@Description", txtDescription.Text);
                cmd.Parameters.AddWithValue("@skillname", txtSkill.SelectedValue);
                cmd.Parameters.AddWithValue("@levelname", txtLevel.SelectedValue);
                cmd.Parameters.AddWithValue("@unitId", txtID.Text);
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



    }
}