using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : Page {
    protected void Page_Load(object sender, EventArgs e) {
        pnlPanela.Visible = false;
        ddlOd.Items.Clear();
        ddlOd.Items.Add("Skopje");
        ddlOd.Items.Add("Veles");
        ddlOd.Items.Add("Stip");
        ddlOd.Items.Add("Bitola");
        ddlOd.Items.Add("Berovo");
        ddlOd.Items.Add("Vinica");
        ddlOd.Items.Add("Ohrid");
        ddlOd.Items.Add("Gevgelija");
        ddlOd.Items.Add("Tetovo");
        ddlDo.Items.Clear();
        ddlDo.Items.Add("Skopje");
        ddlDo.Items.Add("Veles");
        ddlDo.Items.Add("Stip");
        ddlDo.Items.Add("Bitola");
        ddlDo.Items.Add("Berovo");
        ddlDo.Items.Add("Vinica");
        ddlDo.Items.Add("Ohrid");
        ddlDo.Items.Add("Gevgelija");
        ddlDo.Items.Add("Tetovo");

        string[] months = {
            "Januari", "Februari", "Mart", "April", "Maj", "Juni", "Juli", "Avgust", "Septemvri",
            "Oktomvri", "Noemvri", "Dekemvri"
        };
        ddlMesec.DataSource = months;
        ddlMesec.DataBind();
        for (int i = 1; i <= 31; ++i) {
            ddlDen.Items.Add(i.ToString());
        }
        for (int i = 0; i < 5; ++i) {
            ddlGodina.Items.Add((DateTime.Now.Year + i).ToString());
        }
        for (int i = 0; i < 23; ++i) {
            ddlVreme.Items.Add(i.ToString("00") + ":00");
        }
    }

    protected void btnPodnesi_Click(object sender, EventArgs e) {
        lblPatnik.Text = txtIme.Text;
        lblSredstvo.Text = lstSredstvo.SelectedItem.Text;
        lblOd.Text = ddlOd.SelectedValue;
        lblDo.Text = ddlDo.SelectedValue;
        lblVreme.Text = ddlVreme.SelectedValue;
        lblZona.Text = rblZona.SelectedValue;
        lblKlasa.Text = rblKlasa.SelectedValue;
        string posluga = "";
        foreach (ListItem item in cblPosluga.Items) {
            if (item.Selected) {
                posluga += item.Text + " ";
            }
            
        }
        lblPosluga.Text = posluga;
        imgSlika.ImageUrl = lstSredstvo.SelectedValue;
        pnlPanela.Visible = true;
    }
}