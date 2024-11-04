using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyEngTutor_Website
{
    public partial class Login : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=myEngTutorDB;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            logOut();
            if (!Page.IsPostBack)
            {
                alertMessage.Visible = false;
            }
        }

        protected void logOut()
        {
        
            if (Session["values"] != null)
            {
                Session.Remove("values");
            }
        }

        protected void email_TextChanged(object sender, EventArgs e)
        {

        }

        protected void password_TextChanged(object sender, EventArgs e)
        {

        }

        protected void signInButton(object sender, EventArgs e)
        {
            reset();
            if (email.Text.Length <= 1)
            {
                emailText.InnerText = "Please Enter Your Email";
                emailText.Attributes["Class"] = "text-danger";
                return;
            }
            else if (password.Text.Length <= 4)
            {
                passwordText.InnerText = "Please Enter Your Password";
                passwordText.Attributes["Class"] = "text-danger";
                return;
            }
            string check = "select count(*) from [userInfo] where email = '" + email.Text + "' and password = '" + password.Text + "' ";
            SqlCommand com = new SqlCommand(check, con);
            con.Open();
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            con.Close();
            if (temp == 1)
            {
                com.Dispose();
                if (checkerOfType() != true)
                {
                    Response.Redirect("userPage.aspx?button=" + email.Text);
                    //Session["email"] = email.Text;
                    clean();
                    addContent();
                    
                }
                else
                {
                    clean();
                    addContent();
                    Response.Redirect("adminMainMenu.aspx");
                }
            }
            else
            {
                alertMessage.Visible = true;
            }
        }

        bool checkerOfType()
        {
            SqlCommand command;
            SqlDataReader dataReader;
            String sql;
            sql = "select * from [userInfo] where email = '" + email.Text + "'";
            con.Open();
            command = new SqlCommand(sql, con);
            dataReader = command.ExecuteReader();
            while (dataReader.Read())
            {
                string[] userInfo = new string[] { dataReader.GetString(0), dataReader.GetString(1), dataReader.GetString(2), dataReader.GetString(3), "" };
                if (dataReader.GetString(5).Length != 0)
                {
                    userInfo[4] = dataReader.GetString(5);
                }
                Session["values"] = userInfo;
                bool whoLoggedIn = string.Compare(dataReader.GetString(4), "admin") == 0;
                con.Close();
                return whoLoggedIn;
            }
            con.Close();
            return false;
        }

        protected void clean()
        {
            email.Text = "";
            password.Text = "";
        }

        protected void reset()
        {
            emailText.InnerText = "Email";
            passwordText.InnerText = "Password";
            emailText.Attributes["Class"] = "text-dark";
            passwordText.Attributes["Class"] = "text-dark";
        }

        private void addContent()
        {
            DateTime dateTime = DateTime.UtcNow.Date;
            if (email.Text.Length != 0)
            {
                string insert = "Insert into Activity(date, typeOfActivity, email) values('" + dateTime.ToString("dd/MM/yyyy") + "', '" + "Login" + "', '" + email.Text + "')";
                SqlCommand com = new SqlCommand(insert, con);
                con.Open();
                com.ExecuteNonQuery();
                con.Close();
            }
        }

    }
}