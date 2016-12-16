using AppPrincipale.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AppPrincipale
{
    public partial class Infolettre2 : System.Web.UI.Page
    {
        InfolettreContext db = new InfolettreContext();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Page_Unload(object sender, EventArgs e)
        {
            db.Dispose();
        }

        // The id parameter should match the DataKeyNames value set on the control
        // or be decorated with a value provider attribute, e.g. [QueryString]int id
        public AppPrincipale.Models.Abonnement detAbonnement_GetItem(int AbonnementId)
        {
            return  db.Abonnements.Find(AbonnementId);
        }

        public void detAbonnement_InsertItem()
        {
            var ab = new AppPrincipale.Models.Abonnement();
            TryUpdateModel(ab);
            if (ModelState.IsValid)
            {
                db.Abonnements.Add(ab);
                db.SaveChanges();

                divSucces.InnerText =
                  $"Merci de vous être abonné, {ab.Nom}. Vous pouvez abonner un ami.";
                divSucces.Visible = true;

            }
        }
    }
}