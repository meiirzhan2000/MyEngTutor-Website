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
    public partial class _Default : Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=myEngTutorDB;Integrated Security=True");

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
        protected void Page_Load(object sender, EventArgs e)
        {
            DateTime dateTime = DateTime.UtcNow.Date;
            if (!IsPostBack)
            {
                string insert = "Insert into Activity(date, typeOfActivity) values('" + dateTime.ToString("dd/MM/yyyy") + "', '" + "Visit The Website" + "')";
                SqlCommand com = new SqlCommand(insert, con);
                con.Open();
                com.ExecuteNonQuery();
                con.Close();
                Debug.Print("Here it is");
            }
        }
    }
}