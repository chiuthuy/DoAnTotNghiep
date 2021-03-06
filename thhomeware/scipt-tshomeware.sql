USE [tshomeware]
GO
ALTER TABLE [dbo].[WarrantyDetail] DROP CONSTRAINT [FK_WarrantyDetail_Warranty]
GO
ALTER TABLE [dbo].[WarrantyDetail] DROP CONSTRAINT [FK_WarrantyDetail_StatusProduct]
GO
ALTER TABLE [dbo].[Warranty] DROP CONSTRAINT [FK_Warranty_Seri]
GO
ALTER TABLE [dbo].[Seri] DROP CONSTRAINT [FK_Seri_ReceiptDetail]
GO
ALTER TABLE [dbo].[Seri] DROP CONSTRAINT [FK_Seri_Product]
GO
ALTER TABLE [dbo].[ReceiptDetail] DROP CONSTRAINT [FK_ReceiptDetail_Receipt]
GO
ALTER TABLE [dbo].[Receipt] DROP CONSTRAINT [FK_Receipt_Account]
GO
ALTER TABLE [dbo].[PromotionDetail] DROP CONSTRAINT [FK_PromotionDetail_Promotion]
GO
ALTER TABLE [dbo].[PromotionDetail] DROP CONSTRAINT [FK_PromotionDetail_Product]
GO
ALTER TABLE [dbo].[Promotion] DROP CONSTRAINT [FK_Promotion_Account]
GO
ALTER TABLE [dbo].[Product] DROP CONSTRAINT [FK_Product_Season]
GO
ALTER TABLE [dbo].[Product] DROP CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[Product] DROP CONSTRAINT [FK_Product_Brand]
GO
ALTER TABLE [dbo].[InvoiceDetail] DROP CONSTRAINT [FK_InvoiceDetail_Product]
GO
ALTER TABLE [dbo].[InvoiceDetail] DROP CONSTRAINT [FK_InvoiceDetail_Invoice]
GO
ALTER TABLE [dbo].[Invoice] DROP CONSTRAINT [FK_Invoice_Shipper]
GO
ALTER TABLE [dbo].[Invoice] DROP CONSTRAINT [FK_Invoice_Account]
GO
ALTER TABLE [dbo].[ImageDetail] DROP CONSTRAINT [FK_ImageDetail_Product]
GO
/****** Object:  Table [dbo].[WarrantyDetail]    Script Date: 4/3/2020 6:24:57 PM ******/
DROP TABLE [dbo].[WarrantyDetail]
GO
/****** Object:  Table [dbo].[Warranty]    Script Date: 4/3/2020 6:24:57 PM ******/
DROP TABLE [dbo].[Warranty]
GO
/****** Object:  Table [dbo].[StatusProduct]    Script Date: 4/3/2020 6:24:57 PM ******/
DROP TABLE [dbo].[StatusProduct]
GO
/****** Object:  Table [dbo].[Shipper]    Script Date: 4/3/2020 6:24:57 PM ******/
DROP TABLE [dbo].[Shipper]
GO
/****** Object:  Table [dbo].[Seri]    Script Date: 4/3/2020 6:24:57 PM ******/
DROP TABLE [dbo].[Seri]
GO
/****** Object:  Table [dbo].[Season]    Script Date: 4/3/2020 6:24:57 PM ******/
DROP TABLE [dbo].[Season]
GO
/****** Object:  Table [dbo].[ReceiptDetail]    Script Date: 4/3/2020 6:24:57 PM ******/
DROP TABLE [dbo].[ReceiptDetail]
GO
/****** Object:  Table [dbo].[Receipt]    Script Date: 4/3/2020 6:24:57 PM ******/
DROP TABLE [dbo].[Receipt]
GO
/****** Object:  Table [dbo].[PromotionDetail]    Script Date: 4/3/2020 6:24:57 PM ******/
DROP TABLE [dbo].[PromotionDetail]
GO
/****** Object:  Table [dbo].[Promotion]    Script Date: 4/3/2020 6:24:57 PM ******/
DROP TABLE [dbo].[Promotion]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 4/3/2020 6:24:57 PM ******/
DROP TABLE [dbo].[Product]
GO
/****** Object:  Table [dbo].[InvoiceDetail]    Script Date: 4/3/2020 6:24:57 PM ******/
DROP TABLE [dbo].[InvoiceDetail]
GO
/****** Object:  Table [dbo].[Invoice]    Script Date: 4/3/2020 6:24:57 PM ******/
DROP TABLE [dbo].[Invoice]
GO
/****** Object:  Table [dbo].[ImageDetail]    Script Date: 4/3/2020 6:24:57 PM ******/
DROP TABLE [dbo].[ImageDetail]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 4/3/2020 6:24:57 PM ******/
DROP TABLE [dbo].[Category]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 4/3/2020 6:24:57 PM ******/
DROP TABLE [dbo].[Brand]
GO
/****** Object:  Table [dbo].[Advertise]    Script Date: 4/3/2020 6:24:57 PM ******/
DROP TABLE [dbo].[Advertise]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 4/3/2020 6:24:57 PM ******/
DROP TABLE [dbo].[Account]
GO
/****** Object:  FullTextCatalog [product_ctlg]    Script Date: 4/3/2020 6:24:57 PM ******/
GO
DROP FULLTEXT CATALOG [product_ctlg]
GO
/****** Object:  FullTextCatalog [product_ctlg]    Script Date: 4/3/2020 6:24:57 PM ******/
CREATE FULLTEXT CATALOG [product_ctlg]WITH ACCENT_SENSITIVITY = OFF
AS DEFAULT

