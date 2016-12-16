using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AppPrincipale
{
    public partial class TestAjax : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ScriptManager sm = (ScriptManager)this.Master.FindControl("Sm1");

            if (sm.IsInAsyncPostBack)
            {
                Label2.Text = DateTime.Now.ToLongTimeString();
            }
            else
            {
                Label1.Text = DateTime.Now.ToLongTimeString();
                Label2.Text = DateTime.Now.ToLongTimeString();
                Label3.Text = DateTime.Now.ToLongTimeString();
            }

            //System.Threading.Thread.Sleep(2000);

        }
    }
}