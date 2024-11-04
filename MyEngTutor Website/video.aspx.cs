using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyEngTutor_Website
{
    public partial class video : System.Web.UI.Page
    {

        //string cs = ConfigurationManager.ConnectionStrings["myenglishtutorConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=myEngTutorDB;Integrated Security=True");

        SqlCommand cmd;
        string[] value;

        protected void Page_PreInit(object sender, EventArgs e)
        {
            value = (string[])Session["values"];
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
            if (value != null)
            {
                pageer1.Attributes["href"] = "homePage.aspx";
            }
            else
            {
                pageer1.Attributes["href"] = "Default.aspx";
            }
            string buttonClicked;
            string type = "";
            buttonClicked = Request.QueryString["button"];
            if (buttonClicked != null)
            {
                if (buttonClicked == "video")
                {
                    pageer.InnerText = "Video Zone";
                    type = "'Video Zone'";
                }
                else if (buttonClicked == "game")
                {
                    pageer.InnerText = "Game Zone";
                    type = "'Game Zone'";
                }
                else if (buttonClicked == "story")
                {
                    pageer.InnerText = "Story Zone";
                    type = "'Story Zone'";
                }
                else if (buttonClicked == "app")
                {
                    pageer.InnerText = "Apps";
                    type = "'Apps'";
                }
            }

            using (con)
            {
                con.Open();
                string selectEverything = "select * from footerContent where typeOfContent = " + type;
                using (var command = new SqlCommand(selectEverything, con))
                {
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        var rows = new List<string[]>();
                        while (reader.Read())
                        {
                            // Create an array to hold the column values for each row
                            string[] rowData = new string[reader.FieldCount];

                            for (int i = 0; i < reader.FieldCount; i++)
                            {
                                // Explicitly cast the column values to string
                                rowData[i] = reader[i].ToString();
                            }

                            // Add the array to the list
                            rows.Add(rowData);

                            addView(rowData[1], rowData[2], rowData[3], rowData[4], rowData[5]);
                        }
                        // Now, you have all the rows in the 'rows' list as arrays
                        // You can convert it to an array if necessary

                        // Step 5: Close connection and release resources
                        reader.Close();
                    }
                }
            }
            con.Close();
        }

            public void addBrowseMoreProductsSection()
    {
        Panel browseMorePanel = new Panel();
        browseMorePanel.CssClass = "col-12 text-center";
        my.Controls.Add(browseMorePanel);

        HyperLink browseMoreLink = new HyperLink();
        browseMoreLink.CssClass = "btn btn-primary rounded-pill py-3 px-5";
        browseMoreLink.HRef = "#";  // Add the appropriate href value
        browseMoreLink.Text = "Browse More Products";
        browseMorePanel.Controls.Add(browseMoreLink);
    }

        public void addView(String title, String Description, String imageUrl, String Url, String lastUpdate)
        {
            Panel firstHolder = new Panel();
            Panel secondHolder = new Panel();
            Panel imageHolder = new Panel();
            Panel contentHolder = new Panel();
            Panel content = new Panel();
            Image img = new Image();
            img.ImageUrl = imageUrl;
            img.CssClass = "img-fluid rounded-start";
            img.AlternateText = "Image";
            content.CssClass = "card-body";
            contentHolder.CssClass = "col-md-8";
            firstHolder.CssClass = "card mb-5";
            firstHolder.Style.Add("max-width", "800px");
            secondHolder.CssClass = "row g-0";
            imageHolder.CssClass = "col-md-4";
            cr.Controls.Add(firstHolder);
            firstHolder.Controls.Add(secondHolder);
            secondHolder.Controls.Add(imageHolder);
            secondHolder.Controls.Add(contentHolder);
            imageHolder.Controls.Add(img);
            contentHolder.Controls.Add(content);
            content.Controls.Add(new LiteralControl("<h5 class=\"card-title\">" + title + " </h5>"));
            content.Controls.Add(new LiteralControl("<p class=\"card-text\">" + Description + "</p>"));
            content.Controls.Add(new LiteralControl("<p class=\"card-text\"><small class=\"text-muted\">" + lastUpdate + "</small></p>"));
            content.Controls.Add(new LiteralControl("<a href=" + Url + " class=\"btn btn-primary\">\r\nCheck Out\r\n</a>"));
        }


    }
}