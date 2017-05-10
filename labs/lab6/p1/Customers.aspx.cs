using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace p1 {
    public partial class Customers : System.Web.UI.Page {
        protected void FillCustomers() {
            lbCustomers.Items.Clear();

            string connectionString = ConfigurationManager.ConnectionStrings["myConnection"].ConnectionString;
            string sqlString = "SELECT CustomerID, CompanyName FROM Customers ORDER BY CompanyName";
            SqlConnection connection = new SqlConnection(connectionString);
            SqlCommand command = new SqlCommand(sqlString, connection);

            try {
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();

                while (reader.Read()) {
                    ListItem element = new ListItem {
                        Text = reader["CompanyName"].ToString(),
                        Value = reader["CustomerID"].ToString()
                    };
                    lbCustomers.Items.Add(element);
                }
                reader.Close();
            } catch (Exception exception) {
                lblMessage.Text = exception.Message;
            } finally {
                connection.Close();
            }
        }

        protected void SelectedCustomer(string customerId) {
            string connectionString = ConfigurationManager.ConnectionStrings["myConnection"].ConnectionString;
            string sqlString = "SELECT * FROM Customers WHERE CustomerID='" + customerId + "'";
            SqlConnection connection = new SqlConnection(connectionString);
            SqlCommand command = new SqlCommand(sqlString, connection);

            try {
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();

                if (reader.Read()) {
                    tbID.Text = reader["CustomerID"].ToString();
                    tbCompanyName.Text = reader["CompanyName"].ToString();
                    tbContactName.Text = reader["ContactName"].ToString();
                    tbAdress.Text = reader["Address"].ToString();
                    tbCity.Text = reader["City"].ToString();
                    tbPhone.Text = reader["Phone"].ToString();
                }
                reader.Close();
            } catch (Exception exception) {
                lblMessage.Text = exception.Message;
            } finally {
                connection.Close();
            }
        }

        protected void UpdateCustomer() {
            string connectionString = ConfigurationManager.ConnectionStrings["myConnection"].ConnectionString;
            string sqlString =
                "UPDATE Customers SET CustomerID=@tbID,CompanyName=@tbCompanyName,ContactName=@tbContactName,Address=@tbAdress,City=@tbCity,Phone=@tbPhone WHERE CustomerID=@tbID";
            SqlConnection connection = new SqlConnection(connectionString);
            SqlCommand command = new SqlCommand(sqlString, connection);
            command.Parameters.AddWithValue("@tbID", tbID.Text);
            command.Parameters.AddWithValue("@tbCompanyName", tbCompanyName.Text);
            command.Parameters.AddWithValue("@tbContactName", tbContactName.Text);
            command.Parameters.AddWithValue("@tbAdress", tbAdress.Text);
            command.Parameters.AddWithValue("@tbCity", tbCity.Text);
            command.Parameters.AddWithValue("@tbPhone", tbPhone.Text);

            try {
                connection.Open();
                command.ExecuteNonQuery();
            } catch (Exception exception) {
                lblMessage.Text = exception.Message;
            } finally {
                connection.Close();
            }
            FillCustomers();
        }

        protected void ClearTextBox() {
            tbID.Text = "";
            tbCompanyName.Text = "";
            tbContactName.Text = "";
            tbAdress.Text = "";
            tbCity.Text = "";
            tbPhone.Text = "";
            lblMessage.Text = "";
        }

        protected void InsertCustomer() {
            string connectionString = ConfigurationManager.ConnectionStrings["myConnection"].ConnectionString;
            string sqlString = "INSERT INTO Customers (CustomerID, CompanyName, ContactName, Address, City, Phone) VALUES (@id, @comName, @contName, @adress, @city, @phone)";
            SqlConnection connection = new SqlConnection(connectionString);
            SqlCommand command = new SqlCommand(sqlString, connection);
            command.Parameters.AddWithValue("@id", tbID.Text);
            command.Parameters.AddWithValue("@comName", tbCompanyName.Text);
            command.Parameters.AddWithValue("@contName", tbContactName.Text);
            command.Parameters.AddWithValue("@adress", tbAdress.Text);
            command.Parameters.AddWithValue("@city", tbCity.Text);
            command.Parameters.AddWithValue("@phone", tbPhone.Text);


            try {
                connection.Open();
                command.ExecuteNonQuery();
            } catch (Exception exception) {
                lblMessage.Text = exception.Message;
            } finally {
                connection.Close();
            }
            FillCustomers();
        }

        protected void Page_Load(object sender, EventArgs e) {
            if (!Page.IsPostBack) {
                FillCustomers();
            }
        }

        protected void lbCustomers_SelectedIndexChanged(object sender, EventArgs e) {
            SelectedCustomer(lbCustomers.SelectedValue);
        }

        protected void brnEdit_Click(object sender, EventArgs e) {
            UpdateCustomer();
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            ClearTextBox();
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            InsertCustomer();
        }
    }
}