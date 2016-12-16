using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AppPrincipale
{
    public partial class WizardTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Wizard1_ActiveStepChanged(object sender, EventArgs e)
        {
            if (Wizard1.ActiveStep.Name == "Revision")
            {
                lblLieu.Text = $"{txtPays.Text}, {txtProvince.Text}, {txtVille.Text}";
            }
        }
    }
}