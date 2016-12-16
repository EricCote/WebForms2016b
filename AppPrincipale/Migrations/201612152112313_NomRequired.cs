namespace AppPrincipale.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class NomRequired : DbMigration
    {
        public override void Up()
        {
            AlterColumn("dbo.Abonnements", "Nom", c => c.String(nullable: false));
        }
        
        public override void Down()
        {
            AlterColumn("dbo.Abonnements", "Nom", c => c.String());
        }
    }
}
