using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(JQueryAjaxCRUD.Startup))]
namespace JQueryAjaxCRUD
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
