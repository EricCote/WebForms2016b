using AppPrincipale.Models;
using System;
using System.Globalization;
using System.Linq;
using System.Web.UI.WebControls;

namespace AppPrincipale
{
    public partial class Infolettre : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cvVille_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string[] villes = { "Quebec", "Montreal", "Levis" };

            CompareInfo ci = new CultureInfo("fr-CA").CompareInfo;
 
            if (villes.Any(ville => ci.Compare(
                     ville, args.Value, CompareOptions.IgnoreNonSpace
                   )==0
                 )   
               )
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }

        }

        protected void btnEnvoyer_Click(object sender, EventArgs e)
        {
            if (this.IsValid)
            {
                Abonnement ab = new Abonnement()
                {
                    Nom = txtNom.Text,
                    Courriel = txtCourriel.Text,
                    Age = int.Parse(txtAge.Text),
                    DateDebut = DateTime.Parse(txtDateDebut.Text),
                    Ville = txtVille.Text
                };

                InfolettreContext db = new InfolettreContext();
                db.Abonnements.Add(ab);
                db.SaveChanges();

                divSucces.InnerText = 
                    $"Merci de vous être abonné, {ab.Nom}. Vous pouvez abonner un ami.";
                divSucces.Visible = true;
            }
        }
    }
}