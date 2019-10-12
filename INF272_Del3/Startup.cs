using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(INF272_Del3.Startup))]
namespace INF272_Del3
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
