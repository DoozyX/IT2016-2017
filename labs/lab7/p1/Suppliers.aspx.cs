using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace p1 {
    public partial class Suppliers : System.Web.UI.Page {
        protected void FillSuppliers() {
            string connectionString = ConfigurationManager.ConnectionStrings["myConnection"].ConnectionString;
            string sqlString = "SELECT * FROM Suppliers";
            SqlConnection connection = new SqlConnection(connectionString);
            SqlCommand command = new SqlCommand(sqlString, connection);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataSet dataSet = new DataSet();

            try {
                connection.Open();
                adapter.Fill(dataSet);
                gvSuppliers.DataSource = dataSet;
                gvSuppliers.DataBind();

                ViewState["dataSet"] = dataSet;
            } catch (Exception e) {
                lblError.Text = e.Message;
            } finally {
                connection.Close();
            }

        }

        protected void FillProducts()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["myConnection"].ConnectionString;
            string sqlString = "SELECT ProductName, UnitsInStock, UnitPrice FROM Products WHERE SupplierID = @SupplierID";
            SqlConnection connection = new SqlConnection(connectionString);
            SqlCommand command = new SqlCommand(sqlString, connection);
            var gvSuppliersDataKey = gvSuppliers.DataKeys[gvSuppliers.SelectedIndex];
            if (gvSuppliersDataKey != null)
                command.Parameters.AddWithValue("@SupplierID", gvSuppliersDataKey.Value);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataSet dataSet = new DataSet();

            try {
                connection.Open();
                adapter.Fill(dataSet);
                gvProducts.DataSource = dataSet;
                gvProducts.DataBind();
            } catch (Exception e) {
                lblError.Text = e.Message;
            } finally {
                connection.Close();
            }
        }

        protected void Page_Load(object sender, EventArgs e) {
            if (!Page.IsPostBack) {
                FillSuppliers();
            }
        }

        protected void gvSuppliers_SelectedIndexChanged(object sender, EventArgs e) {
            FillProducts();
        }

        protected void gvSuppliers_RowEditing(object sender, GridViewEditEventArgs e)
        {
            DataSet dataSet = ViewState["dataSet"] as DataSet;
            gvSuppliers.EditIndex = e.NewEditIndex;
            gvSuppliers.DataSource = dataSet;
            gvSuppliers.DataBind();
        }

        protected void gvSuppliers_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            DataSet dataSet = ViewState["dataSet"] as DataSet;
            gvSuppliers.EditIndex = -1;
            gvSuppliers.DataSource = dataSet;
            gvSuppliers.DataBind();
        }


        protected void gvSuppliers_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["myConnection"].ConnectionString;
            string sqlString = "UPDATE Suppliers SET ContactName = @ContactName, Phone = @Phone, City = @City WHERE SupplierID = @SupplierID";
            SqlConnection connection = new SqlConnection(connectionString);
            SqlCommand command = new SqlCommand(sqlString, connection);

            command.Parameters.AddWithValue("@SupplierID", 
                ((LinkButton)gvSuppliers.Rows[e.RowIndex].Cells[0].Controls[0]).Text);
            command.Parameters.AddWithValue("@ContactName",
                ((TextBox)gvSuppliers.Rows[e.RowIndex].Cells[2].Controls[0]).Text);
            command.Parameters.AddWithValue("@Phone",
                ((TextBox)gvSuppliers.Rows[e.RowIndex].Cells[3].Controls[0]).Text);
            command.Parameters.AddWithValue("@City",
                ((TextBox)gvSuppliers.Rows[e.RowIndex].Cells[4].Controls[0]).Text);

            int changed = 0;

            try {
                connection.Open();
                changed = command.ExecuteNonQuery();
            } catch (Exception exception) {
                lblError.Text = exception.Message;
            } finally {
                connection.Close();
                gvSuppliers.EditIndex = -1;
            }
            if (changed != 0) {
                FillSuppliers();
            }
        }
        
        protected void gvSuppliers_PageIndexChanging(object sender, GridViewPageEventArgs e) {
            gvSuppliers.PageIndex = e.NewPageIndex;
            gvSuppliers.SelectedIndex = -1;
            DataSet dataSet = ViewState["dataSet"] as DataSet;
            gvSuppliers.DataSource = dataSet;
            gvSuppliers.DataBind();
        }


    }
}
