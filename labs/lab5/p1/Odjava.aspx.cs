using System;

namespace p1 {
    public partial class Odjava : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {
            lblMessage.Text = Session["User"] + ", штотуку се одјавиви со сесија број: <br>" + Request.QueryString["id"];
            Session.Abandon();
        }
    }
}