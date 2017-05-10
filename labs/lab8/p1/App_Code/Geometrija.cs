using System.Web.Services;

namespace p1 {
    /// <summary>
    /// Summary description for Geometrija
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
    public class Geometrija : WebService {
        [WebMethod(Description = "Ja vraka poslstnata za vnesena visiina i radius na cilindar.")]
        public double Plositna(double h, double r) {
            return new Cilindar {
                Radius = r,
                Height = h
            }.Area;
        }

        [WebMethod(Description = "Go vraka volumenot za vnesena visiina i radius na cilindar.")]
        public double Volumen(double h, double r) {
            return new Cilindar {Radius = r, Height = h}.Volume;
        }

        [WebMethod(Description = "Vraka true dokolku cilindar1 e pogolem od cilindar2, false obratno.")]
        public bool SporediCilindri(Cilindar cilindar1, Cilindar cilindar2) {
            return cilindar1.CompareTo(cilindar2) == 1;
        }
    }
}