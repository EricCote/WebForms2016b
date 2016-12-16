using AppPrincipale.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AppPrincipale.AdventureWorks
{
    public partial class Details : System.Web.UI.Page
    {
        AwContext db = new AwContext();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Page_Unoad(object sender, EventArgs e)
        {
            db.Dispose();
        }

        // The id parameter should match the DataKeyNames value set on the control
        // or be decorated with a value provider attribute, e.g. [QueryString]int id
        public AppPrincipale.Models.Product DetProduit_GetItem([QueryString]int ProductID)
        {
            return db.Products.Find(ProductID);
        }
    }
}