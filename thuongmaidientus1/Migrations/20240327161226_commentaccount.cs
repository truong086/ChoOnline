using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace thuongmaidientus1.Migrations
{
    public partial class commentaccount : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "accountid",
                table: "commentDescriptions",
                type: "int",
                nullable: true);

            migrationBuilder.CreateIndex(
                name: "IX_commentDescriptions_accountid",
                table: "commentDescriptions",
                column: "accountid");

            migrationBuilder.AddForeignKey(
                name: "FK_commentDescriptions_accounts_accountid",
                table: "commentDescriptions",
                column: "accountid",
                principalTable: "accounts",
                principalColumn: "id");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_commentDescriptions_accounts_accountid",
                table: "commentDescriptions");

            migrationBuilder.DropIndex(
                name: "IX_commentDescriptions_accountid",
                table: "commentDescriptions");

            migrationBuilder.DropColumn(
                name: "accountid",
                table: "commentDescriptions");
        }
    }
}
