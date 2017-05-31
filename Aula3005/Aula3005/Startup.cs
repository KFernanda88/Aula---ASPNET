using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Aula3005.Startup))]
namespace Aula3005
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
