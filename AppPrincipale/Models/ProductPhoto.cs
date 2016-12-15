namespace AppPrincipale.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Production.ProductProductPhoto")]
    public partial class ProductPhoto
    {
        [Key]
        [Column(Order = 0)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int ProductID { get; set; }

        [Key]
        [Column("ProductPhotoID", Order = 1)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int PhotoID { get; set; }

        public bool Primary { get; set; }

        public DateTime ModifiedDate { get; set; }

        public virtual Product Product { get; set; }

        public virtual Photo Photo { get; set; }
    }
}
