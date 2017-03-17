using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : Page {
    protected void Page_Load(object sender, EventArgs e) {
        if (!Page.IsPostBack) {
            lblTime.Text = DateTime.Now.ToString(CultureInfo.InvariantCulture);
        }
    }

    protected void btnTime_Click(object sender, EventArgs e) {
        lblTimeNow.Text = DateTime.Now.ToString(CultureInfo.CurrentCulture);
    }
}