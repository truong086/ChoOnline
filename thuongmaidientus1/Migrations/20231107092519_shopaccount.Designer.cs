﻿// <auto-generated />
using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using thuongmaidientus1.Models;

#nullable disable

namespace thuongmaidientus1.Migrations
{
    [DbContext(typeof(DBContexts))]
    [Migration("20231107092519_shopaccount")]
    partial class shopaccount
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "6.0.16")
                .HasAnnotation("Relational:MaxIdentifierLength", 128);

            SqlServerModelBuilderExtensions.UseIdentityColumns(modelBuilder, 1L, 1);

            modelBuilder.Entity("thuongmaidientus1.Models.Account", b =>
                {
                    b.Property<int>("id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("id"), 1L, 1);

                    b.Property<bool>("Action")
                        .HasColumnType("bit");

                    b.Property<DateTimeOffset>("CreatedAt")
                        .HasColumnType("datetimeoffset");

                    b.Property<string>("CretorEdit")
                        .HasColumnType("nvarchar(max)");

                    b.Property<bool>("Deleted")
                        .HasColumnType("bit");

                    b.Property<DateTimeOffset>("UpdatedAt")
                        .HasColumnType("datetimeoffset");

                    b.Property<string>("email")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("image")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("password")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("phonenumber")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int?>("roleid")
                        .HasColumnType("int");

                    b.Property<string>("username")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("id");

                    b.HasIndex("roleid");

                    b.ToTable("accounts");
                });

            modelBuilder.Entity("thuongmaidientus1.Models.Category", b =>
                {
                    b.Property<int>("id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("id"), 1L, 1);

                    b.Property<DateTimeOffset>("CreatedAt")
                        .HasColumnType("datetimeoffset");

                    b.Property<string>("CretorEdit")
                        .HasColumnType("nvarchar(max)");

                    b.Property<bool>("Deleted")
                        .HasColumnType("bit");

                    b.Property<DateTimeOffset>("UpdatedAt")
                        .HasColumnType("datetimeoffset");

                    b.Property<int?>("accountid")
                        .HasColumnType("int");

                    b.Property<string>("creatorId")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("images")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("name")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("id");

                    b.HasIndex("accountid");

                    b.ToTable("categories");
                });

            modelBuilder.Entity("thuongmaidientus1.Models.Order", b =>
                {
                    b.Property<int>("id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("id"), 1L, 1);

                    b.Property<int?>("Accountsid")
                        .HasColumnType("int");

                    b.Property<DateTimeOffset>("CreatedAt")
                        .HasColumnType("datetimeoffset");

                    b.Property<string>("CretorEdit")
                        .HasColumnType("nvarchar(max)");

                    b.Property<bool>("Deleted")
                        .HasColumnType("bit");

                    b.Property<DateTimeOffset>("UpdatedAt")
                        .HasColumnType("datetimeoffset");

                    b.Property<string>("orderName")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("status")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("id");

                    b.HasIndex("Accountsid");

                    b.ToTable("orders");
                });

            modelBuilder.Entity("thuongmaidientus1.Models.OrderDetails", b =>
                {
                    b.Property<int>("id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("id"), 1L, 1);

                    b.Property<DateTimeOffset>("CreatedAt")
                        .HasColumnType("datetimeoffset");

                    b.Property<string>("CretorEdit")
                        .HasColumnType("nvarchar(max)");

                    b.Property<bool>("Deleted")
                        .HasColumnType("bit");

                    b.Property<int?>("Ordersid")
                        .HasColumnType("int");

                    b.Property<int?>("Productsid")
                        .HasColumnType("int");

                    b.Property<DateTimeOffset>("UpdatedAt")
                        .HasColumnType("datetimeoffset");

                    b.Property<float>("price")
                        .HasColumnType("real");

                    b.Property<int>("quantity")
                        .HasColumnType("int");

                    b.Property<int>("total")
                        .HasColumnType("int");

                    b.HasKey("id");

                    b.HasIndex("Ordersid");

                    b.HasIndex("Productsid");

                    b.ToTable("OrderDetails");
                });

            modelBuilder.Entity("thuongmaidientus1.Models.Product", b =>
                {
                    b.Property<int>("id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("id"), 1L, 1);

                    b.Property<int?>("Accountsid")
                        .HasColumnType("int");

                    b.Property<DateTimeOffset>("CreatedAt")
                        .HasColumnType("datetimeoffset");

                    b.Property<string>("CretorEdit")
                        .HasColumnType("nvarchar(max)");

                    b.Property<bool>("Deleted")
                        .HasColumnType("bit");

                    b.Property<DateTimeOffset>("UpdatedAt")
                        .HasColumnType("datetimeoffset");

                    b.Property<int>("click")
                        .HasColumnType("int");

                    b.Property<string>("description")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("image")
                        .HasColumnType("nvarchar(max)");

                    b.Property<float>("price")
                        .HasColumnType("real");

                    b.Property<string>("title")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("id");

                    b.HasIndex("Accountsid");

                    b.ToTable("products");
                });

            modelBuilder.Entity("thuongmaidientus1.Models.ProductCategory", b =>
                {
                    b.Property<int>("id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("id"), 1L, 1);

                    b.Property<int?>("Categoryid")
                        .HasColumnType("int");

                    b.Property<DateTimeOffset>("CreatedAt")
                        .HasColumnType("datetimeoffset");

                    b.Property<string>("CretorEdit")
                        .HasColumnType("nvarchar(max)");

                    b.Property<bool>("Deleted")
                        .HasColumnType("bit");

                    b.Property<int?>("Productid")
                        .HasColumnType("int");

                    b.Property<DateTimeOffset>("UpdatedAt")
                        .HasColumnType("datetimeoffset");

                    b.HasKey("id");

                    b.HasIndex("Categoryid");

                    b.HasIndex("Productid");

                    b.ToTable("productCategories");
                });

            modelBuilder.Entity("thuongmaidientus1.Models.Roles", b =>
                {
                    b.Property<int>("id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("id"), 1L, 1);

                    b.Property<DateTimeOffset>("CreatedAt")
                        .HasColumnType("datetimeoffset");

                    b.Property<string>("CretorEdit")
                        .HasColumnType("nvarchar(max)");

                    b.Property<bool>("Deleted")
                        .HasColumnType("bit");

                    b.Property<DateTimeOffset>("UpdatedAt")
                        .HasColumnType("datetimeoffset");

                    b.Property<string>("name")
                        .HasMaxLength(100)
                        .HasColumnType("nvarchar(100)");

                    b.HasKey("id");

                    b.ToTable("roles");
                });

            modelBuilder.Entity("thuongmaidientus1.Models.Shop", b =>
                {
                    b.Property<int>("id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("id"), 1L, 1);

                    b.Property<DateTimeOffset>("CreatedAt")
                        .HasColumnType("datetimeoffset");

                    b.Property<string>("CretorEdit")
                        .HasColumnType("nvarchar(max)");

                    b.Property<bool>("Deleted")
                        .HasColumnType("bit");

                    b.Property<string>("Name")
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTimeOffset>("UpdatedAt")
                        .HasColumnType("datetimeoffset");

                    b.Property<int?>("accountid")
                        .HasColumnType("int");

                    b.Property<string>("diachi")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("email")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("image")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("sodienthoai")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int?>("vanchuyenid")
                        .HasColumnType("int");

                    b.HasKey("id");

                    b.HasIndex("accountid");

                    b.HasIndex("vanchuyenid");

                    b.ToTable("shops");
                });

            modelBuilder.Entity("thuongmaidientus1.Models.ShopVanchuyen", b =>
                {
                    b.Property<int>("id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("id"), 1L, 1);

                    b.Property<DateTimeOffset>("CreatedAt")
                        .HasColumnType("datetimeoffset");

                    b.Property<string>("CretorEdit")
                        .HasColumnType("nvarchar(max)");

                    b.Property<bool>("Deleted")
                        .HasColumnType("bit");

                    b.Property<DateTimeOffset>("UpdatedAt")
                        .HasColumnType("datetimeoffset");

                    b.Property<int?>("Vanchuyenid")
                        .HasColumnType("int");

                    b.Property<int?>("shopid")
                        .HasColumnType("int");

                    b.HasKey("id");

                    b.HasIndex("Vanchuyenid");

                    b.HasIndex("shopid");

                    b.ToTable("shopVanchuyens");
                });

            modelBuilder.Entity("thuongmaidientus1.Models.Tokens", b =>
                {
                    b.Property<int>("id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("id"), 1L, 1);

                    b.Property<DateTimeOffset>("CreatedAt")
                        .HasColumnType("datetimeoffset");

                    b.Property<string>("CretorEdit")
                        .HasColumnType("nvarchar(max)");

                    b.Property<bool>("Deleted")
                        .HasColumnType("bit");

                    b.Property<DateTimeOffset>("UpdatedAt")
                        .HasColumnType("datetimeoffset");

                    b.Property<int?>("accountid")
                        .HasColumnType("int");

                    b.Property<string>("geneToken")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("token")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("id");

                    b.HasIndex("accountid");

                    b.ToTable("tokens");
                });

            modelBuilder.Entity("thuongmaidientus1.Models.Vanchuyen", b =>
                {
                    b.Property<int>("id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("id"), 1L, 1);

                    b.Property<DateTimeOffset>("CreatedAt")
                        .HasColumnType("datetimeoffset");

                    b.Property<string>("CretorEdit")
                        .HasColumnType("nvarchar(max)");

                    b.Property<bool>("Deleted")
                        .HasColumnType("bit");

                    b.Property<DateTimeOffset>("UpdatedAt")
                        .HasColumnType("datetimeoffset");

                    b.Property<string>("diachi")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("name")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("id");

                    b.ToTable("vanchuyens");
                });

            modelBuilder.Entity("thuongmaidientus1.Models.Account", b =>
                {
                    b.HasOne("thuongmaidientus1.Models.Roles", "role")
                        .WithMany("accounts")
                        .HasForeignKey("roleid");

                    b.Navigation("role");
                });

            modelBuilder.Entity("thuongmaidientus1.Models.Category", b =>
                {
                    b.HasOne("thuongmaidientus1.Models.Account", "account")
                        .WithMany("Categories")
                        .HasForeignKey("accountid");

                    b.Navigation("account");
                });

            modelBuilder.Entity("thuongmaidientus1.Models.Order", b =>
                {
                    b.HasOne("thuongmaidientus1.Models.Account", "Accounts")
                        .WithMany("Orders")
                        .HasForeignKey("Accountsid");

                    b.Navigation("Accounts");
                });

            modelBuilder.Entity("thuongmaidientus1.Models.OrderDetails", b =>
                {
                    b.HasOne("thuongmaidientus1.Models.Order", "Orders")
                        .WithMany("OrderDetails")
                        .HasForeignKey("Ordersid");

                    b.HasOne("thuongmaidientus1.Models.Product", "Products")
                        .WithMany("OrderDetails")
                        .HasForeignKey("Productsid");

                    b.Navigation("Orders");

                    b.Navigation("Products");
                });

            modelBuilder.Entity("thuongmaidientus1.Models.Product", b =>
                {
                    b.HasOne("thuongmaidientus1.Models.Account", "Accounts")
                        .WithMany("Products")
                        .HasForeignKey("Accountsid");

                    b.Navigation("Accounts");
                });

            modelBuilder.Entity("thuongmaidientus1.Models.ProductCategory", b =>
                {
                    b.HasOne("thuongmaidientus1.Models.Category", "Category")
                        .WithMany("CategoryProduct")
                        .HasForeignKey("Categoryid");

                    b.HasOne("thuongmaidientus1.Models.Product", "Product")
                        .WithMany("CategoryProduct")
                        .HasForeignKey("Productid");

                    b.Navigation("Category");

                    b.Navigation("Product");
                });

            modelBuilder.Entity("thuongmaidientus1.Models.Shop", b =>
                {
                    b.HasOne("thuongmaidientus1.Models.Account", "account")
                        .WithMany("Shops")
                        .HasForeignKey("accountid");

                    b.HasOne("thuongmaidientus1.Models.Vanchuyen", "vanchuyen")
                        .WithMany("Shops")
                        .HasForeignKey("vanchuyenid");

                    b.Navigation("account");

                    b.Navigation("vanchuyen");
                });

            modelBuilder.Entity("thuongmaidientus1.Models.ShopVanchuyen", b =>
                {
                    b.HasOne("thuongmaidientus1.Models.Vanchuyen", "Vanchuyen")
                        .WithMany()
                        .HasForeignKey("Vanchuyenid");

                    b.HasOne("thuongmaidientus1.Models.Shop", "shop")
                        .WithMany()
                        .HasForeignKey("shopid");

                    b.Navigation("Vanchuyen");

                    b.Navigation("shop");
                });

            modelBuilder.Entity("thuongmaidientus1.Models.Tokens", b =>
                {
                    b.HasOne("thuongmaidientus1.Models.Account", "account")
                        .WithMany()
                        .HasForeignKey("accountid");

                    b.Navigation("account");
                });

            modelBuilder.Entity("thuongmaidientus1.Models.Account", b =>
                {
                    b.Navigation("Categories");

                    b.Navigation("Orders");

                    b.Navigation("Products");

                    b.Navigation("Shops");
                });

            modelBuilder.Entity("thuongmaidientus1.Models.Category", b =>
                {
                    b.Navigation("CategoryProduct");
                });

            modelBuilder.Entity("thuongmaidientus1.Models.Order", b =>
                {
                    b.Navigation("OrderDetails");
                });

            modelBuilder.Entity("thuongmaidientus1.Models.Product", b =>
                {
                    b.Navigation("CategoryProduct");

                    b.Navigation("OrderDetails");
                });

            modelBuilder.Entity("thuongmaidientus1.Models.Roles", b =>
                {
                    b.Navigation("accounts");
                });

            modelBuilder.Entity("thuongmaidientus1.Models.Vanchuyen", b =>
                {
                    b.Navigation("Shops");
                });
#pragma warning restore 612, 618
        }
    }
}
