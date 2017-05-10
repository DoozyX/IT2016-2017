using System;
using System.Collections.Generic;

namespace p1 {
    public partial class Najava : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {}

        protected void btnPodnesi_Click(object sender, EventArgs e) {
            if (txtLozinka.Text == "mp") {
                Session["user"] = txtKorisnik.Text;
                Application.Lock();
                if (Application["Users"] == null) {
                    HashSet<string> users = new HashSet<string> {
                        txtKorisnik.Text
                    };
                    Application["Users"] = users;
                } else {
                    HashSet<string> users = Application["Users"] as HashSet<string>;
                    if (users != null) {
                        users.Add(txtKorisnik.Text);
                        Application["Users"] = users;
                    }
                }
                Application.UnLock();
                Response.Redirect("GlavnaStranica.aspx");
            } else {
                if (ViewState["Attempts"] == null) {
                    ViewState["Attempts"] = 1;
                    lblObidi.Text = 1.ToString();
                } else if ((int) ViewState["Attempts"] == 2) {
                    btnPodnesi.Enabled = false;
                    lblObidi.Text = "Го надминавте бројот на обиди за најава! \n Не ви е дозволено да се најавите.";
                } else {
                    ViewState["Attempts"] = (int) ViewState["Attempts"] + 1;
                    lblObidi.Text = ViewState["Attempts"].ToString();
                }
            }
        }
    }
}