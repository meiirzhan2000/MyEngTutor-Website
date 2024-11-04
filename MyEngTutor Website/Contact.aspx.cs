using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyEngTutor_Website
{
    public partial class Contact : Page
    {
        protected void Page_PreInit(object sender, EventArgs e)
        {
            string[] value = (string[])Session["values"];
            if (!IsPostBack)
            {
                if (value != null)
                {
                    this.MasterPageFile = "~/UserMasterPage.Master";
                }
                else
                {
                    this.MasterPageFile = "~/VisitorMasterPage.Master";
                }
            }
        }

        SqlConnection con = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=myEngTutorDB;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            alertMessage.Visible = false;
        }

        protected void name_TextChanged(object sender, EventArgs e)
        {

        }

        protected void email_TextChanged(object sender, EventArgs e)
        {

        }

        protected void subject_TextChanged(object sender, EventArgs e)
        {

        }

        protected void form_TextChanged(object sender, EventArgs e)
        {

        }

        protected void submitMessage(object sender, EventArgs e)
        {
            if (name.Text.Length != 0 && email.Value.Length != 0 && subject.Value.Length != 0 && message.Value.Length != 0)
            {
                string insert = "Insert into [Table] values('" + email.Value.ToString() + "', '" + subject.Value.ToString() + "', '" + name.Text.ToString() + "', '" + message.Value.ToString() + "')";
                SqlCommand com = new SqlCommand(insert, con);
                con.Open();
                com.ExecuteNonQuery();
                con.Close();
                alertMessage.Visible = true;
                name.Text = "";
                subject.Value = "";
                email.Value = "";
                message.Value = "";
                var timer = new System.Timers.Timer(10000);

            }
        }
    }
}