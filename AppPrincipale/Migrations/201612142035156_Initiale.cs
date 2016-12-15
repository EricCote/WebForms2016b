namespace AppPrincipale.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Initiale : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Abonnements",
                c => new
                    {
                        AbonnementId = c.Int(nullable: false, identity: true),
                        Nom = c.String(),
                        Courriel = c.String(),
                        Age = c.Int(nullable: false),
                        DateDebut = c.DateTime(nullable: false),
                        Ville = c.String(),
                    })
                .PrimaryKey(t => t.AbonnementId);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.Abonnements");
        }
    }
}
