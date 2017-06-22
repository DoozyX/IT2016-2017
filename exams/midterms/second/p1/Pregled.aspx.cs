using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pregled : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        FillGridView();
    }

    private void FillGridView()
    {
        string sqlConnectionString = "Data Source=localhost; Initial Catalog=pubs; Integrated Security=True;";
        string sqlCommand = "SELECT title,price FROM titles WHERE price IS NOT NULL";
        SqlConnection connection = new SqlConnection(sqlConnectionString);
        SqlCommand command = new SqlCommand(sqlCommand, connection);
        SqlDataAdapter adapter = new SqlDataAdapter(command);
        DataSet dataSet = new DataSet();
        try {
            connection.Open();
            adapter.Fill(dataSet, "titles");
            gvTitles.DataSource = dataSet;
            gvTitles.DataBind();
            ViewState["dataSet"] = dataSet;
        } catch (Exception e) {
            lblError.Text = e.Message;
        } finally {
            connection.Close();
        }
    }

    protected void gvTitles_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvTitles.PageIndex = e.NewPageIndex;
        gvTitles.SelectedIndex = -1;
        DataSet dataSet = (DataSet)ViewState["dataSet"];
        gvTitles.DataSource = dataSet;
        gvTitles.DataBind();
    }

    protected void gvTitles_SelectedIndexChanged(object sender, EventArgs e)
    {
        pnlItems.Visible = true;
        lbItems.Items.Add(new ListItem(gvTitles.SelectedRow.Cells[0].Text, gvTitles.SelectedRow.Cells[1].Text));
    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        if (lbItems.SelectedIndex != -1) {
            lbItems.Items.RemoveAt(lbItems.SelectedIndex);
        }
        btnDelete.Enabled = false;
    }

    protected void btnContinue_Click(object sender, EventArgs e)
    {
        ListItem[] collection = new ListItem[lbItems.Items.Count];
        lbItems.Items.CopyTo(collection, 0);
        Session["items"] = collection;
        double price = 0;
        foreach(ListItem item in lbItems.Items) {
            price += Convert.ToDouble(item.Value);
        }
        Session["price"] = price;
        Response.Redirect("Plakanje.aspx");
    }

    protected void lbItems_SelectedIndexChanged(object sender, EventArgs e)
    {
        btnDelete.Enabled = true;
    }
}