GO
/****** Object:  Table [dbo].[Account]    Script Date: 4/3/2020 6:24:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Account](
	[ID_Account] [varchar](20) NOT NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Full_Name] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[SDT] [varchar](50) NULL,
	[Access] [int] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[ID_Account] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Advertise]    Script Date: 4/3/2020 6:24:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Advertise](
	[ID_Ads] [int] IDENTITY(1,1) NOT NULL,
	[Image_Ads] [varchar](max) NULL,
 CONSTRAINT [PK_Advertise] PRIMARY KEY CLUSTERED 
(
	[ID_Ads] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 4/3/2020 6:24:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Brand](
	[ID_Brand] [varchar](20) NOT NULL,
	[Name_Brand] [nvarchar](50) NULL,
	[Country] [nvarchar](50) NULL,
	[Parent_Brand] [varchar](50) NULL,
 CONSTRAINT [PK_Brand] PRIMARY KEY CLUSTERED 
(
	[ID_Brand] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Category]    Script Date: 4/3/2020 6:24:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Category](
	[ID_Category] [varchar](20) NOT NULL,
	[Name_Category] [nvarchar](50) NULL,
	[Parent_Category] [varchar](50) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[ID_Category] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ImageDetail]    Script Date: 4/3/2020 6:24:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ImageDetail](
	[ID_Image] [int] IDENTITY(1,1) NOT NULL,
	[Detail_Image] [varchar](max) NULL,
	[ID_Product] [varchar](20) NULL,
	[Detail_Image1] [varchar](max) NULL,
	[Detail_Image2] [varchar](max) NULL,
 CONSTRAINT [PK_ImageDetail] PRIMARY KEY CLUSTERED 
(
	[ID_Image] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Invoice]    Script Date: 4/3/2020 6:24:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Invoice](
	[ID_Invoice] [varchar](20) NOT NULL,
	[ID_Account] [varchar](20) NULL,
	[Shipping_Address] [nvarchar](50) NULL,
	[Payment_Methods] [varchar](50) NULL,
	[Purchase_Date] [datetime] NULL,
	[Status_Order] [int] NULL,
	[Total_Invoice] [int] NULL,
	[ID_Shipper] [int] NULL,
	[ID_Employee] [varchar](20) NULL,
	[Time_Limit] [datetime] NULL,
 CONSTRAINT [PK_Invoice] PRIMARY KEY CLUSTERED 
(
	[ID_Invoice] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InvoiceDetail]    Script Date: 4/3/2020 6:24:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InvoiceDetail](
	[ID_InvoiceDetail] [int] NOT NULL,
	[ID_Invoice] [varchar](20) NULL,
	[ID_Product] [varchar](20) NULL,
	[Quantity] [int] NULL,
	[Price] [int] NULL,
	[Sale] [int] NULL,
	[Total] [int] NULL,
 CONSTRAINT [PK_InvoiceDetail] PRIMARY KEY CLUSTERED 
(
	[ID_InvoiceDetail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Product]    Script Date: 4/3/2020 6:24:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[ID_Product] [varchar](20) NOT NULL,
	[ID_Category] [varchar](20) NULL,
	[Name_Product] [nvarchar](50) NULL,
	[Image] [varchar](max) NULL,
	[Quantity] [int] NULL,
	[Describe] [nvarchar](200) NULL,
	[Price] [int] NULL,
	[Sale] [int] NULL,
	[ID_Brand] [varchar](20) NULL,
	[Warranty_Period] [int] NULL,
	[ID_Season] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID_Product] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Promotion]    Script Date: 4/3/2020 6:24:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Promotion](
	[ID_Promotion] [int] NOT NULL,
	[DateStart] [datetime] NULL,
	[DateEnd] [datetime] NULL,
	[ID_Account] [varchar](20) NULL,
	[Reason] [nvarchar](100) NULL,
 CONSTRAINT [PK_Promotion] PRIMARY KEY CLUSTERED 
(
	[ID_Promotion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PromotionDetail]    Script Date: 4/3/2020 6:24:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PromotionDetail](
	[ID_Product] [varchar](20) NOT NULL,
	[ID_Promotion] [int] NULL,
	[Sale] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Receipt]    Script Date: 4/3/2020 6:24:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Receipt](
	[ID_Receipt] [int] NOT NULL,
	[ID_Account] [varchar](20) NULL,
	[Created_date] [datetime] NULL,
	[total] [int] NULL,
 CONSTRAINT [PK_Receipt_1] PRIMARY KEY CLUSTERED 
(
	[ID_Receipt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ReceiptDetail]    Script Date: 4/3/2020 6:24:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ReceiptDetail](
	[ID_ReceiptDetail] [int] NOT NULL,
	[ID_Product] [varchar](50) NULL,
	[ID_Receipt] [int] NULL,
	[Price] [int] NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_Receipt] PRIMARY KEY CLUSTERED 
(
	[ID_ReceiptDetail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Season]    Script Date: 4/3/2020 6:24:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Season](
	[ID_Season] [int] NOT NULL,
	[Name_Season] [nvarchar](50) NULL,
	[DateStart] [datetime] NULL,
	[DateEnd] [datetime] NULL,
 CONSTRAINT [PK_Season] PRIMARY KEY CLUSTERED 
(
	[ID_Season] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Seri]    Script Date: 4/3/2020 6:24:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Seri](
	[id_seri] [int] NOT NULL,
	[Status_Seri] [int] NULL,
	[ID_Product] [varchar](20) NULL,
	[ID_ReceiptDetail] [int] NULL,
	[ID_InvoiceDetail] [int] NULL,
 CONSTRAINT [PK_Seri] PRIMARY KEY CLUSTERED 
(
	[id_seri] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Shipper]    Script Date: 4/3/2020 6:24:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Shipper](
	[ID_Shipper] [int] NOT NULL,
	[Name_Shipper] [nvarchar](50) NULL,
	[Phone_Shipper] [varchar](50) NULL,
	[Company_Shipper] [nvarchar](50) NULL,
 CONSTRAINT [PK_Shipper] PRIMARY KEY CLUSTERED 
(
	[ID_Shipper] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StatusProduct]    Script Date: 4/3/2020 6:24:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StatusProduct](
	[ID_StatusProduct] [int] NOT NULL,
	[Name_Status] [nvarchar](50) NULL,
	[Repair_Time] [int] NULL,
 CONSTRAINT [PK_StatusProduct] PRIMARY KEY CLUSTERED 
(
	[ID_StatusProduct] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Warranty]    Script Date: 4/3/2020 6:24:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Warranty](
	[ID_Warranty] [int] NOT NULL,
	[Received_Date] [date] NULL,
	[Return_Date] [date] NULL,
	[Intend_Time] [nvarchar](50) NULL,
	[Status] [int] NULL,
	[id_seri] [int] NULL,
 CONSTRAINT [PK_Warranty] PRIMARY KEY CLUSTERED 
(
	[ID_Warranty] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WarrantyDetail]    Script Date: 4/3/2020 6:24:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WarrantyDetail](
	[ID_Warranty] [int] NULL,
	[ID_StatusProduct] [int] NULL
) ON [PRIMARY]

GO
INSERT [dbo].[Account] ([ID_Account], [Username], [Password], [Email], [Full_Name], [Address], [SDT], [Access], [Status]) VALUES (N'AD100', N'admin', N'e1adc3949ba59abbe56e057f2f883e', N'admin@gmail.com', N'Chìu Văn Thủy', N'Hà Nội', N'0379185807', 1, 1)
INSERT [dbo].[Account] ([ID_Account], [Username], [Password], [Email], [Full_Name], [Address], [SDT], [Access], [Status]) VALUES (N'AD101', N'sinh', N'e1adc3949ba59abbe56e057f2f883e', N'nguyenlethesinh1997@gmail.com', N'Nguyễn Lê Thế Sinh', N'97 Man Thiện', N'0386300021', 1, 1)
INSERT [dbo].[Account] ([ID_Account], [Username], [Password], [Email], [Full_Name], [Address], [SDT], [Access], [Status]) VALUES (N'KH102', N'thesinhclient', N'95ec2e295d99fa60fbb1e245175a25', N'nguyenlethesinh20197@gmail.com', N'Sinh Nguyễn Lê 1 ', N'97 Man Thiện q1', N'0386300021', 2, 1)
INSERT [dbo].[Account] ([ID_Account], [Username], [Password], [Email], [Full_Name], [Address], [SDT], [Access], [Status]) VALUES (N'KH1224276057757037', N'Thế Sinh', N'e1adc3949ba59abbe56e057f2f883e', N'nguyenlethesinh97@gmail.com', N'Thế Sinh', N'97 Man Thiện', N'0386300021', 2, 1)
INSERT [dbo].[Account] ([ID_Account], [Username], [Password], [Email], [Full_Name], [Address], [SDT], [Access], [Status]) VALUES (N'KH1575688391987', N'ribisachi', N'e1adc3949ba59abbe56e057f2f883e', N'ribisachi@gmail.com', N'Nguyễn Thị Thủy', N'100 Lê Duẫn, Quận 1', N'098989898', 2, 1)
INSERT [dbo].[Account] ([ID_Account], [Username], [Password], [Email], [Full_Name], [Address], [SDT], [Access], [Status]) VALUES (N'KH1576290996940', N'sinh1', N'e1adc3949ba59abbe56e057f2f883e', N'thesinh.scc@gmail.com', N'Nguyễn Lê Thế Sinh', N'KDC Him Lam, Quận 7', N'0932332780', 3, 1)
INSERT [dbo].[Account] ([ID_Account], [Username], [Password], [Email], [Full_Name], [Address], [SDT], [Access], [Status]) VALUES (N'KH1576598267454', N'ketoan1', N'e1adc3949ba59abbe56e057f2f883e', N'ilovemoney@gmail.com', N'Nguyễn Tính Toán', N'99 Man  Thiện, P.Hiệp Phú, Quận 9', N'0932332789', 4, 1)
SET IDENTITY_INSERT [dbo].[Advertise] ON 

INSERT [dbo].[Advertise] ([ID_Ads], [Image_Ads]) VALUES (1, N'images/home/gioithieu4.jpg')
INSERT [dbo].[Advertise] ([ID_Ads], [Image_Ads]) VALUES (2, N'images/home/gioithieu5.jpg')
INSERT [dbo].[Advertise] ([ID_Ads], [Image_Ads]) VALUES (3, N'images/home/gioithieu6.jpg')
INSERT [dbo].[Advertise] ([ID_Ads], [Image_Ads]) VALUES (4, N'images/home/gioithieu7.jpg')
SET IDENTITY_INSERT [dbo].[Advertise] OFF
INSERT [dbo].[Brand] ([ID_Brand], [Name_Brand], [Country], [Parent_Brand]) VALUES (N'', NULL, NULL, NULL)
INSERT [dbo].[Brand] ([ID_Brand], [Name_Brand], [Country], [Parent_Brand]) VALUES (N'NH', N'NHÃN HIỆU', NULL, N'null')
INSERT [dbo].[Brand] ([ID_Brand], [Name_Brand], [Country], [Parent_Brand]) VALUES (N'NH1', N'SUNHOUSE', NULL, N'NH')
INSERT [dbo].[Brand] ([ID_Brand], [Name_Brand], [Country], [Parent_Brand]) VALUES (N'NH2', N'PANASONIC', NULL, N'NH')
INSERT [dbo].[Brand] ([ID_Brand], [Name_Brand], [Country], [Parent_Brand]) VALUES (N'NH3', N'BLUESTONES', NULL, N'NH')
INSERT [dbo].[Brand] ([ID_Brand], [Name_Brand], [Country], [Parent_Brand]) VALUES (N'NH4', N'KANGAROO', NULL, N'NH')
INSERT [dbo].[Brand] ([ID_Brand], [Name_Brand], [Country], [Parent_Brand]) VALUES (N'NH5', N'PHILIPS', NULL, N'NH')
INSERT [dbo].[Brand] ([ID_Brand], [Name_Brand], [Country], [Parent_Brand]) VALUES (N'NH6', N'COMET', NULL, N'NH')
INSERT [dbo].[Brand] ([ID_Brand], [Name_Brand], [Country], [Parent_Brand]) VALUES (N'NH7', N'KHÁC', NULL, N'NH')
INSERT [dbo].[Category] ([ID_Category], [Name_Category], [Parent_Category]) VALUES (N'DCNB', N'Dụng Cụ Nhà Bếp', N'GD')
INSERT [dbo].[Category] ([ID_Category], [Name_Category], [Parent_Category]) VALUES (N'DDGD', N'Đồ Điện Gia Đình', N'GD')
INSERT [dbo].[Category] ([ID_Category], [Name_Category], [Parent_Category]) VALUES (N'GD', N'Đồ Gia Dụng', N'null')
INSERT [dbo].[Category] ([ID_Category], [Name_Category], [Parent_Category]) VALUES (N'VDTN', N'Vật Dụng Trong Nhà', N'GD')
SET IDENTITY_INSERT [dbo].[ImageDetail] ON 

INSERT [dbo].[ImageDetail] ([ID_Image], [Detail_Image], [ID_Product], [Detail_Image1], [Detail_Image2]) VALUES (1, N'images/chitietsp/bep1a.jpg', N'121', N'images/chitietsp/bep1b.jpg', N'images/chitietsp/bep1c.png')
INSERT [dbo].[ImageDetail] ([ID_Image], [Detail_Image], [ID_Product], [Detail_Image1], [Detail_Image2]) VALUES (2, N'images/chitietsp/bep2a.jpg', N'120', N'images/chitietsp/bep2b.jpg', N'images/chitietsp/bep2c.jpg')
INSERT [dbo].[ImageDetail] ([ID_Image], [Detail_Image], [ID_Product], [Detail_Image1], [Detail_Image2]) VALUES (3, N'images/chitietsp/bep3a.png', N'119', N'images/chitietsp/bep3b.jpg', N'images/chitietsp/bep3c.jpg')
INSERT [dbo].[ImageDetail] ([ID_Image], [Detail_Image], [ID_Product], [Detail_Image1], [Detail_Image2]) VALUES (4, N'images/chitietsp/bep4a.jpg', N'118', N'images/chitietsp/bep4b.jpg', N'images/chitietsp/bep4c.jpg')
INSERT [dbo].[ImageDetail] ([ID_Image], [Detail_Image], [ID_Product], [Detail_Image1], [Detail_Image2]) VALUES (5, N'images/chitietsp/bep5a.jpg', N'117', N'images/chitietsp/bep5b.jpg', N'images/chitietsp/bep5c.jpg')
INSERT [dbo].[ImageDetail] ([ID_Image], [Detail_Image], [ID_Product], [Detail_Image1], [Detail_Image2]) VALUES (6, N'images/chitietsp/bep6a.jpg', N'116', N'images/chitietsp/bep6b.jpg', N'images/chitietsp/bep6c.jpg')
INSERT [dbo].[ImageDetail] ([ID_Image], [Detail_Image], [ID_Product], [Detail_Image1], [Detail_Image2]) VALUES (7, N'images/chitietsp/bep7a.jpg', N'115', N'images/chitietsp/bep7b.jpg', N'images/chitietsp/bep7c.jpg')
INSERT [dbo].[ImageDetail] ([ID_Image], [Detail_Image], [ID_Product], [Detail_Image1], [Detail_Image2]) VALUES (8, N'images/chitietsp/bep8a.jpg', N'114', N'images/chitietsp/bep8b.jpg', N'images/chitietsp/bep8c.jpg')
INSERT [dbo].[ImageDetail] ([ID_Image], [Detail_Image], [ID_Product], [Detail_Image1], [Detail_Image2]) VALUES (9, N'images/chitietsp/bep9a.jpg', N'113', N'images/chitietsp/bep9b.jpg', N'images/chitietsp/bep9c.jpg')
INSERT [dbo].[ImageDetail] ([ID_Image], [Detail_Image], [ID_Product], [Detail_Image1], [Detail_Image2]) VALUES (10, N'images/chitietsp/bep10a.jpg', N'122', N'images/chitietsp/bep10b.jpg', N'images/chitietsp/bep10c.jpg')
INSERT [dbo].[ImageDetail] ([ID_Image], [Detail_Image], [ID_Product], [Detail_Image1], [Detail_Image2]) VALUES (11, N'images/chitietsp/bep11a.jpg', N'123', N'images/chitietsp/bep11b.jpg', N'images/chitietsp/bep11c.jpg')
INSERT [dbo].[ImageDetail] ([ID_Image], [Detail_Image], [ID_Product], [Detail_Image1], [Detail_Image2]) VALUES (12, N'images/chitietsp/diengiadung1a.jpg', N'108', N'images/chitietsp/diengiadung1b.jpg', N'images/chitietsp/diengiadung1c.jpg')
INSERT [dbo].[ImageDetail] ([ID_Image], [Detail_Image], [ID_Product], [Detail_Image1], [Detail_Image2]) VALUES (13, N'images/chitietsp/giadinh9a.jpg', N'107', N'images/chitietsp/giadinh9b.jpg', N'images/chitietsp/giadinh9c.jpg')
INSERT [dbo].[ImageDetail] ([ID_Image], [Detail_Image], [ID_Product], [Detail_Image1], [Detail_Image2]) VALUES (14, N'images/chitietsp/diengiadung5a.jpg', N'112', N'images/chitietsp/diengiadung5b.jpg', N'images/chitietsp/diengiadung5c.jpg')
INSERT [dbo].[ImageDetail] ([ID_Image], [Detail_Image], [ID_Product], [Detail_Image1], [Detail_Image2]) VALUES (15, N'images/chitietsp/diengiadung4a.jpg', N'111', N'images/chitietsp/diengiadung4b.png', N'images/chitietsp/diengiadung4c.png')
INSERT [dbo].[ImageDetail] ([ID_Image], [Detail_Image], [ID_Product], [Detail_Image1], [Detail_Image2]) VALUES (16, N'images/chitietsp/diengiadung3a.jpg', N'110', N'images/chitietsp/diengiadung3b.jpg', N'images/chitietsp/diengiadung3c.jpg')
INSERT [dbo].[ImageDetail] ([ID_Image], [Detail_Image], [ID_Product], [Detail_Image1], [Detail_Image2]) VALUES (17, N'images/chitietsp/diengiadung2a.jpg', N'109', N'images/chitietsp/diengiadung2b.jpg', N'images/chitietsp/diengiadung2c.jpg')
INSERT [dbo].[ImageDetail] ([ID_Image], [Detail_Image], [ID_Product], [Detail_Image1], [Detail_Image2]) VALUES (18, N'images/chitietsp/giadinh8a.jpg', N'106', N'images/chitietsp/giadinh8b.jpeg', N'images/chitietsp/giadinh8c.jpg')
INSERT [dbo].[ImageDetail] ([ID_Image], [Detail_Image], [ID_Product], [Detail_Image1], [Detail_Image2]) VALUES (19, N'images/chitietsp/giadinh6a.jpg', N'105', N'images/chitietsp/giadinh6b.jpeg', N'images/chitietsp/giadinh6c.jpeg')
INSERT [dbo].[ImageDetail] ([ID_Image], [Detail_Image], [ID_Product], [Detail_Image1], [Detail_Image2]) VALUES (20, N'images/chitietsp/giadinh5a.jpg', N'104', N'images/chitietsp/giadinh5b.jpg', N'images/chitietsp/giadinh5c.jpg')
INSERT [dbo].[ImageDetail] ([ID_Image], [Detail_Image], [ID_Product], [Detail_Image1], [Detail_Image2]) VALUES (21, N'images/chitietsp/giadinh4a.jpg', N'103', N'images/chitietsp/giadinh4b.jpg', N'images/chitietsp/giadinh4c.jpg')
INSERT [dbo].[ImageDetail] ([ID_Image], [Detail_Image], [ID_Product], [Detail_Image1], [Detail_Image2]) VALUES (22, N'images/chitietsp/giadinh3a.jpg', N'102', N'images/chitietsp/giadinh3b.jpg', N'images/chitietsp/giadinh3c.jpg')
INSERT [dbo].[ImageDetail] ([ID_Image], [Detail_Image], [ID_Product], [Detail_Image1], [Detail_Image2]) VALUES (23, N'images/chitietsp/giadinh1a.jpg', N'101', N'images/chitietsp/giadinh1b.jpg', N'images/chitietsp/giadinh1c.jpg')
SET IDENTITY_INSERT [dbo].[ImageDetail] OFF
INSERT [dbo].[Invoice] ([ID_Invoice], [ID_Account], [Shipping_Address], [Payment_Methods], [Purchase_Date], [Status_Order], [Total_Invoice], [ID_Shipper], [ID_Employee], [Time_Limit]) VALUES (N'MHD1568886021906', N'KH102', N'97 Man Thiện', N'Thanh toán khi giao hàng', CAST(N'2019-09-19 16:40:21.910' AS DateTime), 3, 3500000, 1, N'KH1576290996940', CAST(N'2019-09-22 00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([ID_Invoice], [ID_Account], [Shipping_Address], [Payment_Methods], [Purchase_Date], [Status_Order], [Total_Invoice], [ID_Shipper], [ID_Employee], [Time_Limit]) VALUES (N'MHD1570699542934', N'KH102', N'97 Man Thiện', N'Thanh toán khi giao hàng', CAST(N'2019-10-10 16:25:42.933' AS DateTime), 1, 2170000, NULL, N'AD101', CAST(N'2019-10-13 00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([ID_Invoice], [ID_Account], [Shipping_Address], [Payment_Methods], [Purchase_Date], [Status_Order], [Total_Invoice], [ID_Shipper], [ID_Employee], [Time_Limit]) VALUES (N'MHD1571219438989', N'KH1224276057757037', N'97 Man Thiện, Phường Hiệp Phú, Quận 9', N'Thanh toán qua the ngân hàng', CAST(N'2019-10-16 16:50:39.003' AS DateTime), 1, 1000, NULL, N'AD101', CAST(N'2019-10-19 00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([ID_Invoice], [ID_Account], [Shipping_Address], [Payment_Methods], [Purchase_Date], [Status_Order], [Total_Invoice], [ID_Shipper], [ID_Employee], [Time_Limit]) VALUES (N'MHD1571219613802', N'KH1224276057757037', N'97 Man Thiện, Phường Hiệp Phú, Quận 9', N'Thanh toán qua the ngân hàng', CAST(N'2019-10-16 16:53:33.803' AS DateTime), 1, 1000, NULL, N'AD101', CAST(N'2019-10-19 00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([ID_Invoice], [ID_Account], [Shipping_Address], [Payment_Methods], [Purchase_Date], [Status_Order], [Total_Invoice], [ID_Shipper], [ID_Employee], [Time_Limit]) VALUES (N'MHD1571385042527', N'KH1224276057757037', N'97 Man Thiện', N'Thanh toán khi giao hàng', CAST(N'2019-10-18 14:50:42.533' AS DateTime), 1, 1000, 1, N'AD101', CAST(N'2019-10-21 00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([ID_Invoice], [ID_Account], [Shipping_Address], [Payment_Methods], [Purchase_Date], [Status_Order], [Total_Invoice], [ID_Shipper], [ID_Employee], [Time_Limit]) VALUES (N'MHD1571409567334', N'KH1224276057757037', N'97 Man Thiện, Phường Hiệp Phú, Quận 9', N'Thanh toán qua the ngân hàng', CAST(N'2019-10-18 21:39:27.337' AS DateTime), 1, 2000, NULL, N'AD101', CAST(N'2019-10-21 00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([ID_Invoice], [ID_Account], [Shipping_Address], [Payment_Methods], [Purchase_Date], [Status_Order], [Total_Invoice], [ID_Shipper], [ID_Employee], [Time_Limit]) VALUES (N'MHD1573097367152', N'KH1224276057757037', N'97 Man Thiện, Phường Hiệp Phú, Quận 9', N'Thanh toán qua the ngân hàng', CAST(N'2019-11-07 10:29:27.157' AS DateTime), 1, 2000, NULL, N'AD101', CAST(N'2019-11-10 00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([ID_Invoice], [ID_Account], [Shipping_Address], [Payment_Methods], [Purchase_Date], [Status_Order], [Total_Invoice], [ID_Shipper], [ID_Employee], [Time_Limit]) VALUES (N'MHD1573375159313', N'KH1224276057757037', N'97 Man Thiện', N'Thanh toán khi giao hàng', CAST(N'2019-11-10 15:39:19.320' AS DateTime), 3, 2000, NULL, N'AD101', CAST(N'2019-11-13 00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([ID_Invoice], [ID_Account], [Shipping_Address], [Payment_Methods], [Purchase_Date], [Status_Order], [Total_Invoice], [ID_Shipper], [ID_Employee], [Time_Limit]) VALUES (N'MHD1573386600378', N'KH1224276057757037', N'97 Man Thiện', N'Thanh toán khi giao hàng', CAST(N'2019-11-10 18:50:00.380' AS DateTime), 1, 2000, 1, N'AD101', CAST(N'2019-11-13 00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([ID_Invoice], [ID_Account], [Shipping_Address], [Payment_Methods], [Purchase_Date], [Status_Order], [Total_Invoice], [ID_Shipper], [ID_Employee], [Time_Limit]) VALUES (N'MHD1573490549634', N'KH1224276057757037', N'97 Man Thiện', N'Thanh toán khi giao hàng', CAST(N'2019-11-11 23:42:29.637' AS DateTime), 1, 2700000, NULL, N'AD101', CAST(N'2019-11-14 00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([ID_Invoice], [ID_Account], [Shipping_Address], [Payment_Methods], [Purchase_Date], [Status_Order], [Total_Invoice], [ID_Shipper], [ID_Employee], [Time_Limit]) VALUES (N'MHD1573490706416', N'KH1224276057757037', N'97 Man Thiện', N'Thanh toán khi giao hàng', CAST(N'2019-11-11 23:45:06.423' AS DateTime), 4, 950000, 1, N'KH1576290996940', CAST(N'2019-11-14 00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([ID_Invoice], [ID_Account], [Shipping_Address], [Payment_Methods], [Purchase_Date], [Status_Order], [Total_Invoice], [ID_Shipper], [ID_Employee], [Time_Limit]) VALUES (N'MHD1574924282538', N'KH1224276057757037', N'97 Man Thiện', N'Thanh toán khi giao hàng', CAST(N'2019-11-28 13:58:02.553' AS DateTime), 1, 2000, 1, N'AD101', CAST(N'2019-12-01 00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([ID_Invoice], [ID_Account], [Shipping_Address], [Payment_Methods], [Purchase_Date], [Status_Order], [Total_Invoice], [ID_Shipper], [ID_Employee], [Time_Limit]) VALUES (N'MHD1574953575673', N'KH1224276057757037', N'97 Man Thiện, Phường Hiệp Phú, Quận 9', N'Thanh toán qua the ngân hàng', CAST(N'2019-11-28 22:06:15.677' AS DateTime), 1, 2000, NULL, N'AD101', CAST(N'2019-12-01 00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([ID_Invoice], [ID_Account], [Shipping_Address], [Payment_Methods], [Purchase_Date], [Status_Order], [Total_Invoice], [ID_Shipper], [ID_Employee], [Time_Limit]) VALUES (N'MHD1574953654662', N'KH1224276057757037', N'97 Man Thiện, Phường Hiệp Phú, Quận 9', N'Thanh toán qua the ngân hàng', CAST(N'2019-11-28 22:07:34.663' AS DateTime), 1, 1000, NULL, N'AD101', CAST(N'2019-12-01 00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([ID_Invoice], [ID_Account], [Shipping_Address], [Payment_Methods], [Purchase_Date], [Status_Order], [Total_Invoice], [ID_Shipper], [ID_Employee], [Time_Limit]) VALUES (N'MHD1574954127994', N'KH1224276057757037', N'97 Man Thiện, Phường Hiệp Phú, Quận 9', N'Thanh toán qua the ngân hàng', CAST(N'2019-11-28 22:15:27.993' AS DateTime), 1, 1000, NULL, N'AD101', CAST(N'2019-12-01 00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([ID_Invoice], [ID_Account], [Shipping_Address], [Payment_Methods], [Purchase_Date], [Status_Order], [Total_Invoice], [ID_Shipper], [ID_Employee], [Time_Limit]) VALUES (N'MHD1575871528929', N'KH1224276057757037', N'97 Man Thiện', N'Thanh toán khi giao hàng', CAST(N'2019-12-09 13:05:28.953' AS DateTime), 3, 1750000, 2, N'AD101', CAST(N'2019-12-12 00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([ID_Invoice], [ID_Account], [Shipping_Address], [Payment_Methods], [Purchase_Date], [Status_Order], [Total_Invoice], [ID_Shipper], [ID_Employee], [Time_Limit]) VALUES (N'MHD1575871794281', N'KH1224276057757037', N'97 Man Thiện, Phường Hiệp Phú, Quận 9', N'Thanh toán qua the ngân hàng', CAST(N'2019-12-09 13:09:54.323' AS DateTime), 1, 2000, 1, N'AD101', CAST(N'2019-12-12 00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([ID_Invoice], [ID_Account], [Shipping_Address], [Payment_Methods], [Purchase_Date], [Status_Order], [Total_Invoice], [ID_Shipper], [ID_Employee], [Time_Limit]) VALUES (N'MHD1575872248094', N'KH1224276057757037', N'97 Man Thiện, Phường Hiệp Phú, Quận 9', N'Thanh toán qua the ngân hàng', CAST(N'2019-12-09 13:17:28.127' AS DateTime), 1, 2000, 1, N'AD101', CAST(N'2019-12-12 00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([ID_Invoice], [ID_Account], [Shipping_Address], [Payment_Methods], [Purchase_Date], [Status_Order], [Total_Invoice], [ID_Shipper], [ID_Employee], [Time_Limit]) VALUES (N'MHD1575872488054', N'KH1224276057757037', N'97 Man Thiện', N'Thanh toán khi giao hàng', CAST(N'2019-12-09 13:21:28.077' AS DateTime), 1, 420000, 1, N'AD101', CAST(N'2019-12-12 00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([ID_Invoice], [ID_Account], [Shipping_Address], [Payment_Methods], [Purchase_Date], [Status_Order], [Total_Invoice], [ID_Shipper], [ID_Employee], [Time_Limit]) VALUES (N'MHD1575879166198', N'KH1224276057757037', N'97 Man Thiện', N'Thanh toán khi giao hàng', CAST(N'2019-12-09 15:12:46.217' AS DateTime), 1, 600000, 1, N'AD101', CAST(N'2019-12-12 00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([ID_Invoice], [ID_Account], [Shipping_Address], [Payment_Methods], [Purchase_Date], [Status_Order], [Total_Invoice], [ID_Shipper], [ID_Employee], [Time_Limit]) VALUES (N'MHD1576033931024', N'KH1224276057757037', N'97 Man Thiện', N'Thanh toán khi giao hàng', CAST(N'2019-12-11 10:12:11.057' AS DateTime), 1, 420000, 1, N'AD101', CAST(N'2019-12-14 00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([ID_Invoice], [ID_Account], [Shipping_Address], [Payment_Methods], [Purchase_Date], [Status_Order], [Total_Invoice], [ID_Shipper], [ID_Employee], [Time_Limit]) VALUES (N'MHD1576381696270', N'KH1224276057757037', N'97 Man Thiện', N'Thanh toán khi giao hàng', CAST(N'2019-12-15 10:48:16.310' AS DateTime), 3, 420000, 1, N'0', CAST(N'2019-12-20 00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([ID_Invoice], [ID_Account], [Shipping_Address], [Payment_Methods], [Purchase_Date], [Status_Order], [Total_Invoice], [ID_Shipper], [ID_Employee], [Time_Limit]) VALUES (N'MHD1576381778407', N'KH1224276057757037', N'97 Man Thiện, Phường Hiệp Phú, Quận 9', N'Thanh toán qua the ngân hàng', CAST(N'2019-12-15 10:49:38.437' AS DateTime), 1, 2000, 1, N'AD101', CAST(N'2019-12-18 00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([ID_Invoice], [ID_Account], [Shipping_Address], [Payment_Methods], [Purchase_Date], [Status_Order], [Total_Invoice], [ID_Shipper], [ID_Employee], [Time_Limit]) VALUES (N'MHD1576381942780', N'KH1224276057757037', N'97 Man Thiện, Phường Hiệp Phú, Quận 9', N'Thanh toán qua the ngân hàng', CAST(N'2019-12-15 10:52:22.827' AS DateTime), 1, 2000, 1, N'AD101', CAST(N'2019-12-18 00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([ID_Invoice], [ID_Account], [Shipping_Address], [Payment_Methods], [Purchase_Date], [Status_Order], [Total_Invoice], [ID_Shipper], [ID_Employee], [Time_Limit]) VALUES (N'MHD1576382103163', N'KH1224276057757037', N'97 Man Thiện, Phường Hiệp Phú, Quận 9', N'Thanh toán qua the ngân hàng', CAST(N'2019-12-15 10:55:03.210' AS DateTime), 1, 2000, 1, N'KH1576290996940', CAST(N'2019-12-18 00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([ID_Invoice], [ID_Account], [Shipping_Address], [Payment_Methods], [Purchase_Date], [Status_Order], [Total_Invoice], [ID_Shipper], [ID_Employee], [Time_Limit]) VALUES (N'MHD1576382229030', N'KH1224276057757037', N'97 Man Thiện, Phường Hiệp Phú, Quận 9', N'Thanh toán qua the ngân hàng', CAST(N'2019-12-15 10:57:09.063' AS DateTime), 1, 1000, 1, N'KH1576290996940', CAST(N'2019-12-18 00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([ID_Invoice], [ID_Account], [Shipping_Address], [Payment_Methods], [Purchase_Date], [Status_Order], [Total_Invoice], [ID_Shipper], [ID_Employee], [Time_Limit]) VALUES (N'MHD1576389194467', N'KH1224276057757037', N'97 Man Thiện', N'Thanh toán khi giao hàng', CAST(N'2019-12-15 12:53:14.547' AS DateTime), 4, 980000, 1, N'KH1576290996940', CAST(N'2019-12-18 00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([ID_Invoice], [ID_Account], [Shipping_Address], [Payment_Methods], [Purchase_Date], [Status_Order], [Total_Invoice], [ID_Shipper], [ID_Employee], [Time_Limit]) VALUES (N'MHD1576426643770', N'KH1224276057757037', N'97 Man Thiện', N'Thanh toán khi giao hàng', CAST(N'2019-12-15 23:17:23.797' AS DateTime), 3, 1150000, 1, N'AD101', CAST(N'2019-12-18 00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([ID_Invoice], [ID_Account], [Shipping_Address], [Payment_Methods], [Purchase_Date], [Status_Order], [Total_Invoice], [ID_Shipper], [ID_Employee], [Time_Limit]) VALUES (N'MHD1576426822039', N'KH1224276057757037', N'97 Man Thiện', N'Thanh toán khi giao hàng', CAST(N'2019-12-15 23:20:22.070' AS DateTime), 3, 1150000, 1, N'AD101', CAST(N'2019-12-18 00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([ID_Invoice], [ID_Account], [Shipping_Address], [Payment_Methods], [Purchase_Date], [Status_Order], [Total_Invoice], [ID_Shipper], [ID_Employee], [Time_Limit]) VALUES (N'MHD1576426872771', N'KH1224276057757037', N'97 Man Thiện', N'Thanh toán khi giao hàng', CAST(N'2019-12-15 23:21:12.797' AS DateTime), 1, 1150000, 1, N'AD101', CAST(N'2019-12-18 00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([ID_Invoice], [ID_Account], [Shipping_Address], [Payment_Methods], [Purchase_Date], [Status_Order], [Total_Invoice], [ID_Shipper], [ID_Employee], [Time_Limit]) VALUES (N'MHD1576432430098', N'KH1224276057757037', N'97 Man Thiện, Phường Hiệp Phú, Quận 9', N'Thanh toán qua the ngân hàng', CAST(N'2019-12-16 00:53:50.140' AS DateTime), 1, 1000, 1, N'AD101', CAST(N'2019-12-19 00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([ID_Invoice], [ID_Account], [Shipping_Address], [Payment_Methods], [Purchase_Date], [Status_Order], [Total_Invoice], [ID_Shipper], [ID_Employee], [Time_Limit]) VALUES (N'MHD1576770632821', N'KH1224276057757037', N'97 Man Thiện', N'Thanh toán khi giao hàng', CAST(N'2019-12-19 22:50:32.847' AS DateTime), 3, 118000, 1, N'KH1576290996940', CAST(N'2019-12-22 00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([ID_Invoice], [ID_Account], [Shipping_Address], [Payment_Methods], [Purchase_Date], [Status_Order], [Total_Invoice], [ID_Shipper], [ID_Employee], [Time_Limit]) VALUES (N'MHD1577021757740', N'KH1224276057757037', N'97 Man Thiện', N'Thanh toán khi giao hàng', CAST(N'2019-12-22 20:35:57.767' AS DateTime), 2, 1750000, 1, N'0', CAST(N'2019-12-25 00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([ID_Invoice], [ID_Account], [Shipping_Address], [Payment_Methods], [Purchase_Date], [Status_Order], [Total_Invoice], [ID_Shipper], [ID_Employee], [Time_Limit]) VALUES (N'MHD1577022570701', N'KH1224276057757037', N'97 Man Thiện, Phường Hiệp Phú, Quận 9', N'Thanh toán qua the ngân hàng', CAST(N'2019-12-22 20:49:30.740' AS DateTime), 4, 1000, 1, N'AD101', CAST(N'2019-12-25 00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([ID_Invoice], [ID_Account], [Shipping_Address], [Payment_Methods], [Purchase_Date], [Status_Order], [Total_Invoice], [ID_Shipper], [ID_Employee], [Time_Limit]) VALUES (N'MHD1577033430440', N'KH1224276057757037', N'97 Man Thiện', N'Thanh toán khi giao hàng', CAST(N'2019-12-22 23:50:30.470' AS DateTime), 2, 870000, 1, N'0', CAST(N'2019-12-25 00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([ID_Invoice], [ID_Account], [Shipping_Address], [Payment_Methods], [Purchase_Date], [Status_Order], [Total_Invoice], [ID_Shipper], [ID_Employee], [Time_Limit]) VALUES (N'MHD1577033897900', N'KH1224276057757037', N'97 Man Thiện, Phường Hiệp Phú, Quận 9', N'Thanh toán qua the ngân hàng', CAST(N'2019-12-22 23:58:17.940' AS DateTime), 2, 1000, 1, N'0', CAST(N'2019-12-25 00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([ID_Invoice], [ID_Account], [Shipping_Address], [Payment_Methods], [Purchase_Date], [Status_Order], [Total_Invoice], [ID_Shipper], [ID_Employee], [Time_Limit]) VALUES (N'MHD1577064524010', N'KH1224276057757037', N'97 Man Thiện, Phường Hiệp Phú, Quận 9', N'Thanh toán qua the ngân hàng', CAST(N'2019-12-23 08:28:44.047' AS DateTime), 2, 1000, 1, N'0', CAST(N'2019-12-26 00:00:00.000' AS DateTime))
INSERT [dbo].[InvoiceDetail] ([ID_InvoiceDetail], [ID_Invoice], [ID_Product], [Quantity], [Price], [Sale], [Total]) VALUES (5032099, N'MHD1574954127994', N'123', 1, 1000, 0, 1000)
INSERT [dbo].[InvoiceDetail] ([ID_InvoiceDetail], [ID_Invoice], [ID_Product], [Quantity], [Price], [Sale], [Total]) VALUES (13731817, N'MHD1576426822039', N'112', 1, 950000, 0, 950000)
INSERT [dbo].[InvoiceDetail] ([ID_InvoiceDetail], [ID_Invoice], [ID_Product], [Quantity], [Price], [Sale], [Total]) VALUES (24318360, N'MHD1574953654662', N'123', 1, 1000, 0, 1000)
INSERT [dbo].[InvoiceDetail] ([ID_InvoiceDetail], [ID_Invoice], [ID_Product], [Quantity], [Price], [Sale], [Total]) VALUES (39844292, N'MHD1571219613802', N'123', 1, 1000, 0, 1000)
INSERT [dbo].[InvoiceDetail] ([ID_InvoiceDetail], [ID_Invoice], [ID_Product], [Quantity], [Price], [Sale], [Total]) VALUES (40369778, N'MHD1576426643770', N'114', 1, 300000, 100000, 200000)
INSERT [dbo].[InvoiceDetail] ([ID_InvoiceDetail], [ID_Invoice], [ID_Product], [Quantity], [Price], [Sale], [Total]) VALUES (41724485, N'MHD1573386600378', N'122', 1, 3000, 1000, 2000)
INSERT [dbo].[InvoiceDetail] ([ID_InvoiceDetail], [ID_Invoice], [ID_Product], [Quantity], [Price], [Sale], [Total]) VALUES (44037613, N'MHD1573375159313', N'122', 1, 3000, 1000, 2000)
INSERT [dbo].[InvoiceDetail] ([ID_InvoiceDetail], [ID_Invoice], [ID_Product], [Quantity], [Price], [Sale], [Total]) VALUES (51403323, N'MHD1573490549634', N'105', 1, 150000, 0, 150000)
INSERT [dbo].[InvoiceDetail] ([ID_InvoiceDetail], [ID_Invoice], [ID_Product], [Quantity], [Price], [Sale], [Total]) VALUES (52344508, N'MHD1576033931024', N'116', 1, 420000, 0, 420000)
INSERT [dbo].[InvoiceDetail] ([ID_InvoiceDetail], [ID_Invoice], [ID_Product], [Quantity], [Price], [Sale], [Total]) VALUES (54297122, N'MHD1571219438989', N'123', 1, 1000, 0, 1000)
INSERT [dbo].[InvoiceDetail] ([ID_InvoiceDetail], [ID_Invoice], [ID_Product], [Quantity], [Price], [Sale], [Total]) VALUES (60919313, N'MHD1570699542934', N'118', 1, 1750000, 0, 1750000)
INSERT [dbo].[InvoiceDetail] ([ID_InvoiceDetail], [ID_Invoice], [ID_Product], [Quantity], [Price], [Sale], [Total]) VALUES (70232780, N'MHD1576426872771', N'114', 1, 300000, 100000, 200000)
INSERT [dbo].[InvoiceDetail] ([ID_InvoiceDetail], [ID_Invoice], [ID_Product], [Quantity], [Price], [Sale], [Total]) VALUES (73642806, N'MHD1576381778407', N'122', 1, 3000, 1000, 2000)
INSERT [dbo].[InvoiceDetail] ([ID_InvoiceDetail], [ID_Invoice], [ID_Product], [Quantity], [Price], [Sale], [Total]) VALUES (74373817, N'MHD1576381942780', N'122', 1, 3000, 1000, 2000)
INSERT [dbo].[InvoiceDetail] ([ID_InvoiceDetail], [ID_Invoice], [ID_Product], [Quantity], [Price], [Sale], [Total]) VALUES (83347543, N'MHD1576389194467', N'101', 2, 590000, 100000, 980000)
INSERT [dbo].[InvoiceDetail] ([ID_InvoiceDetail], [ID_Invoice], [ID_Product], [Quantity], [Price], [Sale], [Total]) VALUES (85044454, N'MHD1570699542934', N'116', 1, 420000, 0, 420000)
INSERT [dbo].[InvoiceDetail] ([ID_InvoiceDetail], [ID_Invoice], [ID_Product], [Quantity], [Price], [Sale], [Total]) VALUES (94018087, N'MHD1573490549634', N'110', 1, 1500000, 0, 1500000)
INSERT [dbo].[InvoiceDetail] ([ID_InvoiceDetail], [ID_Invoice], [ID_Product], [Quantity], [Price], [Sale], [Total]) VALUES (95754461, N'MHD1577033897900', N'123', 1, 1000, 0, 1000)
INSERT [dbo].[InvoiceDetail] ([ID_InvoiceDetail], [ID_Invoice], [ID_Product], [Quantity], [Price], [Sale], [Total]) VALUES (99982190, N'MHD1568886021906', N'118', 2, 1750000, 0, 3500000)
INSERT [dbo].[InvoiceDetail] ([ID_InvoiceDetail], [ID_Invoice], [ID_Product], [Quantity], [Price], [Sale], [Total]) VALUES (100536883, N'MHD1577033430440', N'117', 1, 550000, 100000, 450000)
INSERT [dbo].[InvoiceDetail] ([ID_InvoiceDetail], [ID_Invoice], [ID_Product], [Quantity], [Price], [Sale], [Total]) VALUES (100687436, N'MHD1574924282538', N'122', 1, 3000, 1000, 2000)
INSERT [dbo].[InvoiceDetail] ([ID_InvoiceDetail], [ID_Invoice], [ID_Product], [Quantity], [Price], [Sale], [Total]) VALUES (110800617, N'MHD1577022570701', N'123', 1, 1000, 0, 1000)
INSERT [dbo].[InvoiceDetail] ([ID_InvoiceDetail], [ID_Invoice], [ID_Product], [Quantity], [Price], [Sale], [Total]) VALUES (114315843, N'MHD1576426822039', N'114', 1, 300000, 100000, 200000)
INSERT [dbo].[InvoiceDetail] ([ID_InvoiceDetail], [ID_Invoice], [ID_Product], [Quantity], [Price], [Sale], [Total]) VALUES (114755472, N'MHD1576381696270', N'116', 1, 420000, 0, 420000)
INSERT [dbo].[InvoiceDetail] ([ID_InvoiceDetail], [ID_Invoice], [ID_Product], [Quantity], [Price], [Sale], [Total]) VALUES (120657340, N'MHD1575871528929', N'118', 1, 1750000, 0, 1750000)
INSERT [dbo].[InvoiceDetail] ([ID_InvoiceDetail], [ID_Invoice], [ID_Product], [Quantity], [Price], [Sale], [Total]) VALUES (130625318, N'MHD1571409567334', N'122', 1, 2000, 0, 2000)
INSERT [dbo].[InvoiceDetail] ([ID_InvoiceDetail], [ID_Invoice], [ID_Product], [Quantity], [Price], [Sale], [Total]) VALUES (140046677, N'MHD1576432430098', N'123', 1, 1000, 0, 1000)
INSERT [dbo].[InvoiceDetail] ([ID_InvoiceDetail], [ID_Invoice], [ID_Product], [Quantity], [Price], [Sale], [Total]) VALUES (149747425, N'MHD1575879166198', N'121', 3, 300000, 100000, 600000)
INSERT [dbo].[InvoiceDetail] ([ID_InvoiceDetail], [ID_Invoice], [ID_Product], [Quantity], [Price], [Sale], [Total]) VALUES (156082907, N'MHD1573490706416', N'112', 1, 950000, 0, 950000)
INSERT [dbo].[InvoiceDetail] ([ID_InvoiceDetail], [ID_Invoice], [ID_Product], [Quantity], [Price], [Sale], [Total]) VALUES (156370032, N'MHD1576382103163', N'122', 1, 3000, 1000, 2000)
INSERT [dbo].[InvoiceDetail] ([ID_InvoiceDetail], [ID_Invoice], [ID_Product], [Quantity], [Price], [Sale], [Total]) VALUES (160822189, N'MHD1575871794281', N'122', 1, 3000, 1000, 2000)
INSERT [dbo].[InvoiceDetail] ([ID_InvoiceDetail], [ID_Invoice], [ID_Product], [Quantity], [Price], [Sale], [Total]) VALUES (165599979, N'MHD1575872248094', N'122', 1, 3000, 1000, 2000)
INSERT [dbo].[InvoiceDetail] ([ID_InvoiceDetail], [ID_Invoice], [ID_Product], [Quantity], [Price], [Sale], [Total]) VALUES (167734152, N'MHD1576426872771', N'112', 1, 950000, 0, 950000)
INSERT [dbo].[InvoiceDetail] ([ID_InvoiceDetail], [ID_Invoice], [ID_Product], [Quantity], [Price], [Sale], [Total]) VALUES (168849198, N'MHD1571385042527', N'123', 1, 1000, 0, 1000)
INSERT [dbo].[InvoiceDetail] ([ID_InvoiceDetail], [ID_Invoice], [ID_Product], [Quantity], [Price], [Sale], [Total]) VALUES (169775772, N'MHD1577021757740', N'118', 1, 1750000, 0, 1750000)
INSERT [dbo].[InvoiceDetail] ([ID_InvoiceDetail], [ID_Invoice], [ID_Product], [Quantity], [Price], [Sale], [Total]) VALUES (171463519, N'MHD1576382229030', N'123', 1, 1000, 0, 1000)
INSERT [dbo].[InvoiceDetail] ([ID_InvoiceDetail], [ID_Invoice], [ID_Product], [Quantity], [Price], [Sale], [Total]) VALUES (177157387, N'MHD1576426643770', N'112', 1, 950000, 0, 950000)
INSERT [dbo].[InvoiceDetail] ([ID_InvoiceDetail], [ID_Invoice], [ID_Product], [Quantity], [Price], [Sale], [Total]) VALUES (182255949, N'MHD1577064524010', N'123', 1, 1000, 0, 1000)
INSERT [dbo].[InvoiceDetail] ([ID_InvoiceDetail], [ID_Invoice], [ID_Product], [Quantity], [Price], [Sale], [Total]) VALUES (184892792, N'MHD1577033430440', N'116', 1, 420000, 0, 420000)
INSERT [dbo].[InvoiceDetail] ([ID_InvoiceDetail], [ID_Invoice], [ID_Product], [Quantity], [Price], [Sale], [Total]) VALUES (193609642, N'MHD1575872488054', N'116', 1, 420000, 0, 420000)
INSERT [dbo].[InvoiceDetail] ([ID_InvoiceDetail], [ID_Invoice], [ID_Product], [Quantity], [Price], [Sale], [Total]) VALUES (202933649, N'MHD1573490549634', N'112', 1, 950000, 0, 950000)
INSERT [dbo].[InvoiceDetail] ([ID_InvoiceDetail], [ID_Invoice], [ID_Product], [Quantity], [Price], [Sale], [Total]) VALUES (212142860, N'MHD1573490549634', N'103', 1, 200000, 100000, 100000)
INSERT [dbo].[InvoiceDetail] ([ID_InvoiceDetail], [ID_Invoice], [ID_Product], [Quantity], [Price], [Sale], [Total]) VALUES (220044278, N'MHD1574953575673', N'122', 1, 3000, 1000, 2000)
INSERT [dbo].[InvoiceDetail] ([ID_InvoiceDetail], [ID_Invoice], [ID_Product], [Quantity], [Price], [Sale], [Total]) VALUES (221700174, N'MHD1576770632821', N'102', 1, 118000, 0, 118000)
INSERT [dbo].[InvoiceDetail] ([ID_InvoiceDetail], [ID_Invoice], [ID_Product], [Quantity], [Price], [Sale], [Total]) VALUES (229759656, N'MHD1573097367152', N'122', 1, 2000, 0, 2000)
INSERT [dbo].[Product] ([ID_Product], [ID_Category], [Name_Product], [Image], [Quantity], [Describe], [Price], [Sale], [ID_Brand], [Warranty_Period], [ID_Season]) VALUES (N'101', N'VDTN', N'Bàn ủi hơi nước cao cấp Philips GC2990', N'images/sanpham/giadinh1.jpg', 17, N'Nhiếu chế độ phun hơi nước cho phép ủi được nhiều loại quần áo. Dung tích lớn 320ml giúp ủi quần áo lâu hơn', 590000, 100000, N'NH5', 1, 1)
INSERT [dbo].[Product] ([ID_Product], [ID_Category], [Name_Product], [Image], [Quantity], [Describe], [Price], [Sale], [ID_Brand], [Warranty_Period], [ID_Season]) VALUES (N'102', N'VDTN', N'Ấm Siêu Tốc Goldsun', N'images/sanpham/giadinh3.jpg', 12, N'Ấm siêu tốc GS EK- GBB1218S1 với vỏ ngoài sản phẩm được làm bằng Inox sáng bóng và chống rỉ mang đến sự an toàn khi sử dụng cho người dùng. ', 118000, 0, N'NH7', 1, 2)
INSERT [dbo].[Product] ([ID_Product], [ID_Category], [Name_Product], [Image], [Quantity], [Describe], [Price], [Sale], [ID_Brand], [Warranty_Period], [ID_Season]) VALUES (N'103', N'VDTN', N'Bộ lau nhà 360 có bánh xe DMX-X6', N'images/sanpham/giadinh4.jpg', 5, N'Đầu lau xoay 360 độ, di chuyển nhẹ nhàng. Thùng chứa nước bằng nhựa cao cấp, có tay xách, có bánh xe tiện di chuyển.', 200000, 100000, N'NH7', 1, 3)
INSERT [dbo].[Product] ([ID_Product], [ID_Category], [Name_Product], [Image], [Quantity], [Describe], [Price], [Sale], [ID_Brand], [Warranty_Period], [ID_Season]) VALUES (N'104', N'VDTN', N'Máy May Brother JA1450NT', N'images/sanpham/giadinh5.jpg', 9, N'May được loại chỉ thẳng đơn giản, mũi ziczac và nhiều mũi trang trí khác', 350000, 0, N'NH7', 1, 4)
INSERT [dbo].[Product] ([ID_Product], [ID_Category], [Name_Product], [Image], [Quantity], [Describe], [Price], [Sale], [ID_Brand], [Warranty_Period], [ID_Season]) VALUES (N'105', N'VDTN', N'Quạt Sạc Comet CRF0904', N'images/sanpham/giadinh6.jpg', 5, N'Mô tơ không chổi than yên tĩnh, không nóng máyThiết kế nhỏ gọn có thể mang theo mọi lúc mọi nơi', 150000, 0, N'NH6', 1, 3)
INSERT [dbo].[Product] ([ID_Product], [ID_Category], [Name_Product], [Image], [Quantity], [Describe], [Price], [Sale], [ID_Brand], [Warranty_Period], [ID_Season]) VALUES (N'106', N'VDTN', N'Bàn ủi hơi nước Philips GC518', N'images/sanpham/giadinh8.jpg', 5, N'Bàn ủi hơi nước Philips GC518
Bàn ủi hơi nước đứng thiết kế gọn đẹp, sang trọng, công suất 1600 W.
Mặt bàn ủi bằng silicon, có kích cỡ lớn, ủi đồ thẳng nhanh.', 1800000, 100000, N'NH5', 1, 2)
INSERT [dbo].[Product] ([ID_Product], [ID_Category], [Name_Product], [Image], [Quantity], [Describe], [Price], [Sale], [ID_Brand], [Warranty_Period], [ID_Season]) VALUES (N'107', N'VDTN', N'Bình siêu tốc Electrolux', N'images/sanpham/giadinh9.jpg', 6, N'Thiết kế đẹp mắt, dung tích 1.5 lít tiện dụng.
Chất liệu ruột bình đun làm từ nhựa PP cao cấp.
Công suất lớn 2200 W đun sôi nước chỉ trong vài phút.', 490000, 0, N'NH7', 1, 3)
INSERT [dbo].[Product] ([ID_Product], [ID_Category], [Name_Product], [Image], [Quantity], [Describe], [Price], [Sale], [ID_Brand], [Warranty_Period], [ID_Season]) VALUES (N'108', N'DDGD', N'Quạt điều hòa Sunhouse SHD7727', N'images/sanpham/diengiadung1.png', 7, N'Quạt điều hòa công suất 150 W làm mát nhanh, tiết kiệm điện.', 3500000, 0, N'NH1', 3, 1)
INSERT [dbo].[Product] ([ID_Product], [ID_Category], [Name_Product], [Image], [Quantity], [Describe], [Price], [Sale], [ID_Brand], [Warranty_Period], [ID_Season]) VALUES (N'109', N'DDGD', N'Máy giặt Panasonic', N'images/sanpham/diengiadung2.png', 8, N'Khối lượng giặt 8kg

Truyền động Dây Curoa

Chế độ sấy gió 90 phút

10 chương trình giặt

Cảm biến nhiệt độ và khối lượng

Vận hành với áp lực nước thấp', 4500000, 100000, N'NH2', 2, 1)
INSERT [dbo].[Product] ([ID_Product], [ID_Category], [Name_Product], [Image], [Quantity], [Describe], [Price], [Sale], [ID_Brand], [Warranty_Period], [ID_Season]) VALUES (N'110', N'DDGD', N'Quạt Phun Sương Sunhouse SHD7801', N'images/sanpham/diengiadung3.jpg', 3, N'Độ phun sương: 200 ml/8h liên tục
', 1500000, 0, N'NH1', 3, 1)
INSERT [dbo].[Product] ([ID_Product], [ID_Category], [Name_Product], [Image], [Quantity], [Describe], [Price], [Sale], [ID_Brand], [Warranty_Period], [ID_Season]) VALUES (N'111', N'DDGD', N'Quạt Phun Sương Kangaroo KG208', N'images/sanpham/diengiadung4.jpg', 4, N'Chức năng tạo ion âm lọc không khí

Công suất phun sương 200 ml/h

3 tốc độ gió: Gió thường, gió tự nhiên và gió khi ngủ', 2500000, 100000, N'NH4', 3, 3)
INSERT [dbo].[Product] ([ID_Product], [ID_Category], [Name_Product], [Image], [Quantity], [Describe], [Price], [Sale], [ID_Brand], [Warranty_Period], [ID_Season]) VALUES (N'112', N'DDGD', N'Quạt Sạc SUNHOUSE SH722', N'images/sanpham/diengiadung5.jpg', 11, N'Công suất: 24W - 30W
Số cánh quạt: 3
Tốc độ quạt: 2 tốc độ
Có bộ phận bảo vệ khi quá tả', 950000, 0, N'NH1', 3, 4)
INSERT [dbo].[Product] ([ID_Product], [ID_Category], [Name_Product], [Image], [Quantity], [Describe], [Price], [Sale], [ID_Brand], [Warranty_Period], [ID_Season]) VALUES (N'113', N'DCNB', N'Lò vi sóng Panasonic', N'images/sanpham/bep9.jpg', 8, N'Tiện ích: Hẹn giờ nấu, khoang lò có đèn, cửa kính gương sang trọng, Inverter tiết kiệm điện', 3500000, 0, N'NH2', 2, 1)
INSERT [dbo].[Product] ([ID_Product], [ID_Category], [Name_Product], [Image], [Quantity], [Describe], [Price], [Sale], [ID_Brand], [Warranty_Period], [ID_Season]) VALUES (N'114', N'DCNB', N'Bếp Nướng Điện Sunhouse SHD4607', N'images/sanpham/bep8.jpg', 14, N'Tốc độ nướng nhanh, tiết kiệm điện năng

Mặt bếp lớn, làm chín nhiều thực phẩm cùng lúc

Bộ điều chỉnh nhiệt linh hoạt, nhiều chế độ', 300000, 100000, N'NH1', 1, 2)
INSERT [dbo].[Product] ([ID_Product], [ID_Category], [Name_Product], [Image], [Quantity], [Describe], [Price], [Sale], [ID_Brand], [Warranty_Period], [ID_Season]) VALUES (N'115', N'DCNB', N'Bếp gas âm Sunhouse SHB7736', N'images/sanpham/bep7.jpg', 5, N'Kiểu bếp gas âm hiện đại, sang trọng, 2 lò nấu tiết kiệm thời gian.
Mặt bếp gas bằng kính cường lực chịu nhiệt tốt, dễ vệ sinh.', 3200000, 0, N'NH1', 1, 3)
INSERT [dbo].[Product] ([ID_Product], [ID_Category], [Name_Product], [Image], [Quantity], [Describe], [Price], [Sale], [ID_Brand], [Warranty_Period], [ID_Season]) VALUES (N'116', N'DCNB', N'Bộ dụng cụ nhà bếp Elmich 7 món', N'images/sanpham/bep6.png', 19, N'Bộ dụng cụ nhà bếp Elmich 7 món Eubase EL3853 được làm bằng chất liệu inox chống gỉ an toàn cho sức khỏe và đảm bảo vệ sinh thực phẩm.', 420000, 0, N'NH7', 1, 4)
INSERT [dbo].[Product] ([ID_Product], [ID_Category], [Name_Product], [Image], [Quantity], [Describe], [Price], [Sale], [ID_Brand], [Warranty_Period], [ID_Season]) VALUES (N'117', N'DCNB', N'Bếp ga đơn Namilux', N'images/sanpham/bep5.png', 9, N'Bếp sử dụng inox không hoen rỉ nên rất cứng và khó biến dạng khi va đập hoặc nấu nhiều thức ăn. Ngoài ra, công nghệ  cuốn mép làm tăng thêm độ cứng cho bếp và tránh đứt tay khi vệ sinh', 550000, 100000, N'NH7', 1, 1)
INSERT [dbo].[Product] ([ID_Product], [ID_Category], [Name_Product], [Image], [Quantity], [Describe], [Price], [Sale], [ID_Brand], [Warranty_Period], [ID_Season]) VALUES (N'118', N'DCNB', N'Máy xay sinh tố Philips HR2118', N'images/sanpham/bep4.jpg', 39, N'Máy xay sinh tố ngày càng trở nên phổ biến trong các gia đình, không chỉ giúp mang đến cho bạn những ly sinh tố thơm mát, bổ dưỡng mà còn giúp bạn chế biến các món ăn ngon thật nhanh chóng, tiện lợi.', 1750000, 0, N'NH5', 1, 2)
INSERT [dbo].[Product] ([ID_Product], [ID_Category], [Name_Product], [Image], [Quantity], [Describe], [Price], [Sale], [ID_Brand], [Warranty_Period], [ID_Season]) VALUES (N'119', N'DCNB', N'Bếp từ Philips HD4921', N'images/sanpham/bep3.jpg', 5, N'Bếp từ đơn nhỏ gọn.
 Mặt bếp điện được làm từ kính chịu nhiệt sang trọng, bền bỉ.', 990000, 100000, N'NH5', 2, 3)
INSERT [dbo].[Product] ([ID_Product], [ID_Category], [Name_Product], [Image], [Quantity], [Describe], [Price], [Sale], [ID_Brand], [Warranty_Period], [ID_Season]) VALUES (N'120', N'DCNB', N'Nồi cơm điện tử Philips ', N'images/sanpham/bep2.jpg', 5, N'Lòng nồi bằng hợp kim nhôm tráng men chống dính bền tốt.
Có van thoát hơi thông minh, công nghệ 3D dùng 3 mâm nhiệt giúp nấu cơm ngon.', 1790000, 100000, N'NH5', 1, 4)
INSERT [dbo].[Product] ([ID_Product], [ID_Category], [Name_Product], [Image], [Quantity], [Describe], [Price], [Sale], [ID_Brand], [Warranty_Period], [ID_Season]) VALUES (N'121', N'DCNB', N'Bộ nồi Goldsun GE33-3306SG', N'images/sanpham/bep1.jpg', 0, N'Bộ nồi GE33-3306SG làm bằng chất liệu inox an toàn, có khả năng chịu nhiệt cao mà không bị biến dạng. Bộ sản phẩm có thiết kế đơn giản, sang trọng.', 300000, 100000, N'NH1', 1, 1)
INSERT [dbo].[Product] ([ID_Product], [ID_Category], [Name_Product], [Image], [Quantity], [Describe], [Price], [Sale], [ID_Brand], [Warranty_Period], [ID_Season]) VALUES (N'122', N'DCNB', N'Máy đánh trứng mini tiện dụng', N'images/sanpham/bep10.jpg', 10, N'Đặc biệt là trong công việc nội trợ, mọi việc trở nên dễ dàng hơn khi có sự giúp đỡ của nhiều dụng cụ rất đa năng. Đánh trứng, đánh bột, đánh sữa hay quấy cháo cho trẻ nhỏ…', 3000, 1000, N'NH7', 0, 1)
INSERT [dbo].[Product] ([ID_Product], [ID_Category], [Name_Product], [Image], [Quantity], [Describe], [Price], [Sale], [ID_Brand], [Warranty_Period], [ID_Season]) VALUES (N'123', N'DCNB', N'Muỗng tách lòng đỏ trứng', N'images/sanpham/bep11.png', 36, N'Kích thước: 13cm x 6cm
. Màu sắc: be, hồng, xanh lá, xanh dương', 1000, 0, N'NH7', 0, 3)
INSERT [dbo].[Promotion] ([ID_Promotion], [DateStart], [DateEnd], [ID_Account], [Reason]) VALUES (1, CAST(N'2019-11-19 00:00:00.000' AS DateTime), CAST(N'2019-11-28 00:00:00.000' AS DateTime), N'AD101', N'KHUYẾN MÃI NGÀY NHÀ GIÁO')
INSERT [dbo].[Promotion] ([ID_Promotion], [DateStart], [DateEnd], [ID_Account], [Reason]) VALUES (2, CAST(N'2019-12-10 00:00:00.000' AS DateTime), CAST(N'2019-12-25 00:00:00.000' AS DateTime), N'AD101', N'KHUYẾN MÃI DỊP GIÁNG SINH')
INSERT [dbo].[PromotionDetail] ([ID_Product], [ID_Promotion], [Sale]) VALUES (N'101', 2, 10)
INSERT [dbo].[Receipt] ([ID_Receipt], [ID_Account], [Created_date], [total]) VALUES (1, N'AD101', CAST(N'2019-11-12 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Receipt] ([ID_Receipt], [ID_Account], [Created_date], [total]) VALUES (2, N'AD101', CAST(N'2019-11-12 00:00:00.000' AS DateTime), 500000)
INSERT [dbo].[Receipt] ([ID_Receipt], [ID_Account], [Created_date], [total]) VALUES (3, N'AD101', CAST(N'2019-11-12 00:00:00.000' AS DateTime), 2000000)
INSERT [dbo].[Receipt] ([ID_Receipt], [ID_Account], [Created_date], [total]) VALUES (4, N'AD101', CAST(N'2019-12-13 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Receipt] ([ID_Receipt], [ID_Account], [Created_date], [total]) VALUES (5, N'AD101', CAST(N'2019-12-14 00:00:00.000' AS DateTime), 2100000)
INSERT [dbo].[Receipt] ([ID_Receipt], [ID_Account], [Created_date], [total]) VALUES (6, N'AD101', CAST(N'2019-12-15 00:00:00.000' AS DateTime), 80770000)
INSERT [dbo].[ReceiptDetail] ([ID_ReceiptDetail], [ID_Product], [ID_Receipt], [Price], [Quantity]) VALUES (326, N'102', 2, 100000, 2)
INSERT [dbo].[ReceiptDetail] ([ID_ReceiptDetail], [ID_Product], [ID_Receipt], [Price], [Quantity]) VALUES (367, N'117', 6, 300000, 10)
INSERT [dbo].[ReceiptDetail] ([ID_ReceiptDetail], [ID_Product], [ID_Receipt], [Price], [Quantity]) VALUES (946, N'110', 6, 1000000, 4)
INSERT [dbo].[ReceiptDetail] ([ID_ReceiptDetail], [ID_Product], [ID_Receipt], [Price], [Quantity]) VALUES (2177, N'113', 6, 200000, 8)
INSERT [dbo].[ReceiptDetail] ([ID_ReceiptDetail], [ID_Product], [ID_Receipt], [Price], [Quantity]) VALUES (2421, N'111', 6, 2000000, 4)
INSERT [dbo].[ReceiptDetail] ([ID_ReceiptDetail], [ID_Product], [ID_Receipt], [Price], [Quantity]) VALUES (4887, N'104', 2, 100000, 3)
INSERT [dbo].[ReceiptDetail] ([ID_ReceiptDetail], [ID_Product], [ID_Receipt], [Price], [Quantity]) VALUES (4976, N'115', 6, 1500000, 5)
INSERT [dbo].[ReceiptDetail] ([ID_ReceiptDetail], [ID_Product], [ID_Receipt], [Price], [Quantity]) VALUES (5184, N'116', 6, 300000, 18)
INSERT [dbo].[ReceiptDetail] ([ID_ReceiptDetail], [ID_Product], [ID_Receipt], [Price], [Quantity]) VALUES (5676, N'103', 6, 50000, 12)
INSERT [dbo].[ReceiptDetail] ([ID_ReceiptDetail], [ID_Product], [ID_Receipt], [Price], [Quantity]) VALUES (6286, N'119', 6, 600000, 5)
INSERT [dbo].[ReceiptDetail] ([ID_ReceiptDetail], [ID_Product], [ID_Receipt], [Price], [Quantity]) VALUES (8734, N'122', 6, 1000, 20)
INSERT [dbo].[ReceiptDetail] ([ID_ReceiptDetail], [ID_Product], [ID_Receipt], [Price], [Quantity]) VALUES (10761, N'106', 6, 1000000, 3)
INSERT [dbo].[ReceiptDetail] ([ID_ReceiptDetail], [ID_Product], [ID_Receipt], [Price], [Quantity]) VALUES (12067, N'106', 3, 1000000, 2)
INSERT [dbo].[ReceiptDetail] ([ID_ReceiptDetail], [ID_Product], [ID_Receipt], [Price], [Quantity]) VALUES (15136, N'102', 6, 80000, 10)
INSERT [dbo].[ReceiptDetail] ([ID_ReceiptDetail], [ID_Product], [ID_Receipt], [Price], [Quantity]) VALUES (15167, N'121', 6, 80000, 3)
INSERT [dbo].[ReceiptDetail] ([ID_ReceiptDetail], [ID_Product], [ID_Receipt], [Price], [Quantity]) VALUES (15781, N'118', 6, 1150000, 16)
INSERT [dbo].[ReceiptDetail] ([ID_ReceiptDetail], [ID_Product], [ID_Receipt], [Price], [Quantity]) VALUES (16142, N'101', 5, 300000, 3)
INSERT [dbo].[ReceiptDetail] ([ID_ReceiptDetail], [ID_Product], [ID_Receipt], [Price], [Quantity]) VALUES (16146, N'120', 6, 1200000, 5)
INSERT [dbo].[ReceiptDetail] ([ID_ReceiptDetail], [ID_Product], [ID_Receipt], [Price], [Quantity]) VALUES (16222, N'107', 6, 300000, 6)
INSERT [dbo].[ReceiptDetail] ([ID_ReceiptDetail], [ID_Product], [ID_Receipt], [Price], [Quantity]) VALUES (16974, N'101', 6, 300000, 12)
INSERT [dbo].[ReceiptDetail] ([ID_ReceiptDetail], [ID_Product], [ID_Receipt], [Price], [Quantity]) VALUES (17999, N'109', 6, 200000, 8)
INSERT [dbo].[ReceiptDetail] ([ID_ReceiptDetail], [ID_Product], [ID_Receipt], [Price], [Quantity]) VALUES (18309, N'112', 6, 600000, 14)
INSERT [dbo].[ReceiptDetail] ([ID_ReceiptDetail], [ID_Product], [ID_Receipt], [Price], [Quantity]) VALUES (19070, N'114', 6, 100000, 15)
INSERT [dbo].[ReceiptDetail] ([ID_ReceiptDetail], [ID_Product], [ID_Receipt], [Price], [Quantity]) VALUES (21113, N'105', 6, 50000, 6)
INSERT [dbo].[ReceiptDetail] ([ID_ReceiptDetail], [ID_Product], [ID_Receipt], [Price], [Quantity]) VALUES (21128, N'104', 6, 100000, 6)
INSERT [dbo].[ReceiptDetail] ([ID_ReceiptDetail], [ID_Product], [ID_Receipt], [Price], [Quantity]) VALUES (21243, N'123', 6, 200, 50)
INSERT [dbo].[ReceiptDetail] ([ID_ReceiptDetail], [ID_Product], [ID_Receipt], [Price], [Quantity]) VALUES (21693, N'108', 6, 200000, 7)
INSERT [dbo].[ReceiptDetail] ([ID_ReceiptDetail], [ID_Product], [ID_Receipt], [Price], [Quantity]) VALUES (23010, N'101', 5, 300000, 4)
INSERT [dbo].[Season] ([ID_Season], [Name_Season], [DateStart], [DateEnd]) VALUES (1, N'Mùa Tết', CAST(N'2019-01-01 00:00:00.000' AS DateTime), CAST(N'2019-04-09 00:00:00.000' AS DateTime))
INSERT [dbo].[Season] ([ID_Season], [Name_Season], [DateStart], [DateEnd]) VALUES (2, N'Mùa Đông', CAST(N'2019-11-11 00:00:00.000' AS DateTime), CAST(N'2019-12-30 00:00:00.000' AS DateTime))
INSERT [dbo].[Season] ([ID_Season], [Name_Season], [DateStart], [DateEnd]) VALUES (3, N'Mùa Hè', CAST(N'2019-04-04 00:00:00.000' AS DateTime), CAST(N'2019-06-06 00:00:00.000' AS DateTime))
INSERT [dbo].[Season] ([ID_Season], [Name_Season], [DateStart], [DateEnd]) VALUES (4, N'Mùa Trung Thu', CAST(N'2019-07-07 00:00:00.000' AS DateTime), CAST(N'2019-09-09 00:00:00.000' AS DateTime))
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (98, 1, N'123', NULL, 5032099)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (99, 1, N'123', NULL, 24318360)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (100, 1, N'123', NULL, 39844292)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (101, 1, N'123', NULL, 54297122)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (102, 1, N'123', NULL, 168849198)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (103, 1, N'123', NULL, 171463519)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (104, 0, N'123', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (105, 1, N'122', NULL, 41724485)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (106, 1, N'122', NULL, 73642806)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (107, 1, N'122', NULL, 74373817)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (108, 1, N'122', NULL, 100687436)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (109, 1, N'122', NULL, 130625318)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (110, 1, N'122', NULL, 156370032)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (111, 1, N'122', NULL, 160822189)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (112, 1, N'122', NULL, 165599979)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (113, 1, N'122', NULL, 220044278)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (114, 1, N'122', NULL, 229759656)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (115, 1, N'118', NULL, 60919313)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (116, 0, N'118', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (117, 0, N'118', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (118, 0, N'118', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (119, 1, N'116', NULL, 52344508)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (120, 1, N'116', NULL, 85044454)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (121, 1, N'116', NULL, 193609642)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (122, 0, N'116', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (123, 0, N'122', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (124, 0, N'123', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (125, 1, N'112', NULL, 202933649)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (126, 0, N'118', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (127, 0, N'116', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (128, 0, N'112', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (129, 0, N'112', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (130, 1, N'110', NULL, 94018087)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (131, 0, N'105', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (132, 1, N'103', NULL, 212142860)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (133, 0, N'101', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (134, 0, N'101', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (145, 0, N'123', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (155, 1, N'112', NULL, 167734152)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (997, 1, N'121', NULL, 149747425)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (998, 1, N'121', NULL, 149747425)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (999, 1, N'121', NULL, 149747425)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (1000, 0, N'119', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (1001, 0, N'119', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (1002, 0, N'119', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (1003, 0, N'119', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (1004, 0, N'119', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (1051, 1, N'105', NULL, 51403323)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (1052, 0, N'105', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (1053, 0, N'105', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (1054, 0, N'105', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (1055, 0, N'105', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (1090, 0, N'109', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (1091, 0, N'109', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (1092, 0, N'109', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (1093, 0, N'109', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (1094, 0, N'109', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (1095, 0, N'109', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (1096, 0, N'109', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (1097, 0, N'109', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (1100, 0, N'110', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (1101, 0, N'110', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (1102, 0, N'110', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (1110, 0, N'111', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (1111, 0, N'111', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (1112, 0, N'111', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (1113, 0, N'123', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (1114, 0, N'123', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (1115, 0, N'111', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (1200, 0, N'120', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (1201, 0, N'120', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (1202, 0, N'120', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (1203, 0, N'120', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (1204, 0, N'120', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2000, 0, N'101', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2001, 0, N'101', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2002, 0, N'101', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2003, 0, N'101', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2004, 0, N'101', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2005, 0, N'101', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2006, 0, N'101', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2007, 0, N'101', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2008, 0, N'101', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2009, 0, N'101', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2010, 0, N'101', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2011, 0, N'101', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2012, 0, N'101', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2013, 0, N'101', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2014, 0, N'101', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2015, 0, N'101', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2016, 0, N'101', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2017, 0, N'102', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2018, 0, N'102', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2019, 0, N'102', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2020, 0, N'102', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2021, 0, N'102', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2022, 0, N'102', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2023, 0, N'102', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2024, 0, N'102', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2025, 0, N'102', NULL, NULL)
GO
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2026, 0, N'102', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2027, 0, N'102', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2028, 0, N'102', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2029, 0, N'103', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2030, 0, N'103', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2031, 0, N'103', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2032, 0, N'103', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2033, 0, N'103', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2034, 0, N'103', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2035, 0, N'103', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2036, 0, N'103', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2037, 0, N'103', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2038, 0, N'103', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2039, 0, N'103', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2040, 0, N'104', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2041, 0, N'104', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2042, 0, N'104', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2043, 0, N'104', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2044, 0, N'104', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2045, 0, N'104', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2046, 0, N'104', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2047, 0, N'104', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2048, 0, N'104', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2049, 0, N'106', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2050, 0, N'106', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2051, 0, N'106', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2052, 0, N'106', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2053, 0, N'106', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2054, 0, N'107', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2055, 0, N'107', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2056, 0, N'107', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2057, 0, N'107', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2058, 0, N'107', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2059, 0, N'107', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2060, 0, N'108', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2061, 0, N'108', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2062, 0, N'108', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2063, 0, N'108', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2064, 0, N'108', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2065, 0, N'108', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2066, 0, N'108', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2067, 0, N'112', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2068, 0, N'112', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2069, 0, N'112', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2070, 0, N'112', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2071, 0, N'112', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2072, 0, N'112', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2073, 0, N'112', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2074, 0, N'112', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2075, 0, N'112', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2076, 0, N'112', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2077, 0, N'113', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2078, 0, N'113', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2079, 0, N'113', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2080, 0, N'113', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2081, 0, N'113', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2082, 0, N'113', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2083, 0, N'113', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2084, 0, N'113', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2085, 1, N'114', NULL, 70232780)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2086, 0, N'114', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2087, 0, N'114', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2088, 0, N'114', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2089, 0, N'114', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2090, 0, N'114', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2091, 0, N'114', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2092, 0, N'114', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2093, 0, N'114', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2094, 0, N'114', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2095, 0, N'114', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2096, 0, N'114', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2097, 0, N'114', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2098, 0, N'114', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2099, 0, N'114', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2100, 0, N'115', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2101, 0, N'115', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2102, 0, N'115', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2103, 0, N'115', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2104, 0, N'115', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2105, 0, N'116', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2106, 0, N'116', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2107, 0, N'116', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2108, 0, N'116', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2109, 0, N'116', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2110, 0, N'116', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2111, 0, N'116', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2112, 0, N'116', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2113, 0, N'116', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2114, 0, N'116', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2115, 0, N'116', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2116, 0, N'116', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2117, 0, N'116', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2118, 0, N'117', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2119, 0, N'117', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2120, 0, N'117', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2121, 0, N'117', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2122, 0, N'117', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2123, 0, N'117', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2124, 0, N'117', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2125, 0, N'117', NULL, NULL)
GO
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2126, 0, N'117', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2127, 0, N'117', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2128, 0, N'118', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2129, 0, N'118', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2130, 0, N'118', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2131, 0, N'118', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2132, 0, N'118', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2133, 0, N'118', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2134, 0, N'118', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2135, 0, N'118', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2136, 0, N'118', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2137, 0, N'118', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2138, 0, N'118', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2139, 0, N'122', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2140, 0, N'122', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2141, 0, N'122', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2142, 0, N'122', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2143, 0, N'122', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2144, 0, N'122', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2145, 0, N'122', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2146, 0, N'122', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2147, 0, N'122', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2148, 0, N'123', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2149, 0, N'123', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2150, 0, N'123', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2151, 0, N'123', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2152, 0, N'123', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2153, 0, N'123', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2154, 0, N'123', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2155, 0, N'123', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2156, 0, N'123', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2157, 0, N'123', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2158, 0, N'123', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2159, 0, N'123', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2160, 0, N'123', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2161, 0, N'123', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2162, 0, N'123', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2163, 0, N'123', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2164, 0, N'123', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2165, 0, N'123', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2166, 0, N'123', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2167, 0, N'123', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2168, 0, N'123', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2169, 0, N'123', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2170, 0, N'123', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2171, 0, N'123', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2172, 0, N'123', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2173, 0, N'123', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2174, 0, N'123', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2175, 0, N'123', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2176, 0, N'123', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2177, 0, N'123', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2178, 0, N'123', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2179, 0, N'123', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2180, 0, N'123', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2181, 0, N'123', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2182, 0, N'123', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2183, 0, N'123', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2184, 0, N'123', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2185, 0, N'123', NULL, NULL)
INSERT [dbo].[Seri] ([id_seri], [Status_Seri], [ID_Product], [ID_ReceiptDetail], [ID_InvoiceDetail]) VALUES (2186, 0, N'123', NULL, NULL)
INSERT [dbo].[Shipper] ([ID_Shipper], [Name_Shipper], [Phone_Shipper], [Company_Shipper]) VALUES (1, N'Nguyễn Văn Tí', N'0389111010', N'TS Homeware')
INSERT [dbo].[Shipper] ([ID_Shipper], [Name_Shipper], [Phone_Shipper], [Company_Shipper]) VALUES (2, N'Nguyễn Văn Tèo', N'0389111012', N'TS Homeware')
INSERT [dbo].[Shipper] ([ID_Shipper], [Name_Shipper], [Phone_Shipper], [Company_Shipper]) VALUES (3, N'Nguyễn Thị Sửu', N'0389111018', N'TS Homeware')
INSERT [dbo].[Shipper] ([ID_Shipper], [Name_Shipper], [Phone_Shipper], [Company_Shipper]) VALUES (4, N'Đào Tấn Hợi', N'0330333300', N'TS Homeware')
INSERT [dbo].[StatusProduct] ([ID_StatusProduct], [Name_Status], [Repair_Time]) VALUES (1, N'Hư pin', 3)
INSERT [dbo].[StatusProduct] ([ID_StatusProduct], [Name_Status], [Repair_Time]) VALUES (2, N'Không vô điện', 3)
INSERT [dbo].[StatusProduct] ([ID_StatusProduct], [Name_Status], [Repair_Time]) VALUES (3, N'Không hoạt động được', 3)
INSERT [dbo].[StatusProduct] ([ID_StatusProduct], [Name_Status], [Repair_Time]) VALUES (4, N'Không đúng thông số', 3)
INSERT [dbo].[StatusProduct] ([ID_StatusProduct], [Name_Status], [Repair_Time]) VALUES (5, N'Trường hợp khác', 3)
INSERT [dbo].[Warranty] ([ID_Warranty], [Received_Date], [Return_Date], [Intend_Time], [Status], [id_seri]) VALUES (3258, CAST(N'2019-12-14' AS Date), CAST(N'2019-12-17' AS Date), N'3', 1, 123)
INSERT [dbo].[Warranty] ([ID_Warranty], [Received_Date], [Return_Date], [Intend_Time], [Status], [id_seri]) VALUES (10797, CAST(N'2019-12-13' AS Date), CAST(N'2019-12-16' AS Date), N'3', 4, 124)
INSERT [dbo].[Warranty] ([ID_Warranty], [Received_Date], [Return_Date], [Intend_Time], [Status], [id_seri]) VALUES (98140, CAST(N'2019-12-14' AS Date), CAST(N'2019-12-17' AS Date), N'3', 2, 126)
INSERT [dbo].[Warranty] ([ID_Warranty], [Received_Date], [Return_Date], [Intend_Time], [Status], [id_seri]) VALUES (207425, CAST(N'2019-12-14' AS Date), CAST(N'2019-12-17' AS Date), N'3', 3, 155)
INSERT [dbo].[Warranty] ([ID_Warranty], [Received_Date], [Return_Date], [Intend_Time], [Status], [id_seri]) VALUES (214368, CAST(N'2019-12-14' AS Date), CAST(N'2019-12-17' AS Date), N'3', 2, 125)
INSERT [dbo].[WarrantyDetail] ([ID_Warranty], [ID_StatusProduct]) VALUES (3258, 3)
INSERT [dbo].[WarrantyDetail] ([ID_Warranty], [ID_StatusProduct]) VALUES (10797, 2)
INSERT [dbo].[WarrantyDetail] ([ID_Warranty], [ID_StatusProduct]) VALUES (214368, 4)
INSERT [dbo].[WarrantyDetail] ([ID_Warranty], [ID_StatusProduct]) VALUES (98140, 5)
INSERT [dbo].[WarrantyDetail] ([ID_Warranty], [ID_StatusProduct]) VALUES (207425, 1)
ALTER TABLE [dbo].[ImageDetail]  WITH CHECK ADD  CONSTRAINT [FK_ImageDetail_Product] FOREIGN KEY([ID_Product])
REFERENCES [dbo].[Product] ([ID_Product])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[ImageDetail] CHECK CONSTRAINT [FK_ImageDetail_Product]
GO
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD  CONSTRAINT [FK_Invoice_Account] FOREIGN KEY([ID_Account])
REFERENCES [dbo].[Account] ([ID_Account])
GO
ALTER TABLE [dbo].[Invoice] CHECK CONSTRAINT [FK_Invoice_Account]
GO
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD  CONSTRAINT [FK_Invoice_Shipper] FOREIGN KEY([ID_Shipper])
REFERENCES [dbo].[Shipper] ([ID_Shipper])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Invoice] CHECK CONSTRAINT [FK_Invoice_Shipper]
GO
ALTER TABLE [dbo].[InvoiceDetail]  WITH CHECK ADD  CONSTRAINT [FK_InvoiceDetail_Invoice] FOREIGN KEY([ID_Invoice])
REFERENCES [dbo].[Invoice] ([ID_Invoice])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[InvoiceDetail] CHECK CONSTRAINT [FK_InvoiceDetail_Invoice]
GO
ALTER TABLE [dbo].[InvoiceDetail]  WITH CHECK ADD  CONSTRAINT [FK_InvoiceDetail_Product] FOREIGN KEY([ID_Product])
REFERENCES [dbo].[Product] ([ID_Product])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[InvoiceDetail] CHECK CONSTRAINT [FK_InvoiceDetail_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Brand] FOREIGN KEY([ID_Brand])
REFERENCES [dbo].[Brand] ([ID_Brand])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Brand]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([ID_Category])
REFERENCES [dbo].[Category] ([ID_Category])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Season] FOREIGN KEY([ID_Season])
REFERENCES [dbo].[Season] ([ID_Season])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Season]
GO
ALTER TABLE [dbo].[Promotion]  WITH CHECK ADD  CONSTRAINT [FK_Promotion_Account] FOREIGN KEY([ID_Account])
REFERENCES [dbo].[Account] ([ID_Account])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Promotion] CHECK CONSTRAINT [FK_Promotion_Account]
GO
ALTER TABLE [dbo].[PromotionDetail]  WITH CHECK ADD  CONSTRAINT [FK_PromotionDetail_Product] FOREIGN KEY([ID_Product])
REFERENCES [dbo].[Product] ([ID_Product])
GO
ALTER TABLE [dbo].[PromotionDetail] CHECK CONSTRAINT [FK_PromotionDetail_Product]
GO
ALTER TABLE [dbo].[PromotionDetail]  WITH CHECK ADD  CONSTRAINT [FK_PromotionDetail_Promotion] FOREIGN KEY([ID_Promotion])
REFERENCES [dbo].[Promotion] ([ID_Promotion])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[PromotionDetail] CHECK CONSTRAINT [FK_PromotionDetail_Promotion]
GO
ALTER TABLE [dbo].[Receipt]  WITH CHECK ADD  CONSTRAINT [FK_Receipt_Account] FOREIGN KEY([ID_Account])
REFERENCES [dbo].[Account] ([ID_Account])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Receipt] CHECK CONSTRAINT [FK_Receipt_Account]
GO
ALTER TABLE [dbo].[ReceiptDetail]  WITH CHECK ADD  CONSTRAINT [FK_ReceiptDetail_Receipt] FOREIGN KEY([ID_Receipt])
REFERENCES [dbo].[Receipt] ([ID_Receipt])
GO
ALTER TABLE [dbo].[ReceiptDetail] CHECK CONSTRAINT [FK_ReceiptDetail_Receipt]
GO
ALTER TABLE [dbo].[Seri]  WITH CHECK ADD  CONSTRAINT [FK_Seri_Product] FOREIGN KEY([ID_Product])
REFERENCES [dbo].[Product] ([ID_Product])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Seri] CHECK CONSTRAINT [FK_Seri_Product]
GO
ALTER TABLE [dbo].[Seri]  WITH CHECK ADD  CONSTRAINT [FK_Seri_ReceiptDetail] FOREIGN KEY([ID_ReceiptDetail])
REFERENCES [dbo].[ReceiptDetail] ([ID_ReceiptDetail])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Seri] CHECK CONSTRAINT [FK_Seri_ReceiptDetail]
GO
ALTER TABLE [dbo].[Warranty]  WITH CHECK ADD  CONSTRAINT [FK_Warranty_Seri] FOREIGN KEY([id_seri])
REFERENCES [dbo].[Seri] ([id_seri])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Warranty] CHECK CONSTRAINT [FK_Warranty_Seri]
GO
ALTER TABLE [dbo].[WarrantyDetail]  WITH CHECK ADD  CONSTRAINT [FK_WarrantyDetail_StatusProduct] FOREIGN KEY([ID_StatusProduct])
REFERENCES [dbo].[StatusProduct] ([ID_StatusProduct])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[WarrantyDetail] CHECK CONSTRAINT [FK_WarrantyDetail_StatusProduct]
GO
ALTER TABLE [dbo].[WarrantyDetail]  WITH CHECK ADD  CONSTRAINT [FK_WarrantyDetail_Warranty] FOREIGN KEY([ID_Warranty])
REFERENCES [dbo].[Warranty] ([ID_Warranty])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[WarrantyDetail] CHECK CONSTRAINT [FK_WarrantyDetail_Warranty]
GO
