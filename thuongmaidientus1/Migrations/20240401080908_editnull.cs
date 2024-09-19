using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace thuongmaidientus1.Migrations
{
    public partial class editnull : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_commentDescriptions_comments_commentid",
                table: "commentDescriptions");

            migrationBuilder.AlterColumn<int>(
                name: "commentid",
                table: "commentDescriptions",
                type: "int",
                nullable: true,
                oldClrType: typeof(int),
                oldType: "int");

            migrationBuilder.AddForeignKey(
                name: "FK_commentDescriptions_comments_commentid",
                table: "commentDescriptions",
                column: "commentid",
                principalTable: "comments",
                principalColumn: "id");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_commentDescriptions_comments_commentid",
                table: "commentDescriptions");

            migrationBuilder.AlterColumn<int>(
                name: "commentid",
                table: "commentDescriptions",
                type: "int",
                nullable: false,
                defaultValue: 0,
                oldClrType: typeof(int),
                oldType: "int",
                oldNullable: true);

            migrationBuilder.AddForeignKey(
                name: "FK_commentDescriptions_comments_commentid",
                table: "commentDescriptions",
                column: "commentid",
                principalTable: "comments",
                principalColumn: "id",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
