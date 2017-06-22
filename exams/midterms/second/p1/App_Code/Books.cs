using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Summary description for Books
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class Books : System.Web.Services.WebService
{

    public Books()
    {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public string HelloWorld()
    {
        return "Hello World";
    }

    [WebMethod]
    public string getAuthor(string name)
    {
        string author = "";
        string sqlConnectionString = "Data Source=localhost; Initial Catalog=pubs; Integrated Security=True;";
        string sqlCommand = "SELECT au_fname,au_lname FROM authors as a, titles as t, titleauthor as ta WHERE t.title_id = ta.title_id AND a.au_id = ta.au_id AND t.title = @title";
        SqlConnection connection = new SqlConnection(sqlConnectionString);
        SqlCommand command = new SqlCommand(sqlCommand, connection);
        command.Parameters.AddWithValue("@title", name);
        try {
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            if (reader.Read()) {
                author = reader[0].ToString() + " " +  reader[1].ToString();
            } else {
                author = "No Author.";
            }
        } catch (Exception e) {
            author = e.Message;
        } finally {
            connection.Close();
        }
        return author;
    }
}
