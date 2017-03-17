using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Logiranje : System.Web.UI.Page {
    private static string password = "Интернет технологии";
    protected void Page_Load(object sender, EventArgs e) {}

    protected void btnPrvaStrana_Click(object sender, EventArgs e) {
        Response.Redirect("Default.aspx");
    }

    protected void btnProveri_Click(object sender, EventArgs e) {
        if (txtLozinka.Text == password) {
            txtPoraka.ReadOnly = false;
            txtPoraka.Focus();
        }
    }

    protected void txtPoraka_TextChanged(object sender, EventArgs e) {
        btnPrvaStrana.Enabled = true;
    }
}