using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(As.Startup))]
namespace As
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
