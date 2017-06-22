using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Plakanje : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack) {
            lbBuyItems.Items.AddRange((ListItem[])Session["items"]);
            lblPrice.Text = Session["price"].ToString();
        };
    }

    protected void btnBuy_Click(object sender, EventArgs e)
    {
        pnlBuy.Visible = false;
        lblDone.Visible = true;
    }
}