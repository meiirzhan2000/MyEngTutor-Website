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
    public partial class ManageAdmins : System.Web.UI.Page
    {
        //string cs = ConfigurationManager.ConnectionStrings["myenglishtutorConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=myEngTutorDB;Integrated Security=True");
        SqlCommand cmd;
        string[] userInfo;
        protected void Page_Load(object sender, EventArgs e)
        {
            alertMessage.Visible = false;
            if (!Page.IsPostBack)
            {
                DataLoad();
            }
        }

        public void DataLoad()
        {
            fname.Text = "";
            sname.Text = "";
            userEmail.Text = "";
            userPassword.Text = "";
        }

        protected void reset()
        {
            name1.InnerText = "First Name";
            name2.InnerText = "Second Name";
            password.InnerText = "Password";
            email.InnerText = "Email";
            name1.Attributes["Class"] = "text-dark";
            name2.Attributes["Class"] = "text-dark";
            password.Attributes["Class"] = "text-dark";
            email.Attributes["Class"] = "text-dark";
        }


        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            reset();
            string passwordCheker = Checkers.passwordChecker(userPassword.Text);
            string nameChecker1 = Checkers.nameChecker(fname.Text, "First");
            string nameChecker2 = Checkers.nameChecker(sname.Text, "Second");
            string emailChecker = Checkers.emailChecker(userEmail.Text);
            if (nameChecker1 != "")
            {
                name1.InnerText = nameChecker1;
                name1.Attributes["Class"] = "text-danger";
            }
            else if (nameChecker2 != "")
            {
                name2.InnerText = nameChecker2;
                name2.Attributes["Class"] = "text-danger";
            }
            else if (emailChecker != "")
            {
                email.InnerText = emailChecker;
                email.Attributes["Class"] = "text-danger";
            }
            else if (passwordCheker != "")
            {
                password.InnerText = passwordCheker;
                password.Attributes["Class"] = "text-danger";
            }
            else
            {
                using (con)
                {
                    con.Open();
                    cmd = new SqlCommand("Insert Into [dbo].[userInfo]  VALUES(@emailll, @asaassword, @feirstName, @SeecondName, @Admin, @image)", con);
                    cmd.Parameters.AddWithValue("@asaassword", userPassword.Text);
                    cmd.Parameters.AddWithValue("@feirstName", fname.Text);
                    cmd.Parameters.AddWithValue("@SeecondName", sname.Text);
                    cmd.Parameters.AddWithValue("@Admin", "admin");
                    cmd.Parameters.AddWithValue("@image", "null");
                    cmd.Parameters.AddWithValue("@emailll", userEmail.Text);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    DataLoad();
                    alertMessage.Attributes["Class"] = "alert alert-success alert-dismissible fade show";
                    alertText.InnerText = "Profile Successfully Updated!";
                    alertMessage.Visible = true;
                }
            }
        }

    }
}