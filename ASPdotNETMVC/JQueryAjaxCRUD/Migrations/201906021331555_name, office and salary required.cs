namespace JQueryAjaxCRUD.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class nameofficeandsalaryrequired : DbMigration
    {
        public override void Up()
        {
            AlterColumn("dbo.Employees", "EmployeeName", c => c.String(nullable: false, maxLength: 255));
            AlterColumn("dbo.Employees", "Office", c => c.String(nullable: false, maxLength: 128));
        }
        
        public override void Down()
        {
            AlterColumn("dbo.Employees", "Office", c => c.String(maxLength: 128));
            AlterColumn("dbo.Employees", "EmployeeName", c => c.String(maxLength: 255));
        }
    }
}
