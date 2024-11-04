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
    public partial class SettingA : System.Web.UI.Page
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
                userInfo = (string[])Session["values"];
                if (userInfo != null)
                {
                    DataLoad();
                }
            }
        }

        public void DataLoad()
        {
            fname.Text = userInfo[2];
            sname.Text = userInfo[3];
            userEmail.Text = userInfo[0];
            userPassword.Text = userInfo[1];
        }

        protected void reset()
        {
            name1.InnerText = "First Name";
            name2.InnerText = "Second Name";
            password.InnerText = "Password";
            name1.Attributes["Class"] = "text-dark";
            name2.Attributes["Class"] = "text-dark";
            password.Attributes["Class"] = "text-dark";
        }


        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            reset();
            string passwordCheker = Checkers.passwordChecker(userPassword.Text);
            string nameChecker1 = Checkers.nameChecker(fname.Text, "First");
            string nameChecker2 = Checkers.nameChecker(sname.Text, "Second");
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
            else if (passwordCheker != "")
            {
                password.InnerText = passwordCheker;
                password.Attributes["Class"] = "text-danger";
            }
            else
            {
                userInfo = (string[])Session["values"];
                using (con)
                {
                    con.Open();
                    cmd = new SqlCommand("Update [dbo].[userInfo] Set password=@Paassword, firstName=@feirstName, secondName=@SeecondName Where email = @Emaaill", con);
                    cmd.Parameters.AddWithValue("@Paassword", userPassword.Text);
                    cmd.Parameters.AddWithValue("@feirstName", fname.Text);
                    cmd.Parameters.AddWithValue("@SeecondName", sname.Text);
                    cmd.Parameters.AddWithValue("@Emaaill", userEmail.Text);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    userInfo = new string[] { userEmail.Text, userPassword.Text, fname.Text, sname.Text, "" };
                    Session["values"] = new string[] { userEmail.Text, userPassword.Text, fname.Text, sname.Text, "" };
                    DataLoad();
                    alertMessage.Attributes["Class"] = "alert alert-success alert-dismissible fade show";
                    alertText.InnerText = "Profile Successfully Updated!";
                    alertMessage.Visible = true;
                }
            }
        }


    }
}