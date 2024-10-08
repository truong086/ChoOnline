USE [thuongmaidientus1]
GO
/****** Object:  Schema [HangFire]    Script Date: 9/19/2024 3:09:15 PM ******/
CREATE SCHEMA [HangFire]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 9/19/2024 3:09:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[accounts]    Script Date: 9/19/2024 3:09:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[accounts](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](max) NULL,
	[password] [nvarchar](max) NULL,
	[email] [nvarchar](max) NULL,
	[phonenumber] [nvarchar](max) NULL,
	[Action] [bit] NOT NULL,
	[roleid] [int] NULL,
	[Deleted] [bit] NOT NULL,
	[CreatedAt] [datetimeoffset](7) NOT NULL,
	[UpdatedAt] [datetimeoffset](7) NOT NULL,
	[image] [nvarchar](max) NULL,
	[CretorEdit] [nvarchar](max) NULL,
 CONSTRAINT [PK_accounts] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[categories]    Script Date: 9/19/2024 3:09:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[images] [nvarchar](max) NULL,
	[creatorId] [nvarchar](max) NULL,
	[accountid] [int] NULL,
	[Deleted] [bit] NOT NULL,
	[CreatedAt] [datetimeoffset](7) NOT NULL,
	[UpdatedAt] [datetimeoffset](7) NOT NULL,
	[CretorEdit] [nvarchar](max) NULL,
 CONSTRAINT [PK_categories] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[commentDescriptions]    Script Date: 9/19/2024 3:09:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[commentDescriptions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[message] [nvarchar](max) NULL,
	[images] [varbinary](max) NULL,
	[commentDescriptionsid] [int] NULL,
	[commentid] [int] NULL,
	[Deleted] [bit] NOT NULL,
	[CretorEdit] [nvarchar](max) NULL,
	[CreatedAt] [datetimeoffset](7) NOT NULL,
	[UpdatedAt] [datetimeoffset](7) NOT NULL,
	[accountid] [int] NULL,
 CONSTRAINT [PK_commentDescriptions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[comments]    Script Date: 9/19/2024 3:09:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comments](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[message] [nvarchar](max) NULL,
	[images] [varbinary](max) NULL,
	[accountsid] [int] NULL,
	[productsid] [int] NULL,
	[Deleted] [bit] NOT NULL,
	[CretorEdit] [nvarchar](max) NULL,
	[CreatedAt] [datetimeoffset](7) NOT NULL,
	[UpdatedAt] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [PK_comments] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[danhGias]    Script Date: 9/19/2024 3:09:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[danhGias](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sao] [int] NOT NULL,
	[message] [nvarchar](max) NULL,
	[accountid] [int] NULL,
	[productid] [int] NULL,
	[Deleted] [bit] NOT NULL,
	[CretorEdit] [nvarchar](max) NULL,
	[CreatedAt] [datetimeoffset](7) NOT NULL,
	[UpdatedAt] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [PK_danhGias] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[merchants]    Script Date: 9/19/2024 3:09:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[merchants](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[MerchantName] [nvarchar](max) NULL,
	[MerchantWebLink] [nvarchar](max) NULL,
	[MerchantIpnUrl] [nvarchar](max) NULL,
	[MerchantReturnUrl] [nvarchar](max) NULL,
	[SecretKey] [nvarchar](max) NULL,
	[IsActive] [bit] NULL,
	[Deleted] [bit] NOT NULL,
	[CretorEdit] [nvarchar](max) NULL,
	[CreatedAt] [datetimeoffset](7) NOT NULL,
	[UpdatedAt] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [PK_merchants] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 9/19/2024 3:09:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[quantity] [int] NOT NULL,
	[total] [int] NOT NULL,
	[price] [real] NOT NULL,
	[Ordersid] [int] NULL,
	[Productsid] [int] NULL,
	[Deleted] [bit] NOT NULL,
	[CreatedAt] [datetimeoffset](7) NOT NULL,
	[UpdatedAt] [datetimeoffset](7) NOT NULL,
	[CretorEdit] [nvarchar](max) NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 9/19/2024 3:09:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[orderName] [nvarchar](max) NULL,
	[status] [nvarchar](max) NULL,
	[Accountsid] [int] NULL,
	[Deleted] [bit] NOT NULL,
	[CreatedAt] [datetimeoffset](7) NOT NULL,
	[UpdatedAt] [datetimeoffset](7) NOT NULL,
	[CretorEdit] [nvarchar](max) NULL,
 CONSTRAINT [PK_orders] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[paymentDescriptions]    Script Date: 9/19/2024 3:09:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[paymentDescriptions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[DesLogo] [nvarchar](max) NULL,
	[DesShortName] [nvarchar](max) NULL,
	[DesName] [nvarchar](max) NULL,
	[DesSortIndex] [int] NOT NULL,
	[ParentIdid] [int] NULL,
	[IsActive] [bit] NULL,
	[Deleted] [bit] NOT NULL,
	[CretorEdit] [nvarchar](max) NULL,
	[CreatedAt] [datetimeoffset](7) NOT NULL,
	[UpdatedAt] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [PK_paymentDescriptions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[paymentNotifications]    Script Date: 9/19/2024 3:09:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[paymentNotifications](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[PaymentRefId] [int] NULL,
	[NotiDate] [nvarchar](max) NULL,
	[NotiAmount] [nvarchar](max) NULL,
	[NotiContent] [nvarchar](max) NULL,
	[NotiMessage] [nvarchar](max) NULL,
	[NotiSignature] [nvarchar](max) NULL,
	[PaymentIdid] [int] NULL,
	[MerchantId] [int] NULL,
	[NotiSatus] [nvarchar](max) NULL,
	[NotiResDate] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
	[CretorEdit] [nvarchar](max) NULL,
	[CreatedAt] [datetimeoffset](7) NOT NULL,
	[UpdatedAt] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [PK_paymentNotifications] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[payments]    Script Date: 9/19/2024 3:09:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[payments](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[PaymentContent] [nvarchar](max) NULL,
	[PaymentCurrency] [nvarchar](max) NULL,
	[PaymentRefId] [int] NULL,
	[PaymentAmount] [decimal](18, 2) NULL,
	[PaymentDate] [datetimeoffset](7) NULL,
	[ExpireDate] [datetimeoffset](7) NULL,
	[PaymentLanguage] [nvarchar](max) NULL,
	[MerchantIdid] [int] NULL,
	[PaymentDestinationIdid] [int] NULL,
	[PaidAmount] [decimal](18, 2) NULL,
	[PaymentStatus] [nvarchar](max) NULL,
	[PaymentLastMessage] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
	[CretorEdit] [nvarchar](max) NULL,
	[CreatedAt] [datetimeoffset](7) NOT NULL,
	[UpdatedAt] [datetimeoffset](7) NOT NULL,
	[paymentId] [nvarchar](max) NULL,
 CONSTRAINT [PK_payments] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[paymentSignatures]    Script Date: 9/19/2024 3:09:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[paymentSignatures](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[SignValue] [nvarchar](max) NULL,
	[SignAlgo] [nvarchar](max) NULL,
	[SignDate] [datetimeoffset](7) NULL,
	[SignOwn] [nvarchar](max) NULL,
	[PaymentIdid] [int] NULL,
	[Deleted] [bit] NOT NULL,
	[CretorEdit] [nvarchar](max) NULL,
	[CreatedAt] [datetimeoffset](7) NOT NULL,
	[UpdatedAt] [datetimeoffset](7) NOT NULL,
	[IsValid] [bit] NULL,
 CONSTRAINT [PK_paymentSignatures] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[paymentTransactions]    Script Date: 9/19/2024 3:09:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[paymentTransactions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TranMessage] [nvarchar](max) NULL,
	[TranPayLoad] [nvarchar](max) NULL,
	[TranStatus] [nvarchar](max) NULL,
	[TranAmount] [decimal](18, 2) NULL,
	[TranDate] [datetimeoffset](7) NULL,
	[PaymentIdid] [int] NULL,
	[Deleted] [bit] NOT NULL,
	[CretorEdit] [nvarchar](max) NULL,
	[CreatedAt] [datetimeoffset](7) NOT NULL,
	[UpdatedAt] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [PK_paymentTransactions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[productCategories]    Script Date: 9/19/2024 3:09:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[productCategories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Productid] [int] NULL,
	[Categoryid] [int] NULL,
	[Deleted] [bit] NOT NULL,
	[CreatedAt] [datetimeoffset](7) NOT NULL,
	[UpdatedAt] [datetimeoffset](7) NOT NULL,
	[CretorEdit] [nvarchar](max) NULL,
 CONSTRAINT [PK_productCategories] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[productimages]    Script Date: 9/19/2024 3:09:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[productimages](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[productid] [int] NULL,
	[image] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
	[CretorEdit] [nvarchar](max) NULL,
	[CreatedAt] [datetimeoffset](7) NOT NULL,
	[UpdatedAt] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [PK_productimages] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[products]    Script Date: 9/19/2024 3:09:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[image] [nvarchar](max) NULL,
	[price] [real] NOT NULL,
	[click] [int] NOT NULL,
	[Accountsid] [int] NULL,
	[Deleted] [bit] NOT NULL,
	[CreatedAt] [datetimeoffset](7) NOT NULL,
	[UpdatedAt] [datetimeoffset](7) NOT NULL,
	[CretorEdit] [nvarchar](max) NULL,
	[Shopsid] [int] NULL,
	[Categorysid] [int] NULL,
	[soluong] [int] NOT NULL,
 CONSTRAINT [PK_products] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[roles]    Script Date: 9/19/2024 3:09:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[roles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
	[Deleted] [bit] NOT NULL,
	[CreatedAt] [datetimeoffset](7) NOT NULL,
	[UpdatedAt] [datetimeoffset](7) NOT NULL,
	[CretorEdit] [nvarchar](max) NULL,
 CONSTRAINT [PK_roles] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sanpham]    Script Date: 9/19/2024 3:09:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sanpham](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ten] [nvarchar](50) NULL,
	[noidung] [nvarchar](200) NULL,
	[solanclick] [int] NULL,
	[gia] [int] NULL,
	[ngaytao] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[shops]    Script Date: 9/19/2024 3:09:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shops](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[diachi] [nvarchar](max) NULL,
	[email] [nvarchar](max) NULL,
	[sodienthoai] [nvarchar](max) NULL,
	[image] [nvarchar](max) NULL,
	[vanchuyenid] [int] NULL,
	[Deleted] [bit] NOT NULL,
	[CretorEdit] [nvarchar](max) NULL,
	[CreatedAt] [datetimeoffset](7) NOT NULL,
	[UpdatedAt] [datetimeoffset](7) NOT NULL,
	[accountid] [int] NULL,
 CONSTRAINT [PK_shops] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[shopVanchuyens]    Script Date: 9/19/2024 3:09:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shopVanchuyens](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[shopid] [int] NULL,
	[Vanchuyenid] [int] NULL,
	[Deleted] [bit] NOT NULL,
	[CretorEdit] [nvarchar](max) NULL,
	[CreatedAt] [datetimeoffset](7) NOT NULL,
	[UpdatedAt] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [PK_shopVanchuyens] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tokens]    Script Date: 9/19/2024 3:09:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tokens](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[accountid] [int] NULL,
	[token] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
	[CreatedAt] [datetimeoffset](7) NOT NULL,
	[UpdatedAt] [datetimeoffset](7) NOT NULL,
	[geneToken] [nvarchar](max) NULL,
	[CretorEdit] [nvarchar](max) NULL,
 CONSTRAINT [PK_tokens] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tuvungs]    Script Date: 9/19/2024 3:09:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tuvungs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TiengTrung] [nvarchar](max) NULL,
	[Phienam] [nvarchar](max) NULL,
	[Dichnghia] [nvarchar](max) NULL,
	[NgayTao] [datetime2](7) NULL,
 CONSTRAINT [PK_tuvungs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vanchuyens]    Script Date: 9/19/2024 3:09:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vanchuyens](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[diachi] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
	[CretorEdit] [nvarchar](max) NULL,
	[CreatedAt] [datetimeoffset](7) NOT NULL,
	[UpdatedAt] [datetimeoffset](7) NOT NULL,
	[image] [nvarchar](max) NULL,
 CONSTRAINT [PK_vanchuyens] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[xulydonhangs]    Script Date: 9/19/2024 3:09:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xulydonhangs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NOT NULL,
	[product_name] [nvarchar](max) NULL,
	[price] [real] NULL,
	[soluong] [int] NOT NULL,
	[total] [int] NOT NULL,
	[trangthai] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
	[CretorEdit] [nvarchar](max) NULL,
	[CreatedAt] [datetimeoffset](7) NOT NULL,
	[UpdatedAt] [datetimeoffset](7) NOT NULL,
	[Accountid] [int] NULL,
	[vanchuyenid] [int] NULL,
 CONSTRAINT [PK_xulydonhangs] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[AggregatedCounter]    Script Date: 9/19/2024 3:09:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[AggregatedCounter](
	[Key] [nvarchar](100) NOT NULL,
	[Value] [bigint] NOT NULL,
	[ExpireAt] [datetime] NULL,
 CONSTRAINT [PK_HangFire_CounterAggregated] PRIMARY KEY CLUSTERED 
(
	[Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[Counter]    Script Date: 9/19/2024 3:09:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[Counter](
	[Key] [nvarchar](100) NOT NULL,
	[Value] [int] NOT NULL,
	[ExpireAt] [datetime] NULL,
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_HangFire_Counter] PRIMARY KEY CLUSTERED 
(
	[Key] ASC,
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[Hash]    Script Date: 9/19/2024 3:09:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[Hash](
	[Key] [nvarchar](100) NOT NULL,
	[Field] [nvarchar](100) NOT NULL,
	[Value] [nvarchar](max) NULL,
	[ExpireAt] [datetime2](7) NULL,
 CONSTRAINT [PK_HangFire_Hash] PRIMARY KEY CLUSTERED 
(
	[Key] ASC,
	[Field] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = ON, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[Job]    Script Date: 9/19/2024 3:09:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[Job](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[StateId] [bigint] NULL,
	[StateName] [nvarchar](20) NULL,
	[InvocationData] [nvarchar](max) NOT NULL,
	[Arguments] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime] NOT NULL,
	[ExpireAt] [datetime] NULL,
 CONSTRAINT [PK_HangFire_Job] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[JobParameter]    Script Date: 9/19/2024 3:09:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[JobParameter](
	[JobId] [bigint] NOT NULL,
	[Name] [nvarchar](40) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_HangFire_JobParameter] PRIMARY KEY CLUSTERED 
(
	[JobId] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[JobQueue]    Script Date: 9/19/2024 3:09:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[JobQueue](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[JobId] [bigint] NOT NULL,
	[Queue] [nvarchar](50) NOT NULL,
	[FetchedAt] [datetime] NULL,
 CONSTRAINT [PK_HangFire_JobQueue] PRIMARY KEY CLUSTERED 
(
	[Queue] ASC,
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[List]    Script Date: 9/19/2024 3:09:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[List](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Key] [nvarchar](100) NOT NULL,
	[Value] [nvarchar](max) NULL,
	[ExpireAt] [datetime] NULL,
 CONSTRAINT [PK_HangFire_List] PRIMARY KEY CLUSTERED 
(
	[Key] ASC,
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[Schema]    Script Date: 9/19/2024 3:09:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[Schema](
	[Version] [int] NOT NULL,
 CONSTRAINT [PK_HangFire_Schema] PRIMARY KEY CLUSTERED 
(
	[Version] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[Server]    Script Date: 9/19/2024 3:09:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[Server](
	[Id] [nvarchar](200) NOT NULL,
	[Data] [nvarchar](max) NULL,
	[LastHeartbeat] [datetime] NOT NULL,
 CONSTRAINT [PK_HangFire_Server] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[Set]    Script Date: 9/19/2024 3:09:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[Set](
	[Key] [nvarchar](100) NOT NULL,
	[Score] [float] NOT NULL,
	[Value] [nvarchar](256) NOT NULL,
	[ExpireAt] [datetime] NULL,
 CONSTRAINT [PK_HangFire_Set] PRIMARY KEY CLUSTERED 
(
	[Key] ASC,
	[Value] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = ON, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[State]    Script Date: 9/19/2024 3:09:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[State](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[JobId] [bigint] NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[Reason] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NOT NULL,
	[Data] [nvarchar](max) NULL,
 CONSTRAINT [PK_HangFire_State] PRIMARY KEY CLUSTERED 
(
	[JobId] ASC,
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[products] ADD  DEFAULT ((0)) FOR [soluong]
GO
ALTER TABLE [dbo].[accounts]  WITH CHECK ADD  CONSTRAINT [FK_accounts_roles_roleid] FOREIGN KEY([roleid])
REFERENCES [dbo].[roles] ([id])
GO
ALTER TABLE [dbo].[accounts] CHECK CONSTRAINT [FK_accounts_roles_roleid]
GO
ALTER TABLE [dbo].[categories]  WITH CHECK ADD  CONSTRAINT [FK_categories_accounts_accountid] FOREIGN KEY([accountid])
REFERENCES [dbo].[accounts] ([id])
GO
ALTER TABLE [dbo].[categories] CHECK CONSTRAINT [FK_categories_accounts_accountid]
GO
ALTER TABLE [dbo].[commentDescriptions]  WITH CHECK ADD  CONSTRAINT [FK_commentDescriptions_accounts_accountid] FOREIGN KEY([accountid])
REFERENCES [dbo].[accounts] ([id])
GO
ALTER TABLE [dbo].[commentDescriptions] CHECK CONSTRAINT [FK_commentDescriptions_accounts_accountid]
GO
ALTER TABLE [dbo].[commentDescriptions]  WITH CHECK ADD  CONSTRAINT [FK_commentDescriptions_commentDescriptions_commentDescriptionsid] FOREIGN KEY([commentDescriptionsid])
REFERENCES [dbo].[commentDescriptions] ([id])
GO
ALTER TABLE [dbo].[commentDescriptions] CHECK CONSTRAINT [FK_commentDescriptions_commentDescriptions_commentDescriptionsid]
GO
ALTER TABLE [dbo].[commentDescriptions]  WITH CHECK ADD  CONSTRAINT [FK_commentDescriptions_comments_commentid] FOREIGN KEY([commentid])
REFERENCES [dbo].[comments] ([id])
GO
ALTER TABLE [dbo].[commentDescriptions] CHECK CONSTRAINT [FK_commentDescriptions_comments_commentid]
GO
ALTER TABLE [dbo].[comments]  WITH CHECK ADD  CONSTRAINT [FK_comments_accounts_accountsid] FOREIGN KEY([accountsid])
REFERENCES [dbo].[accounts] ([id])
GO
ALTER TABLE [dbo].[comments] CHECK CONSTRAINT [FK_comments_accounts_accountsid]
GO
ALTER TABLE [dbo].[comments]  WITH CHECK ADD  CONSTRAINT [FK_comments_products_productsid] FOREIGN KEY([productsid])
REFERENCES [dbo].[products] ([id])
GO
ALTER TABLE [dbo].[comments] CHECK CONSTRAINT [FK_comments_products_productsid]
GO
ALTER TABLE [dbo].[danhGias]  WITH CHECK ADD  CONSTRAINT [FK_danhGias_accounts_accountid] FOREIGN KEY([accountid])
REFERENCES [dbo].[accounts] ([id])
GO
ALTER TABLE [dbo].[danhGias] CHECK CONSTRAINT [FK_danhGias_accounts_accountid]
GO
ALTER TABLE [dbo].[danhGias]  WITH CHECK ADD  CONSTRAINT [FK_danhGias_products_productid] FOREIGN KEY([productid])
REFERENCES [dbo].[products] ([id])
GO
ALTER TABLE [dbo].[danhGias] CHECK CONSTRAINT [FK_danhGias_products_productid]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_orders_Ordersid] FOREIGN KEY([Ordersid])
REFERENCES [dbo].[orders] ([id])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_orders_Ordersid]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_products_Productsid] FOREIGN KEY([Productsid])
REFERENCES [dbo].[products] ([id])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_products_Productsid]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK_orders_accounts_Accountsid] FOREIGN KEY([Accountsid])
REFERENCES [dbo].[accounts] ([id])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK_orders_accounts_Accountsid]
GO
ALTER TABLE [dbo].[paymentDescriptions]  WITH CHECK ADD  CONSTRAINT [FK_paymentDescriptions_paymentDescriptions_ParentIdid] FOREIGN KEY([ParentIdid])
REFERENCES [dbo].[paymentDescriptions] ([id])
GO
ALTER TABLE [dbo].[paymentDescriptions] CHECK CONSTRAINT [FK_paymentDescriptions_paymentDescriptions_ParentIdid]
GO
ALTER TABLE [dbo].[paymentNotifications]  WITH CHECK ADD  CONSTRAINT [FK_paymentNotifications_payments_PaymentIdid] FOREIGN KEY([PaymentIdid])
REFERENCES [dbo].[payments] ([id])
GO
ALTER TABLE [dbo].[paymentNotifications] CHECK CONSTRAINT [FK_paymentNotifications_payments_PaymentIdid]
GO
ALTER TABLE [dbo].[payments]  WITH CHECK ADD  CONSTRAINT [FK_payments_merchants_MerchantIdid] FOREIGN KEY([MerchantIdid])
REFERENCES [dbo].[merchants] ([id])
GO
ALTER TABLE [dbo].[payments] CHECK CONSTRAINT [FK_payments_merchants_MerchantIdid]
GO
ALTER TABLE [dbo].[payments]  WITH CHECK ADD  CONSTRAINT [FK_payments_paymentDescriptions_PaymentDestinationIdid] FOREIGN KEY([PaymentDestinationIdid])
REFERENCES [dbo].[paymentDescriptions] ([id])
GO
ALTER TABLE [dbo].[payments] CHECK CONSTRAINT [FK_payments_paymentDescriptions_PaymentDestinationIdid]
GO
ALTER TABLE [dbo].[paymentSignatures]  WITH CHECK ADD  CONSTRAINT [FK_paymentSignatures_payments_PaymentIdid] FOREIGN KEY([PaymentIdid])
REFERENCES [dbo].[payments] ([id])
GO
ALTER TABLE [dbo].[paymentSignatures] CHECK CONSTRAINT [FK_paymentSignatures_payments_PaymentIdid]
GO
ALTER TABLE [dbo].[paymentTransactions]  WITH CHECK ADD  CONSTRAINT [FK_paymentTransactions_payments_PaymentIdid] FOREIGN KEY([PaymentIdid])
REFERENCES [dbo].[payments] ([id])
GO
ALTER TABLE [dbo].[paymentTransactions] CHECK CONSTRAINT [FK_paymentTransactions_payments_PaymentIdid]
GO
ALTER TABLE [dbo].[productCategories]  WITH CHECK ADD  CONSTRAINT [FK_productCategories_categories_Categoryid] FOREIGN KEY([Categoryid])
REFERENCES [dbo].[categories] ([id])
GO
ALTER TABLE [dbo].[productCategories] CHECK CONSTRAINT [FK_productCategories_categories_Categoryid]
GO
ALTER TABLE [dbo].[productCategories]  WITH CHECK ADD  CONSTRAINT [FK_productCategories_products_Productid] FOREIGN KEY([Productid])
REFERENCES [dbo].[products] ([id])
GO
ALTER TABLE [dbo].[productCategories] CHECK CONSTRAINT [FK_productCategories_products_Productid]
GO
ALTER TABLE [dbo].[productimages]  WITH CHECK ADD  CONSTRAINT [FK_productimages_products_productid] FOREIGN KEY([productid])
REFERENCES [dbo].[products] ([id])
GO
ALTER TABLE [dbo].[productimages] CHECK CONSTRAINT [FK_productimages_products_productid]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FK_products_accounts_Accountsid] FOREIGN KEY([Accountsid])
REFERENCES [dbo].[accounts] ([id])
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FK_products_accounts_Accountsid]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FK_products_categories_Categorysid] FOREIGN KEY([Categorysid])
REFERENCES [dbo].[categories] ([id])
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FK_products_categories_Categorysid]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FK_products_shops_Shopsid] FOREIGN KEY([Shopsid])
REFERENCES [dbo].[shops] ([id])
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FK_products_shops_Shopsid]
GO
ALTER TABLE [dbo].[shops]  WITH CHECK ADD  CONSTRAINT [FK_shops_accounts_accountid] FOREIGN KEY([accountid])
REFERENCES [dbo].[accounts] ([id])
GO
ALTER TABLE [dbo].[shops] CHECK CONSTRAINT [FK_shops_accounts_accountid]
GO
ALTER TABLE [dbo].[shops]  WITH CHECK ADD  CONSTRAINT [FK_shops_vanchuyens_vanchuyenid] FOREIGN KEY([vanchuyenid])
REFERENCES [dbo].[vanchuyens] ([id])
GO
ALTER TABLE [dbo].[shops] CHECK CONSTRAINT [FK_shops_vanchuyens_vanchuyenid]
GO
ALTER TABLE [dbo].[shopVanchuyens]  WITH CHECK ADD  CONSTRAINT [FK_shopVanchuyens_shops_shopid] FOREIGN KEY([shopid])
REFERENCES [dbo].[shops] ([id])
GO
ALTER TABLE [dbo].[shopVanchuyens] CHECK CONSTRAINT [FK_shopVanchuyens_shops_shopid]
GO
ALTER TABLE [dbo].[shopVanchuyens]  WITH CHECK ADD  CONSTRAINT [FK_shopVanchuyens_vanchuyens_Vanchuyenid] FOREIGN KEY([Vanchuyenid])
REFERENCES [dbo].[vanchuyens] ([id])
GO
ALTER TABLE [dbo].[shopVanchuyens] CHECK CONSTRAINT [FK_shopVanchuyens_vanchuyens_Vanchuyenid]
GO
ALTER TABLE [dbo].[tokens]  WITH CHECK ADD  CONSTRAINT [FK_tokens_accounts_accountid] FOREIGN KEY([accountid])
REFERENCES [dbo].[accounts] ([id])
GO
ALTER TABLE [dbo].[tokens] CHECK CONSTRAINT [FK_tokens_accounts_accountid]
GO
ALTER TABLE [dbo].[xulydonhangs]  WITH CHECK ADD  CONSTRAINT [FK_xulydonhangs_accounts_Accountid] FOREIGN KEY([Accountid])
REFERENCES [dbo].[accounts] ([id])
GO
ALTER TABLE [dbo].[xulydonhangs] CHECK CONSTRAINT [FK_xulydonhangs_accounts_Accountid]
GO
ALTER TABLE [dbo].[xulydonhangs]  WITH CHECK ADD  CONSTRAINT [FK_xulydonhangs_vanchuyens_vanchuyenid] FOREIGN KEY([vanchuyenid])
REFERENCES [dbo].[vanchuyens] ([id])
GO
ALTER TABLE [dbo].[xulydonhangs] CHECK CONSTRAINT [FK_xulydonhangs_vanchuyens_vanchuyenid]
GO
ALTER TABLE [HangFire].[JobParameter]  WITH CHECK ADD  CONSTRAINT [FK_HangFire_JobParameter_Job] FOREIGN KEY([JobId])
REFERENCES [HangFire].[Job] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [HangFire].[JobParameter] CHECK CONSTRAINT [FK_HangFire_JobParameter_Job]
GO
ALTER TABLE [HangFire].[State]  WITH CHECK ADD  CONSTRAINT [FK_HangFire_State_Job] FOREIGN KEY([JobId])
REFERENCES [HangFire].[Job] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [HangFire].[State] CHECK CONSTRAINT [FK_HangFire_State_Job]
GO
/****** Object:  StoredProcedure [dbo].[sproc_MerchantActive]    Script Date: 9/19/2024 3:09:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sproc_MerchantActive]
	-- Add the parameters for the stored procedure here
	@Id INT,
	@IsActive bit = 0,
	@UpdateUser NVARCHAR(250)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	UPDATE M
	set IsActive = @IsActive,
	CretorEdit = @UpdateUser,
	UpdatedAt = GETDATE()
	from merchant M
	where id = @Id
END
GO
/****** Object:  StoredProcedure [dbo].[sproc_MerchantDeleteById]    Script Date: 9/19/2024 3:09:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sproc_MerchantDeleteById]
	-- Add the parameters for the stored procedure here
	@Id INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	DELETE 
	FROM 
	merchants
	where id = @Id
END
GO
/****** Object:  StoredProcedure [dbo].[sproc_MerchantInsert]    Script Date: 9/19/2024 3:09:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sproc_MerchantInsert]
	@Id INT,
	@MerchantName NVARCHAR(250) = '',
	@MerchantWebLink NVARCHAR(250) = '',
	@MerchantIpnUrl NVARCHAR(250) = '',
	@MerchantReturnUrl NVARCHAR(250) = '',
	@MerchantSecretKey NVARCHAR(250) = '',
	@IsActive BIT = 0,
	@InsertUser NVARCHAR(250) = '',
	@InsertId INT OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	IF(@MerchantSecretKey IS NULL or trim(@MerchantSecretKey) = '')
	begin
		SET @MerchantSecretKey = NEWID()
	end
	
	IF(@Id = 0)
		begin
		INSERT INTO [dbo].[merchants]
           ([MerchantName]
           ,[MerchantWebLink]
           ,[MerchantIpnUrl]
           ,[MerchantReturnUrl]
           ,[SecretKey]
           ,[IsActive]
           ,[Deleted]
           ,[CretorEdit]
           ,[CreatedAt],
		   [UpdatedAt])
     VALUES
           (@MerchantName
           ,@MerchantWebLink
           ,@MerchantIpnUrl
           ,@MerchantReturnUrl
           ,@MerchantSecretKey
           ,0
           ,0
           ,@InsertUser
           ,GETDATE(),
		   GETDATE())
		end 
	select top 1 @Id = id from [merchants] order by id desc
	set @InsertId = @Id;
	
END
GO
/****** Object:  StoredProcedure [dbo].[sproc_MerchantSelectByCriteria]    Script Date: 9/19/2024 3:09:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sproc_MerchantSelectByCriteria]
	-- Add the parameters for the stored procedure here
	@Criteria NVARCHAR(500) = ''
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET NOCOUNT ON
	SELECT [id]
      ,[MerchantName]
      ,[MerchantWebLink]
      ,[MerchantIpnUrl]
      ,[MerchantReturnUrl]
      ,[SecretKey]
      ,[IsActive]
      ,[Deleted]
      ,[CretorEdit]
      ,[CreatedAt]
      ,[UpdatedAt]
  FROM [dbo].[merchants] (NOLOCK)
  where trim(@Criteria) = '' or @Criteria is null
  or MerchantName like '%' +@Criteria + '%'
END
GO
/****** Object:  StoredProcedure [dbo].[sproc_MerchantSelectByCriteriaPaging]    Script Date: 9/19/2024 3:09:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sproc_MerchantSelectByCriteriaPaging]
	-- Add the parameters for the stored procedure here
	@PageIndex INT = 0,
	@PageSize INT = 0,
	@Criteria NVARCHAR(500) = '',
	@TotalPage INT OUTPUT,
	@TotalCount INT OUTPUT
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    DECLARE @Offset INT = (@PageIndex - 1) * @PageSize;

	SELECT [id]
      ,[MerchantName]
      ,[MerchantWebLink]
      ,[MerchantIpnUrl]
      ,[MerchantReturnUrl]
      ,[SecretKey]
      ,[IsActive]
      ,[Deleted]
      ,[CretorEdit]
      ,[CreatedAt]
      ,[UpdatedAt]
  FROM [dbo].[merchants] (NOLOCK)
  where trim(@Criteria) = '' or @Criteria is null
  or MerchantName like '%' +@Criteria+ '%'
  order by 
  id
  OFFSET @Offset rows 
  fetch next @PageSize ROWS ONLY

  SELECT @TotalCount = count(id)
  FROM [dbo].[merchants] (NOLOCK)
  where trim(@Criteria) = '' or @Criteria is null
  or MerchantName like '%' +@Criteria+ '%'

  set @TotalPage = CEILING(@TotalCount / convert(float, @PageSize));

END
GO
/****** Object:  StoredProcedure [dbo].[sproc_MerchantSelectById]    Script Date: 9/19/2024 3:09:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sproc_MerchantSelectById]
	-- Add the parameters for the stored procedure here
	@Id INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
		SET NOCOUNT ON
	SELECT [id]
      ,[MerchantName]
      ,[MerchantWebLink]
      ,[MerchantIpnUrl]
      ,[MerchantReturnUrl]
      ,[SecretKey]
      ,[IsActive]
      ,[Deleted]
      ,[CretorEdit]
      ,[CreatedAt]
      ,[UpdatedAt]
  FROM [dbo].[merchants] (NOLOCK)
  where id = @Id
END
GO
/****** Object:  StoredProcedure [dbo].[sproc_MerchantUpdate]    Script Date: 9/19/2024 3:09:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sproc_MerchantUpdate]
	@Id INT,
	@MerchantName NVARCHAR(250) = '',
	@MerchantWebLink NVARCHAR(250) = '',
	@MerchantIpnUrl NVARCHAR(250) = '',
	@MerchantReturnUrl NVARCHAR(250) = '',
	@MerchantSecretKey NVARCHAR(250) = '',
	@IsActive BIT = 0,
	@Updateuser NVARCHAR(250) = '',
	@Delete bit
AS
BEGIN
	UPDATE M 
	SET	MerchantName = @MerchantName
           ,MerchantWebLink = @MerchantWebLink
           ,MerchantIpnUrl = @MerchantIpnUrl
           ,MerchantReturnUrl = @MerchantReturnUrl
           ,SecretKey = @MerchantSecretKey
           ,IsActive = @IsActive
           ,Deleted = @Delete
           ,UpdatedAt = GETDATE()
           ,CretorEdit = @Updateuser

	from merchants M
	where id = @Id

END
GO
/****** Object:  StoredProcedure [dbo].[Sproc_PaymentInsert]    Script Date: 9/19/2024 3:09:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sproc_PaymentInsert]
	-- Add the parameters for the stored procedure here
	@Id INT,
	@PaymentId Nvarchar(250) = null,
	@PaymentContent Nvarchar(250) = null,
	@PaymentCurrency Nvarchar(250) = null,
	@PaymentRefId Nvarchar(250) = null,
	@PaymentAmount Nvarchar(250) = null,
	@PaymentDate Date = null,
	@ExpireDate Date = null,
	@PaymentLanguage Nvarchar(250) = null,
	@MerchantIdid INT,
	@PaymentDestinationIdid INT,
	@Signature Nvarchar(250) = null,
	@InsertUser Nvarchar(250) = null,
	@InsertedId Nvarchar(250) output	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	if @PaymentDate is null
		begin
			set @PaymentDate = getdate()
		end
	if @ExpireDate is null
	begin
		set @ExpireDate = dateadd(MINUTE, 15, getdate())
	end

	INSERT INTO [dbo].[payments]
           ([PaymentContent]
           ,[PaymentCurrency]
           ,[PaymentRefId]
           ,[PaymentAmount]
           ,[PaymentDate]
           ,[ExpireDate]
           ,[PaymentLanguage]
           ,[MerchantIdid]
           ,[PaymentDestinationIdid]
		   ,[paymentId]
           ,[Deleted]
           ,[CretorEdit]
           ,[CreatedAt]
		   ,[UpdatedAt])
     VALUES
           (@PaymentContent
           ,@PaymentCurrency
           ,@PaymentRefId
           ,@PaymentAmount
           ,@PaymentDate
           ,@ExpireDate
           ,@PaymentLanguage
           ,@MerchantIdid 
           ,@PaymentDestinationIdid
		   ,@PaymentId
           ,0
           ,@InsertUser
           ,getdate()
		   ,getdate())


	select top 1 @Id = id from payments order by id desc
	
	set @InsertedId = @PaymentId

	INSERT INTO [dbo].[paymentSignatures]
           ([SignValue]
           ,[SignDate]
           ,[SignOwn]
           ,[PaymentIdid]
           ,[Deleted]
           ,[IsValid]
		   ,[CreatedAt]
		   ,[UpdatedAt])
     VALUES
           (@Signature
           ,getdate()
           ,@MerchantIdid
           ,@Id
           ,0
           ,1
		   ,getdate()
		   ,getdate())

END
GO
/****** Object:  StoredProcedure [dbo].[sproc_PaymentSelectById]    Script Date: 9/19/2024 3:09:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sproc_PaymentSelectById]
	-- Add the parameters for the stored procedure here
	@PaymentId nvarchar(200)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT [paymentId]
		,[id]
      ,[PaymentContent]
      ,[PaymentCurrency]
      ,[PaymentRefId]
      ,[PaymentAmount]
      ,[PaymentDate]
      ,[ExpireDate]
      ,[PaymentLanguage]
      ,[MerchantIdid]
      ,[PaymentDestinationIdid]
      ,[PaidAmount]
      ,[PaymentStatus]
      ,[PaymentLastMessage]
      ,[Deleted]
      ,[CretorEdit]
      ,[CreatedAt]
      ,[UpdatedAt]
	  
  FROM [dbo].[payments] (nolock)
  where [paymentId] = @PaymentId
END
GO
/****** Object:  StoredProcedure [dbo].[sproc_PaymentTransactionInsert]    Script Date: 9/19/2024 3:09:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sproc_PaymentTransactionInsert]
	-- Add the parameters for the stored procedure here
	@Id int,
	@TranMessage nvarchar(250) = '',
	@TranPayload nvarchar(500) = '',
	@TranStatus nvarchar(10) = '',
	@TranAmount  decimal(19, 2),
	@TranDate DateTime,
	@PaymentId int,
	@InsertUser nvarchar(50) = ''
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    if @TranDate is null 
	begin
		set @TranDate = GETDATE()
	end 

	begin transaction CreatePaymentTransaction
	begin try
	INSERT INTO [dbo].[paymentTransactions]
           ([TranMessage]
           ,[TranPayLoad]
           ,[TranStatus]
           ,[TranAmount]
           ,[TranDate]
           ,[PaymentIdid]
           ,[Deleted]
           ,[CretorEdit]
           ,[CreatedAt]
           ,[UpdatedAt])
     VALUES
           (@TranMessage,
		   @TranPayload,
		   @TranStatus,
		   @TranAmount,
		   @TranDate,
		   @PaymentId,
		   0,
		   @InsertUser,
		   GETDATE(),
		   GETDATE())


		   update p set
				p.PaidAmount = t.PaidAmount,
				p.PaymentLastMessage = @TranMessage,
				p.PaymentStatus =  @TranStatus,
				p.UpdatedAt = GETDATE(),
				p.CretorEdit = @InsertUser
				
		   from payments p
		   join(select PaymentIdid, sum(TranAmount) as PaidAmount from paymentTransactions where PaymentIdid = @PaymentId 
		   and TranStatus = '0' 
		   group by PaymentIdid) t on p.id = t.PaymentIdid 

		   -- Commit Tran
		   Commit Transaction CreatePaymentTransaction
	end try
	begin catch
		ROLLBACK TRANSACTION; -- Hủy bỏ giao dịch nếu có lỗi

		PRINT 'Giao dịch đã bị hủy vì có lỗi:';
		PRINT ERROR_MESSAGE();

		PRINT 'Error occurred: ' + ERROR_MESSAGE();
	end catch
END
GO
