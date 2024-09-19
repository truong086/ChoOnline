using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace thuongmaidientus1.Migrations
{
    public partial class danhgias : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Danhgia_accounts_accountid",
                table: "Danhgia");

            migrationBuilder.DropForeignKey(
                name: "FK_Danhgia_products_productid",
                table: "Danhgia");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Danhgia",
                table: "Danhgia");

            migrationBuilder.RenameTable(
                name: "Danhgia",
                newName: "danhGias");

            migrationBuilder.RenameIndex(
                name: "IX_Danhgia_productid",
                table: "danhGias",
                newName: "IX_danhGias_productid");

            migrationBuilder.RenameIndex(
                name: "IX_Danhgia_accountid",
                table: "danhGias",
                newName: "IX_danhGias_accountid");

            migrationBuilder.AddPrimaryKey(
                name: "PK_danhGias",
                table: "danhGias",
                column: "id");

            migrationBuilder.AddForeignKey(
                name: "FK_danhGias_accounts_accountid",
                table: "danhGias",
                column: "accountid",
                principalTable: "accounts",
                principalColumn: "id");

            migrationBuilder.AddForeignKey(
                name: "FK_danhGias_products_productid",
                table: "danhGias",
                column: "productid",
                principalTable: "products",
                principalColumn: "id");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_danhGias_accounts_accountid",
                table: "danhGias");

            migrationBuilder.DropForeignKey(
                name: "FK_danhGias_products_productid",
                table: "danhGias");

            migrationBuilder.DropPrimaryKey(
                name: "PK_danhGias",
                table: "danhGias");

            migrationBuilder.RenameTable(
                name: "danhGias",
                newName: "Danhgia");

            migrationBuilder.RenameIndex(
                name: "IX_danhGias_productid",
                table: "Danhgia",
                newName: "IX_Danhgia_productid");

            migrationBuilder.RenameIndex(
                name: "IX_danhGias_accountid",
                table: "Danhgia",
                newName: "IX_Danhgia_accountid");

            migrationBuilder.AddPrimaryKey(
                name: "PK_Danhgia",
                table: "Danhgia",
                column: "id");

            migrationBuilder.AddForeignKey(
                name: "FK_Danhgia_accounts_accountid",
                table: "Danhgia",
                column: "accountid",
                principalTable: "accounts",
                principalColumn: "id");

            migrationBuilder.AddForeignKey(
                name: "FK_Danhgia_products_productid",
                table: "Danhgia",
                column: "productid",
                principalTable: "products",
                principalColumn: "id");
        }
    }
}
