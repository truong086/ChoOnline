using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace thuongmaidientus1.Migrations
{
    public partial class comment : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "comments",
                columns: table => new
                {
                    id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    message = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    images = table.Column<byte[]>(type: "varbinary(max)", nullable: true),
                    accountsid = table.Column<int>(type: "int", nullable: true),
                    productsid = table.Column<int>(type: "int", nullable: true),
                    Deleted = table.Column<bool>(type: "bit", nullable: false),
                    CretorEdit = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    CreatedAt = table.Column<DateTimeOffset>(type: "datetimeoffset", nullable: false),
                    UpdatedAt = table.Column<DateTimeOffset>(type: "datetimeoffset", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_comments", x => x.id);
                    table.ForeignKey(
                        name: "FK_comments_accounts_accountsid",
                        column: x => x.accountsid,
                        principalTable: "accounts",
                        principalColumn: "id");
                    table.ForeignKey(
                        name: "FK_comments_products_productsid",
                        column: x => x.productsid,
                        principalTable: "products",
                        principalColumn: "id");
                });

            migrationBuilder.CreateTable(
                name: "commentDescriptions",
                columns: table => new
                {
                    id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    message = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    images = table.Column<byte[]>(type: "varbinary(max)", nullable: true),
                    commentDescriptionsid = table.Column<int>(type: "int", nullable: true),
                    commentid = table.Column<int>(type: "int", nullable: false),
                    Deleted = table.Column<bool>(type: "bit", nullable: false),
                    CretorEdit = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    CreatedAt = table.Column<DateTimeOffset>(type: "datetimeoffset", nullable: false),
                    UpdatedAt = table.Column<DateTimeOffset>(type: "datetimeoffset", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_commentDescriptions", x => x.id);
                    table.ForeignKey(
                        name: "FK_commentDescriptions_commentDescriptions_commentDescriptionsid",
                        column: x => x.commentDescriptionsid,
                        principalTable: "commentDescriptions",
                        principalColumn: "id");
                    table.ForeignKey(
                        name: "FK_commentDescriptions_comments_commentid",
                        column: x => x.commentid,
                        principalTable: "comments",
                        principalColumn: "id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_commentDescriptions_commentDescriptionsid",
                table: "commentDescriptions",
                column: "commentDescriptionsid");

            migrationBuilder.CreateIndex(
                name: "IX_commentDescriptions_commentid",
                table: "commentDescriptions",
                column: "commentid");

            migrationBuilder.CreateIndex(
                name: "IX_comments_accountsid",
                table: "comments",
                column: "accountsid");

            migrationBuilder.CreateIndex(
                name: "IX_comments_productsid",
                table: "comments",
                column: "productsid");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "commentDescriptions");

            migrationBuilder.DropTable(
                name: "comments");
        }
    }
}
