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
        [Required()]
        public string Nom { get; set; }
        [DataType(DataType.EmailAddress)]
        public string Courriel { get; set; }
        [Range(18,125)]
        public int Age { get; set; }

        [DataType(DataType.Date)]
        public DateTime DateDebut { get; set; }

        public string Ville { get; set; }
    }
}