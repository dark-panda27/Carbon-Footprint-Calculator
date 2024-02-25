using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Carbon_Footprint_Calculator.Startup))]
namespace Carbon_Footprint_Calculator
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
