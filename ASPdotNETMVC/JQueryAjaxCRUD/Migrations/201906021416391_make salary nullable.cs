namespace JQueryAjaxCRUD.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class makesalarynullable : DbMigration
    {
        public override void Up()
        {
            AlterColumn("dbo.Employees", "Salary", c => c.Int());
        }
        
        public override void Down()
        {
            AlterColumn("dbo.Employees", "Salary", c => c.Int(nullable: false));
        }
    }
}
