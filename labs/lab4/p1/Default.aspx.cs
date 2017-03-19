using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : Page {
    protected void Page_Load(object sender, EventArgs e) {}

    void ClearAllText(Control con)
    {
        foreach (Control c in con.Controls) {
            if (c is TextBox)
                ((TextBox)c).Text = String.Empty;
            else
                ClearAllText(c);
        }
    }

    protected void btnNext1_Click(object sender, EventArgs e) {
        mvRegister.ActiveViewIndex = 1;
    }

    protected void btnNext2_Click(object sender, EventArgs e) {
        mvRegister.ActiveViewIndex = 2;
    }

    protected void btnNext3_Click(object sender, EventArgs e) {
        mvRegister.ActiveViewIndex = 3;
        lblSucessRegister.Text = "Креиран е корисникот " + tbID.Text + lblIDExtension.Text;
    }

    protected void btnPrev0_Click(object sender, EventArgs e) {
        mvRegister.ActiveViewIndex = 0;
    }

    protected void btnPrev1_Click(object sender, EventArgs e) {
        mvRegister.ActiveViewIndex = 1;
    }
    protected void btnHome_Click(object sender, EventArgs e) {
        mvRegister.ActiveViewIndex = 0;
        ClearAllText(mvRegister);
        rbGender.ClearSelection();
        calBirth.SelectedDates.Clear();
    }
}