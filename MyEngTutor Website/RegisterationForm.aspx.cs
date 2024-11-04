using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyEngTutor_Website
{
    public partial class RegisterationForm : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=myEngTutorDB;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                alertMessage.Visible = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
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
            else if (string.Compare(userPassword.Text, confPassword.Text) != 0)
            {
                confPas.InnerText = "Password Does Not Match";
                confPas.Attributes["Class"] = "text-danger";
            }
            else
            {
                string insert = "Insert into [userInfo](email, password, firstName, secondName, userType) values('" + userEmail.Text.Trim() + "', '" + userPassword.Text.Trim() + "', '" + fname.Text.Trim() + "', '" + sname.Text.Trim() + "', '" + "regularClient" + "')";
                SqlCommand com = new SqlCommand(insert, con);
                con.Open();
                com.ExecuteNonQuery();
                con.Close();
                addContent();
                clean();
                alertMessage.Visible = true;
            }
        }

        protected void clean()
        {
            userEmail.Text = "";
            userPassword.Text = "";
            fname.Text = "";
            sname.Text = "";
            confPassword.Text = "";
        }

        protected void reset()
        {
            name1.InnerText = "First Name";
            name2.InnerText = "Second Name";
            email.InnerText = "Email";
            password.InnerText = "Password";
            confPas.InnerText = "Confirm Password";
            name1.Attributes["Class"] = "text-dark";
            name2.Attributes["Class"] = "text-dark";
            email.Attributes["Class"] = "text-dark";
            password.Attributes["Class"] = "text-dark";
            confPas.Attributes["Class"] = "text-dark";
        }


        private void addContent()
        {
            DateTime dateTime = DateTime.UtcNow.Date;
            if (userEmail.Text.Length != 0)
            {
                string insert = "Insert into Activity(date, typeOfActivity, email) values('" + dateTime.ToString("dd/MM/yyyy") + "', '" + "Register" + "', '" + userEmail.Text + "')";
                SqlCommand com = new SqlCommand(insert, con);
                con.Open();
                com.ExecuteNonQuery();
                con.Close();
            }
        }


    }
}