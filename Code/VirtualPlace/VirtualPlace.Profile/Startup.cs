using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(VirtualPlace.Profile.Startup))]
namespace VirtualPlace.Profile
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
