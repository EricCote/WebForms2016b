using AppPrincipale.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AppPrincipale.AdventureWorks
{
    public partial class Produits : System.Web.UI.Page
    {
        AwContext db = new AwContext();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Page_Unoad(object sender, EventArgs e)
        {
            db.Dispose();
        }


        // The return type can be changed to IEnumerable, however to support
        // paging and sorting, the following parameters must be added:
        //     int maximumRows
        //     int startRowIndex
        //     out int totalRowCount
        //     string sortByExpression
        public IQueryable<AppPrincipale.Models.Product> grdProduits_GetData()
        {
            return db.Products.Include("Subcategory");
        }
    }
}