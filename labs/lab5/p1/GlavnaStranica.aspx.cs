using System;
using System.Collections.Generic;
using System.Drawing;
using System.Globalization;
using System.Text;
using System.Web;

namespace p1 {
    public partial class GlavnaStranica : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {
            if (!Page.IsPostBack) {
                string[] listaNaBoi = Enum.GetNames(typeof(KnownColor));
                ddlBackground.DataSource = listaNaBoi;
                ddlBackground.DataBind();
                ddlFont.DataSource = listaNaBoi;
                ddlFont.DataBind();
            }
            lblUser.Text = Session["User"].ToString();
            Application.Lock();
            HashSet<string> users = Application["Users"] as HashSet<string>;
            Application.UnLock();
            StringBuilder stringBuilder = new StringBuilder();
            if (users != null) {
                foreach (string name in users) {
                    stringBuilder.Append(name + " ");
                }
                lblUsers.Text = stringBuilder.ToString();
                lblNumUsers.Text = users.Count.ToString();
            }

            HttpCookie cookie = Request.Cookies["user"];
            if (cookie != null) {
                pnlPanel1.BackColor = Color.FromName(cookie["background"]);
                pnlPanel1.ForeColor = Color.FromName(cookie["font"]);
                lblLastLogIn.Text = cookie["lastLogIn"];
            } else {
                lblLastLogIn.Text = Session["User"] +
                                    "ова е твоја прва посета на страницата. избери боја на позадина и фонт, а потоа кликни на зачувај за да се зачува твојот избор на бои.";
            }
        }

        protected void ddlBackground_SelectedIndexChanged(object sender, EventArgs e) {
            pnlPanel1.BackColor = Color.FromName(ddlBackground.SelectedItem.Text);
        }

        protected void ddlFont_SelectedIndexChanged(object sender, EventArgs e) {
            pnlPanel1.ForeColor = Color.FromName(ddlFont.SelectedItem.Text);
        }

        protected void btnSave_Click(object sender, EventArgs e) {
            HttpCookie cookie = Request.Cookies["user"] ?? new HttpCookie("user");
            cookie["background"] = ddlBackground.SelectedItem.Text;
            cookie["font"] = ddlFont.SelectedItem.Text;
            cookie["lastLogIn"] = DateTime.Now.ToString(CultureInfo.InvariantCulture);
            pnlPanel1.BackColor = Color.FromName(cookie["background"]);
            pnlPanel1.ForeColor = Color.FromName(cookie["font"]);
            cookie.Expires = DateTime.Now.AddMinutes(5);
            Response.Cookies.Add(cookie);
            lblLastLogIn.Text = "Креирано е колаче";
        }

        protected void btnLogOut_Click(object sender, EventArgs e) {
            Application.Lock();
            HashSet<string> users = Application["Users"] as HashSet<string>;
            if (users != null) users.Remove(Session["User"].ToString());
            Application.UnLock();
            Response.Redirect("Odjava.aspx?id=" + Session.SessionID);
        }
    }
}