using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(lab3._2.Startup))]
namespace lab3._2
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
