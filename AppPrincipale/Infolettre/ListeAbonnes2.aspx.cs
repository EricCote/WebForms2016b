using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AppPrincipale.Models;

namespace AppPrincipale
{
    public partial class ListeAbonnes2 : System.Web.UI.Page
    {
        private InfolettreContext db = new InfolettreContext();

        protected void Page_Unload(object sender, EventArgs e)
        {
            db.Dispose();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            
            //using (InfolettreContext db = new InfolettreContext())
            //{
            //    var ab = db.Abonnements.ToList();

            //    grdAbonnes.DataSource = ab;
            //    grdAbonnes.DataBind();
                
            //}
        }

        // The return type can be changed to IEnumerable, however to support
        // paging and sorting, the following parameters must be added:
        //     int maximumRows
        //     int startRowIndex
        //     out int totalRowCount
        //     string sortByExpression
        public IQueryable<AppPrincipale.Models.Abonnement> grdAbonnes_GetData()
        {
            Trace.Write("le selectMethod est appelé!");
            return db.Abonnements;
        }

        // The id parameter name should match the DataKeyNames value set on the control
        public void grdAbonnes_UpdateItem(int AbonnementId)
        {
            AppPrincipale.Models.Abonnement ab = null;
            ab = db.Abonnements.Find(AbonnementId);
 
            if (ab == null)
            {
                // The item wasn't found
                ModelState.AddModelError("", String.Format("Item with id {0} was not found", AbonnementId));
                return;
            }
            TryUpdateModel(ab);
            if (ModelState.IsValid)
            {
                db.SaveChanges();
            }
        }

        // The id parameter name should match the DataKeyNames value set on the control
        public void grdAbonnes_DeleteItem(int AbonnementId)
        {
            Abonnement ab = db.Abonnements.Find(AbonnementId);
            if (ab == null)
            {
                // The item wasn't found
                ModelState.AddModelError("", String.Format("Item with AbonnementId {0} was not found", AbonnementId));
                return;
            }
            db.Abonnements.Remove(ab);
            db.SaveChanges();
        }
    }
}