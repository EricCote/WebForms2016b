using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace AppPrincipale.Models
{
    public class InfolettreContext : DbContext
    {
        public InfolettreContext() : base("Infolettre")
        {}

        public DbSet<Abonnement> Abonnements { get; set; }
    }
}