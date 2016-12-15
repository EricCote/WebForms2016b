using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace AppPrincipale.Models
{
    public class Abonnement
    {
        public int AbonnementId { get; set; }
        public string Nom { get; set; }
        public string Courriel { get; set; }
        public int Age { get; set; }
        public DateTime DateDebut { get; set; }
        public string Ville { get; set; }
    }
}