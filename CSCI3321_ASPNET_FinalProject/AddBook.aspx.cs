using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CSCI3321_ASPNET_FinalProject
{
    public partial class AddBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmitAuthor_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = WebConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;

            //INSERT INTO Books VALUES(Title, AuthorID, Price, PUblishDate, PublisherID, GenreID, Wordcount)
            cmd.CommandText = "INSERT INTO Books VALUES ('" + txtTitle.Text + "', '" + ddlAuthor.SelectedValue + "', '" + txtPrice.Text + "', '" +
            txtPublishDate.Text + "', '" + ddlPublishers.SelectedValue + "', '" + ddlGenres.SelectedValue + "', '" + txtWordcount.Text + "')";

            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
        }
    }
}