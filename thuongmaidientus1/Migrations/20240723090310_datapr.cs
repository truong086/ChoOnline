using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace thuongmaidientus1.Migrations
{
    public partial class datapr : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "soluong",
                table: "products",
                type: "int",
                nullable: false,
                defaultValue: 0);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "soluong",
                table: "products");
        }
    }
}
