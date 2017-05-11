using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Aula_1105.Startup))]
namespace Aula_1105
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
