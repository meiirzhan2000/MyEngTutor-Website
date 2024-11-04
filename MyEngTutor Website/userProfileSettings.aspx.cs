using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyEngTutor_Website
{
    public partial class userProfileSettings : System.Web.UI.Page
    {

        //string cs = ConfigurationManager.ConnectionStrings["myenglishtutorConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=myEngTutorDB;Integrated Security=True");
        SqlCommand cmd;
        string[] userInfo;
        protected void Page_Load(object sender, EventArgs e)
        {
            Master.FindControl("footerSlideContainer").Visible = false;
            dis.Visible = false;
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
            fnameId.Text = userInfo[2];
            snameId.Text = userInfo[3];
            userEmail.Text = userInfo[0];
            userPasswordId.Text = userInfo[1];
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
            string passwordCheker = Checkers.passwordChecker(userPasswordId.Text);
            string nameChecker1 = Checkers.nameChecker(fnameId.Text, "First");
            string nameChecker2 = Checkers.nameChecker(snameId.Text, "Second");
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
                if (fnameId.Text.Length > 0 && snameId.Text.Length > 0 && userPasswordId.Text.Length >= 8)
                {
                    //con = new SqlConnection(cs); uncomment if got probs
                    if (con != null)
                    {
                        con.Open();
                        if (FileUpload1.PostedFile != null)
                        {
                            string strpath = Path.GetExtension(FileUpload1.FileName);
                            if (strpath != ".jpg" && strpath != ".jpeg" && strpath != ".gif" && strpath != ".png")
                            {
                                dis.InnerText = "Only Image Files Allowed (jpg, jpeg, gid, png)";
                                dis.Visible = true;
                            }
                            else
                            {
                                string fileimg = Path.GetFileName(FileUpload1.PostedFile.FileName);
                                FileUpload1.SaveAs(Server.MapPath("~/userImages/") + fileimg);
                                cmd = new SqlCommand("Update [dbo].[userInfo] Set password=@Paasswordd, firstName=@FirstNamea, secondName=@SecondNamea, profile=@prof Where email = @Emaill", con);
                                cmd.Parameters.AddWithValue("@prof", "~//userImages/" + fileimg);
                                userInfo[4] = "~//userImages/" + fileimg;
                            }
                        }
                        if (cmd == null)
                        {
                            cmd = new SqlCommand("Update [dbo].[userInfo] Set password=@Paasswordd, firstName=@FirstNamea, secondName=@SecondNamea Where email = @Emaill", con);
                        }
                        Session["values"] = new string[] { userEmail.Text, userPasswordId.Text.ToString(), fnameId.Text, snameId.Text, userInfo[4] };
                        cmd.Parameters.AddWithValue("@Paasswordd", userPasswordId.Text);
                        cmd.Parameters.AddWithValue("@FirstNamea", fnameId.Text);
                        cmd.Parameters.AddWithValue("@SecondNamea", snameId.Text);
                        cmd.Parameters.AddWithValue("@Emaill", userInfo[0].ToString());
                        cmd.ExecuteNonQuery();
                        con.Close();
                        alertMessage.Attributes["Class"] = "alert alert-success alert-dismissible fade show";
                        alertText.InnerText = "Profile Successfully Updated!";
                    }
                }
                else
                {
                    alertMessage.Attributes["Class"] = "alert alert-danger alert-dismissible fade show";
                    alertText.InnerText = "Please Fill Everything up!";
                }
                alertMessage.Visible = true;
            }
        }


    }
}