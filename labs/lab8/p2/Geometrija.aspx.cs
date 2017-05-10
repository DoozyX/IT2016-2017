using System;
using System.Globalization;
using System.Web.UI;
using GeometrijaService;

namespace p2 {
    public partial class Geometrija : Page {
        protected void Page_Load(object sender, EventArgs e) {}

        protected void btnPlostina_Click(object sender, EventArgs e) {
            GeometrijaService.Geometrija geometrija = new GeometrijaService.Geometrija();
            int height = Int32.Parse(tbVisina.Text);
            int radius = Int32.Parse(tbRadius.Text);
            lblPlostina.Text = geometrija.Plositna(height, radius).ToString(CultureInfo.CurrentCulture);
        }

        protected void btnVolumen_Click(object sender, EventArgs e) {
            GeometrijaService.Geometrija geometrija = new GeometrijaService.Geometrija();
            int height = Int32.Parse(tbVisina.Text);
            int radius = Int32.Parse(tbRadius.Text);
            lblVolumen.Text = geometrija.Volumen(height, radius).ToString(CultureInfo.CurrentCulture);
        }

        protected void btnInstanci_Click(object sender, EventArgs e) {
            GeometrijaService.Geometrija geometrija = new GeometrijaService.Geometrija();
            int height = Int32.Parse(tbVisina.Text);
            int radius = Int32.Parse(tbRadius.Text);
            Cilindar cilindar1 = new Cilindar {Height = height, Radius = radius};
            Cilindar cilindar2 = new Cilindar {Height = 20, Radius = 10};
            Cilindar cilindar;
            if (geometrija.SporediCilindri(cilindar1, cilindar2)) {
                cilindar = cilindar1;
            } else {
                cilindar = cilindar2;
            }

            lblRezultat.Text = String.Format("Height: {0}, Radius: {1}", cilindar.Height, cilindar.Radius);
        }
    }
}