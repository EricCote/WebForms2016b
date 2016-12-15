﻿using System;
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
    }
}