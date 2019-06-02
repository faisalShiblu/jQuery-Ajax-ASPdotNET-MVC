namespace JQueryAjaxCRUD.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class makesalaryrequired : DbMigration
    {
        public override void Up()
        {
            AlterColumn("dbo.Employees", "Salary", c => c.Int(nullable: false));
        }
        
        public override void Down()
        {
            AlterColumn("dbo.Employees", "Salary", c => c.Int());
        }
    }
}
