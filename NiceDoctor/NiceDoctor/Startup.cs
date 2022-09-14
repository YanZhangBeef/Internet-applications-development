using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(NiceDoctor.Startup))]
namespace NiceDoctor
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
