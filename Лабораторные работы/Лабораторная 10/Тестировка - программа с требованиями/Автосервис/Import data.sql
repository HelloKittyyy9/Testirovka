USE [D:\UserFiles\Desktop\LocalDB.mdf]
GO
/****** Object:  Table [dbo].[AttachedProduct]    Script Date: 10.09.2021 21:17:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AttachedProduct](
	[MainProductID] [int] NOT NULL,
	[AttachedProductID] [int] NOT NULL,
 CONSTRAINT [PK_AttachedProduct] PRIMARY KEY CLUSTERED 
(
	[MainProductID] ASC,
	[AttachedProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Auth]    Script Date: 10.09.2021 21:17:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Auth](
	[Login] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Token] [varbinary](16) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 10.09.2021 21:17:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Patronymic] [nvarchar](50) NULL,
	[Birthday] [date] NULL,
	[RegistrationDate] [datetime] NOT NULL,
	[Email] [nvarchar](255) NULL,
	[Phone] [nvarchar](20) NOT NULL,
	[GenderCode] [nchar](1) NOT NULL,
	[PhotoPath] [nvarchar](1000) NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientService]    Script Date: 10.09.2021 21:17:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientService](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ClientID] [int] NOT NULL,
	[ServiceID] [int] NOT NULL,
	[StartTime] [datetime] NOT NULL,
	[Comment] [nvarchar](max) NULL,
 CONSTRAINT [PK_ClientService] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocumentByService]    Script Date: 10.09.2021 21:17:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentByService](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ClientServiceID] [int] NOT NULL,
	[DocumentPath] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_DocumentByService] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 10.09.2021 21:17:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[Code] [nchar](1) NOT NULL,
	[Name] [nvarchar](10) NULL,
 CONSTRAINT [PK_Gender] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manufacturer]    Script Date: 10.09.2021 21:17:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manufacturer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[StartDate] [date] NULL,
 CONSTRAINT [PK_Manufacturer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 10.09.2021 21:17:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Cost] [money] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[MainImagePath] [nvarchar](1000) NULL,
	[IsActive] [bit] NOT NULL,
	[ManufacturerID] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductPhoto]    Script Date: 10.09.2021 21:17:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductPhoto](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[PhotoPath] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_ProductPhoto] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductSale]    Script Date: 10.09.2021 21:17:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductSale](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SaleDate] [datetime] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[ClientServiceID] [int] NULL,
 CONSTRAINT [PK_ProductSale] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 10.09.2021 21:17:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Cost] [money] NOT NULL,
	[DurationInSeconds] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Discount] [float] NULL,
	[MainImagePath] [nvarchar](1000) NULL,
 CONSTRAINT [PK_Service] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServicePhoto]    Script Date: 10.09.2021 21:17:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServicePhoto](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ServiceID] [int] NOT NULL,
	[PhotoPath] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_ServicePhoto] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tag]    Script Date: 10.09.2021 21:17:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tag](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](30) NOT NULL,
	[Color] [nchar](6) NOT NULL,
 CONSTRAINT [PK_Tag] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TagOfClient]    Script Date: 10.09.2021 21:17:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TagOfClient](
	[ClientID] [int] NOT NULL,
	[TagID] [int] NOT NULL,
 CONSTRAINT [PK_TagOfClient] PRIMARY KEY CLUSTERED 
(
	[ClientID] ASC,
	[TagID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 10.09.2021 21:17:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Role] [smallint] NOT NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Surname] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[FatherName] [nvarchar](50) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[AttachedProduct] ([MainProductID], [AttachedProductID]) VALUES (1, 1102)
INSERT [dbo].[AttachedProduct] ([MainProductID], [AttachedProductID]) VALUES (1104, 8)
INSERT [dbo].[AttachedProduct] ([MainProductID], [AttachedProductID]) VALUES (1104, 104)
INSERT [dbo].[Auth] ([Login], [Password], [Token]) VALUES (N'keeper', N'123456', 0x560ADF1929EAF0843E9B66A0FA836DD4)
SET IDENTITY_INSERT [dbo].[Manufacturer] ON 

INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (1, N'76', CAST(N'2017-02-03' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (2, N'Airline', CAST(N'2016-03-26' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (3, N'Airtex', CAST(N'2015-10-21' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (4, N'ALСA', CAST(N'2016-10-01' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (5, N'ASHIKA', CAST(N'2018-06-13' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (6, N'Automega', CAST(N'2016-07-01' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (7, N'Bendix', CAST(N'2015-04-25' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (8, N'Benson', CAST(N'2015-04-09' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (9, N'BILSTEIN', CAST(N'2018-03-06' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (10, N'BOGE', CAST(N'2016-01-18' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (11, N'BOSCH', CAST(N'2017-06-21' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (12, N'Castrol', CAST(N'2015-04-16' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (13, N'Elf', CAST(N'2016-10-16' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (14, N'Ferodo', CAST(N'2015-08-11' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (15, N'Ford', CAST(N'2016-10-12' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (16, N'General Motors', CAST(N'2016-10-05' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (17, N'Glaser', CAST(N'2015-12-29' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (18, N'Goodyear', CAST(N'2015-12-05' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (19, N'Honda', CAST(N'2016-06-12' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (20, N'Hyundai/Kia', CAST(N'2016-01-07' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (21, N'Idemitsu', CAST(N'2018-01-21' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (22, N'KASHIYAMA', CAST(N'2015-10-16' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (23, N'Kayaba', CAST(N'2016-02-08' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (24, N'King Bearings', CAST(N'2016-09-12' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (25, N'Lemforder', CAST(N'2016-11-15' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (26, N'Liqui Moly', CAST(N'2015-03-24' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (27, N'LUK', CAST(N'2015-12-02' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (28, N'Lukoil', CAST(N'2017-12-19' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (29, N'Magneti Marelli', CAST(N'2017-05-27' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (30, N'Mando', CAST(N'2015-03-24' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (31, N'Mazda', CAST(N'2018-01-23' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (32, N'Mercedes', CAST(N'2016-03-16' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (33, N'Mitsubishi', CAST(N'2017-04-23' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (34, N'Mobil', CAST(N'2016-10-24' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (35, N'Motul', CAST(N'2018-01-07' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (36, N'Nissan', CAST(N'2015-01-21' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (37, N'Opel', CAST(N'2015-03-04' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (38, N'OPTIMAL', CAST(N'2016-08-19' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (39, N'Petro-Canada', CAST(N'2017-03-22' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (40, N'Pierburg', CAST(N'2017-01-10' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (41, N'Profix', CAST(N'2017-10-02' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (42, N'Shell', CAST(N'2016-11-14' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (43, N'Stels', CAST(N'2017-05-16' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (44, N'Suzuki', CAST(N'2017-05-18' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (45, N'Total', CAST(N'2015-03-05' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (46, N'Toyota', CAST(N'2016-06-03' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (47, N'VAG', CAST(N'2018-05-16' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (48, N'Zekkert', CAST(N'2018-03-08' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (49, N'ZIC', CAST(N'2015-02-07' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (50, N'ZIMMERMANN', CAST(N'2017-12-14' AS Date))
SET IDENTITY_INSERT [dbo].[Manufacturer] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (1, N'Жилет светоотражающий взрослый ARW-AV-02', 150.0000, N'Жилетка чтоб вас ночью на дороге не сбили.', N'Товары автосервиса\D4D0CE67.jpg', 1, 2)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (2, N'Кредитница, Кожа B6 6 95 1349', 6770.0000, N'Карточки складировать если у вас мобила без нфц', N'Товары автосервиса\63C09E91.jpg', 1, 32)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (3, N'Моторное масло Mobil 1 ESP 154279', 1860.0000, N'', N'Товары автосервиса\F460E078.jpg', 1, 34)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (4, N'Моторное масло Mobil 1 ESP 154285', 2890.0000, N'', N'Товары автосервиса\F490E078.jpg', 1, 34)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (5, N'Моторное масло Mobil 1 ESP Formula 152621', 2920.0000, N'', N'Товары автосервиса\DC70BEC3.jpg', 0, 34)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (6, N'Моторное масло 34 1 FS 153692', 3020.0000, N'', N'Товары автосервиса\6080DCD5.jpg', 1, 34)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (7, N'Моторное масло 76 08880-803ENGINE OIL-GO', 1630.0000, N'', N'Товары автосервиса\0070C563.jpg', 1, 46)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (8, N'Моторное масло 76 A000989PKW Motorenol0213BLER', 2510.0000, N'', N'Товары автосервиса\2E00E06C.jpg', 1, 32)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (9, N'Моторное масло 76 Top Tec 420061', 3440.0000, N'', N'Товары автосервиса\03D096CB.jpg', 1, 26)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (10, N'Моторное масло 8100 X-CESS 102870', 3190.0000, N'', N'Товары автосервиса\E9308929.jpg', 1, 35)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (11, N'Моторное масло Dexos 2 19 42 000', 1410.0000, N'', N'Товары автосервиса\2390848B.jpg', 1, 37)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (12, N'Моторное масло Dexos 2 19 42 002', 1300.0000, N'', N'Товары автосервиса\23F0848B.jpg', 1, 37)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (13, N'Моторное масло Dexos 2 19 42 003', 1490.0000, N'', N'Товары автосервиса\8430842A.jpg', 1, 37)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (14, N'Моторное масло Dexos 2 93165554', 1380.0000, N'', N'Товары автосервиса\45008C52.jpg', 1, 16)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (15, N'Моторное масло Dexos 2 93165556', 1340.0000, N'', N'Товары автосервиса\43E08C52.jpg', 1, 16)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (16, N'Моторное масло Dexos 2 93165557', 1500.0000, N'', N'Товары автосервиса\45908C52.jpg', 1, 16)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (17, N'Моторное масло Dexos 2 95599405', 1410.0000, N'', N'Товары автосервиса\AD00B713.jpg', 1, 16)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (18, N'Моторное масло Ecstar F9000 99M00-22R02-004', 2330.0000, N'', N'Товары автосервиса\21B0E533.jpg', 1, 44)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (19, N'Моторное масло EDGE LL Titanium FST 15669A', 3000.0000, N'', N'Товары автосервиса\8BC0C1A9.jpg', 1, 12)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (20, N'Моторное масло EDGE Professional LL III Titanium FST 157AD6', 1760.0000, N'', N'Товары автосервиса\96E0C1E7.jpg', 1, 12)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (21, N'Моторное масло ENGINE OIL 08880-80365-GO', 3580.0000, N'', N'Товары автосервиса\CC10C869.jpg', 1, 46)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (22, N'Моторное масло ENGINE OIL 08880-80375-GO', 2710.0000, N'', N'Товары автосервиса\CC40C869.jpg', 0, 46)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (23, N'Моторное масло ENGINE OIL MZ 320753', 1590.0000, N'', N'Товары автосервиса\5BB0C351.jpg', 0, 33)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (24, N'Моторное масло ENGINE OIL MZ 320754', 2140.0000, N'', N'Товары автосервиса\3B70C57C.jpg', 1, 33)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (25, N'Моторное масло ENGINE OIL MZ 320756', 1600.0000, N'', N'Товары автосервиса\5BE0C351.jpg', 0, 33)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (26, N'Моторное масло ENGINE OIL MZ 320757', 2210.0000, N'', N'Товары автосервиса\0D30C4EE.jpg', 1, 33)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (27, N'Моторное масло Evolution 900 SXR 10160501', 1750.0000, N'', N'Товары автосервиса\BD80E8D5.jpg', 1, 13)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (28, N'Моторное масло Evolution 900 SXR 194839', 2340.0000, N'', N'Товары автосервиса\F8E0B138.jpg', 0, 13)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (29, N'Моторное масло Evolution 900 SXR 194877', 2470.0000, N'', N'Товары автосервиса\E3A0B18A.jpg', 1, 13)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (30, N'Моторное масло Evolution 900 SXR 194878', 2010.0000, N'', N'Товары автосервиса\E320BB7C.jpg', 1, 13)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (31, N'Моторное масло Formula F 15595E', 1750.0000, N'', N'Товары автосервиса\5250C855.jpg', 0, 15)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (32, N'Моторное масло Formula F 155D3A', 1830.0000, N'', N'Товары автосервиса\39D0C188.jpg', 1, 15)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (33, N'Моторное масло Formula F Fuel Economy HC 155D4B', 1450.0000, N'', N'Товары автосервиса\39A0C188.jpg', 1, 15)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (34, N'Моторное масло Fuel Economy 08880-80845', 2560.0000, N'', N'Товары автосервиса\23106A35.jpg', 1, 46)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (35, N'Моторное масло Gasoline Fully- Synthetic 30021326-746', 1650.0000, N'', N'Товары автосервиса\27B0C883.jpg', 1, 21)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (36, N'Моторное масло Genesis Armortech 1539424', 1710.0000, N'', N'Товары автосервиса\B0F0CB59.jpg', 1, 28)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (37, N'Моторное масло Genesis Armortech 3148675', 1660.0000, N'', N'Товары автосервиса\C9C0F036.jpg', 0, 28)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (38, N'Моторное масло Genuine A000989790211BIFR', 1530.0000, N'', N'Товары автосервиса\2E30E06C.jpg', 0, 32)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (39, N'Моторное масло Genuine A000989790213BIFR', 2390.0000, N'', N'Товары автосервиса\2E60E06C.jpg', 1, 32)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (40, N'Моторное масло Helix HX8 A5/B5 550046777', 1530.0000, N'', N'Товары автосервиса\F160E078.jpg', 1, 42)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (41, N'Моторное масло Helix Ultra 550046361', 2120.0000, N'', N'Товары автосервиса\F310E078.jpg', 1, 42)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (42, N'Моторное масло Helix Ultra 550046367', 1650.0000, N'', N'Товары автосервиса\F2E0E078.jpg', 0, 42)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (43, N'Моторное масло Helix Ultra 550046387', 2160.0000, N'', N'Товары автосервиса\F2B0E078.jpg', 0, 42)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (44, N'Моторное масло Helix Ultra Pro AM-L 550046353', 2110.0000, N'', N'Товары автосервиса\3DF0E4BC.jpg', 1, 42)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (45, N'Моторное масло Leichtlauf Special AA 7516', 2360.0000, N'', N'Товары автосервиса\47E07CB5.jpg', 1, 26)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (46, N'Моторное масло Longlife III G 052 195 M2', 1910.0000, N'', N'Товары автосервиса\E5507A37.jpg', 1, 47)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (47, N'Моторное масло Longlife III G 052 195 M4', 4100.0000, N'', N'Товары автосервиса\D9605006.jpg', 1, 47)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (48, N'Моторное масло Magnatec A3/B4 156E9D', 1610.0000, N'', N'Товары автосервиса\9290C1E7.jpg', 1, 12)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (49, N'Моторное масло Magnatec A3/B4 156E9E', 2130.0000, N'', N'Товары автосервиса\92C0C1E7.jpg', 1, 12)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (50, N'Моторное масло Magnatec A5 15583D', 2220.0000, N'', N'Товары автосервиса\9380C1E7.jpg', 1, 12)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (51, N'Моторное масло Molygen New Generation 9042', 2510.0000, N'', N'Товары автосервиса\0D60A8A4.jpg', 1, 26)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (52, N'Моторное масло Molygen New Generation 9054', 2670.0000, N'', N'Товары автосервиса\0DF0A8A4.jpg', 1, 26)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (53, N'Моторное масло Motor Oil KE900-90032-R', 1450.0000, N'', N'Товары автосервиса\54B0795D.jpg', 1, 36)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (54, N'Моторное масло Motor Oil KE900-90042', 2020.0000, N'', N'Товары автосервиса\90505D31.jpg', 1, 36)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (55, N'Моторное масло Motor Oil KE900-90042-R', 2060.0000, N'', N'Товары автосервиса\8FE07916.jpg', 1, 36)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (56, N'Моторное масло Optimal Synth 2293', 2520.0000, N'', N'Товары автосервиса\C310B9F3.jpg', 1, 26)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (57, N'Моторное масло Optimal Synth 3926', 1880.0000, N'', N'Товары автосервиса\EFC05011.jpg', 1, 26)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (58, N'Моторное масло Original oil Ultra 0530-05-TFE', 2930.0000, N'', N'Товары автосервиса\85C04040.jpg', 1, 31)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (59, N'Моторное масло Original oil Ultra 8300-77-992', 2770.0000, N'', N'Товары автосервиса\EF80D790.jpg', 0, 31)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (60, N'Моторное масло Premium DPF Diesel 05200-00120', 1460.0000, N'', N'Товары автосервиса\2D709062.jpg', 1, 20)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (61, N'Моторное масло Premium DPF Diesel 05200-00620', 2470.0000, N'', N'Товары автосервиса\9B3075EB.jpg', 1, 20)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (62, N'Моторное масло Premium LF Gasoline 05100-00451', 1620.0000, N'', N'Товары автосервиса\2B609062.jpg', 1, 20)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (63, N'Моторное масло QUARTZ 9000 148597', 1700.0000, N'', N'Товары автосервиса\8F909ED7.jpg', 0, 45)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (64, N'Моторное масло QUARTZ 9000 ENERGY HKS 175392', 1530.0000, N'', N'Товары автосервиса\6DA0A012.jpg', 0, 45)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (65, N'Моторное масло QUARTZ 9000 ENERGY HKS 175393', 2830.0000, N'', N'Товары автосервиса\6DD0A012.jpg', 1, 45)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (66, N'Моторное масло QUARTZ 9000 FUTURE NFC 10230501', 1650.0000, N'', N'Товары автосервиса\3970E753.jpg', 0, 45)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (67, N'Моторное масло QUARTZ 9000 FUTURE NFC 171839', 1560.0000, N'', N'Товары автосервиса\D2508F32.jpg', 1, 45)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (68, N'Моторное масло QUARTZ 9000 FUTURE NFC 183199', 2040.0000, N'', N'Товары автосервиса\6CE0A012.jpg', 1, 45)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (69, N'Моторное масло QUARTZ 9000 FUTURE NFC 183450', 1660.0000, N'', N'Товары автосервиса\FA90B138.jpg', 1, 45)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (70, N'Моторное масло QUARTZ INEO ECS 151510', 1920.0000, N'', N'Товары автосервиса\8F609ED7.jpg', 1, 45)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (71, N'Моторное масло QUARTZ INEO ECS 166252', 1600.0000, N'', N'Товары автосервиса\D0D08F32.jpg', 1, 45)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (72, N'Моторное масло SN 08880-10705', 2200.0000, N'', N'Товары автосервиса\43909176.jpg', 1, 46)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (73, N'Моторное масло SN 08880-10706', 1640.0000, N'', N'Товары автосервиса\43C09176.jpg', 1, 46)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (74, N'Моторное масло SN/GF-5 SN5W30C', 1550.0000, N'', N'Товары автосервиса\5A30A7EE.jpg', 1, 41)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (75, N'Моторное масло Special C G 055 167 M4', 4720.0000, N'', N'Товары автосервиса\6730A31C.jpg', 1, 47)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (76, N'Моторное масло Special G G 052 502 M2', 1820.0000, N'', N'Товары автосервиса\E0D0E079.jpg', 1, 47)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (77, N'Моторное масло Special G G 052 502 M4', 3090.0000, N'', N'Товары автосервиса\E0A0E079.jpg', 1, 47)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (78, N'Моторное масло Special Tec LL 8055', 2420.0000, N'', N'Товары автосервиса\B590AA7B.jpg', 0, 26)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (79, N'Моторное масло Super 3000 X1 152061', 2010.0000, N'', N'Товары автосервиса\40409946.jpg', 1, 34)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (80, N'Моторное масло Super 3000 X1 152566', 1820.0000, N'', N'Товары автосервиса\6CA0BE73.jpg', 0, 34)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (81, N'Моторное масло Super 3000 X1 152567', 1550.0000, N'', N'Товары автосервиса\F200BC2F.jpg', 1, 34)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (82, N'Моторное масло Super 3000 X1 Diesel 152572', 1870.0000, N'', N'Товары автосервиса\B0A0C186.jpg', 1, 34)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (83, N'Моторное масло Super 3000 X1 Formula FE 152564', 1890.0000, N'', N'Товары автосервиса\59B0BE73.jpg', 1, 34)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (84, N'Моторное масло Super Extra Gasoline 05100-00410', 1230.0000, N'', N'Товары автосервиса\2A109062.jpg', 1, 20)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (85, N'Моторное масло Supreme Synthetic MOSYN53C16', 1910.0000, N'', N'Товары автосервиса\69C0CD62.jpg', 1, 39)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (86, N'Моторное масло Top Tec 4100 7501', 2580.0000, N'', N'Товары автосервиса\69C0CD62.jpg', 1, 26)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (87, N'Моторное масло Top Tec 4600 8033', 2580.0000, N'', N'Товары автосервиса\B790A6AA.jpg', 0, 26)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (88, N'Моторное масло Turbo SYN Gasoline 05100-00441', 1870.0000, N'', N'Товары автосервиса\2B009062.jpg', 1, 20)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (89, N'Моторное масло ULTRA 152624', 1940.0000, N'', N'Товары автосервиса\BA30C186.jpg', 1, 34)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (90, N'Моторное масло Ultra LEO-SN 08217-99974', 2980.0000, N'', N'Товары автосервиса\97809225.jpg', 1, 19)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (91, N'Моторное масло X9 162613', 1530.0000, N'', N'Товары автосервиса\30E0C751.jpg', 1, 49)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (92, N'Моторное масло Zepro Eco Medalist 3583-001', 1770.0000, N'', N'Товары автосервиса\6800BB8A.jpg', 1, 21)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (93, N'Моторное масло Zepro Eco Medalist 3583-004', 2520.0000, N'', N'Товары автосервиса\3DA0B713.jpg', 1, 21)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (94, N'Моторное масло Zepro Euro Spec SN/CF 1849-001', 1730.0000, N'', N'Товары автосервиса\90A0B807.jpg', 1, 21)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (95, N'Моторное масло Zepro Euro Spec SN/CF 1849-004', 2400.0000, N'', N'Товары автосервиса\90D0B807.jpg', 1, 21)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (96, N'Моторное масло Zepro Touring 1845-001', 1720.0000, N'', N'Товары автосервиса\7B70B9C6.jpg', 1, 21)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (97, N'Моторное масло Zepro Touring 1845-004', 2380.0000, N'', N'Товары автосервиса\5180B90E.jpg', 1, 21)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (98, N'Моторное масло Люкс 207465', 1090.0000, N'', N'Товары автосервиса\8E20A863.jpg', 1, 28)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (99, N'Трос буксировочный 12 тонн 54384', 410.0000, N'', N'Товары автосервиса\9750DA76.jpg', 1, 43)
GO
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (100, N'Щетка для снега со съемным скребком GY000202', 350.0000, N'', N'Товары автосервиса\3760D73F.jpg', 1, 18)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (104, N' ПРОДАМ ГАРАЖ', 100000.0000, N'Продам офигенно вместетельный гараж, туда влезает газель, ящик пива, два
бати и утюг. Цена всего 100к. Ящик пива в комплект не входит.
', N'Товары автосервиса/unnamed.jpg', 1, 1)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (1102, N'Гроб', 10000.0000, N'На тот случай, если жилетка не помогла', N'Товары автосервиса/33.png', 1, 1)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (1104, N'ТЕСТ', 1000.0000, N'ТЕСТ', N'Товары автосервиса/2.jpg', 0, 4)
SET IDENTITY_INSERT [dbo].[Product] OFF
SET IDENTITY_INSERT [dbo].[ProductSale] ON 

INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (1, CAST(N'2019-08-25T09:14:40.000' AS DateTime), 1, 3, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (2, CAST(N'2019-03-27T19:34:17.000' AS DateTime), 1, 2, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (3, CAST(N'2019-02-15T13:41:46.000' AS DateTime), 2, 3, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (4, CAST(N'2019-09-25T09:23:18.000' AS DateTime), 8, 2, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (5, CAST(N'2019-02-27T17:52:43.000' AS DateTime), 8, 2, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (6, CAST(N'2019-01-20T17:36:33.000' AS DateTime), 9, 3, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (7, CAST(N'2019-02-16T08:02:50.000' AS DateTime), 11, 1, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (8, CAST(N'2019-10-11T17:27:19.000' AS DateTime), 13, 1, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (9, CAST(N'2019-12-18T15:30:51.000' AS DateTime), 14, 2, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (10, CAST(N'2019-08-05T16:32:17.000' AS DateTime), 15, 1, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (11, CAST(N'2019-03-27T18:28:09.000' AS DateTime), 16, 3, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (12, CAST(N'2019-12-06T10:24:41.000' AS DateTime), 17, 2, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (13, CAST(N'2019-06-10T15:45:52.000' AS DateTime), 19, 2, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (14, CAST(N'2019-05-29T13:09:10.000' AS DateTime), 21, 2, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (15, CAST(N'2019-03-11T19:48:14.000' AS DateTime), 22, 2, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (16, CAST(N'2019-07-22T10:28:38.000' AS DateTime), 23, 3, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (17, CAST(N'2019-04-09T08:03:50.000' AS DateTime), 23, 3, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (18, CAST(N'2019-03-01T14:05:29.000' AS DateTime), 24, 3, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (19, CAST(N'2019-07-14T09:32:31.000' AS DateTime), 24, 1, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (20, CAST(N'2019-07-26T13:42:01.000' AS DateTime), 24, 2, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (21, CAST(N'2019-11-20T17:05:24.000' AS DateTime), 25, 3, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (22, CAST(N'2019-07-23T13:22:18.000' AS DateTime), 26, 2, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (23, CAST(N'2019-05-25T12:03:17.000' AS DateTime), 26, 3, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (24, CAST(N'2019-09-11T14:29:57.000' AS DateTime), 27, 3, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (25, CAST(N'2019-04-13T12:41:52.000' AS DateTime), 27, 2, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (26, CAST(N'2019-02-25T18:40:43.000' AS DateTime), 29, 1, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (27, CAST(N'2019-01-21T13:44:02.000' AS DateTime), 30, 2, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (28, CAST(N'2019-07-22T17:12:57.000' AS DateTime), 30, 2, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (29, CAST(N'2019-10-03T08:00:50.000' AS DateTime), 30, 1, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (30, CAST(N'2019-02-01T08:49:59.000' AS DateTime), 31, 1, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (31, CAST(N'2019-03-23T09:48:58.000' AS DateTime), 32, 3, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (32, CAST(N'2019-11-02T13:31:04.000' AS DateTime), 33, 2, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (33, CAST(N'2019-01-13T15:27:07.000' AS DateTime), 33, 3, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (34, CAST(N'2019-11-16T13:32:23.000' AS DateTime), 34, 3, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (35, CAST(N'2019-05-23T12:00:25.000' AS DateTime), 34, 1, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (36, CAST(N'2019-02-13T13:40:11.000' AS DateTime), 34, 3, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (37, CAST(N'2019-01-01T08:47:04.000' AS DateTime), 35, 1, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (38, CAST(N'2019-05-01T14:29:56.000' AS DateTime), 37, 3, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (39, CAST(N'2019-12-26T19:19:02.000' AS DateTime), 38, 2, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (40, CAST(N'2019-01-09T17:03:46.000' AS DateTime), 38, 3, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (41, CAST(N'2019-05-14T16:03:31.000' AS DateTime), 39, 1, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (42, CAST(N'2019-02-05T14:04:39.000' AS DateTime), 41, 1, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (43, CAST(N'2019-04-07T17:30:40.000' AS DateTime), 41, 2, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (44, CAST(N'2019-02-03T09:33:38.000' AS DateTime), 42, 1, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (45, CAST(N'2019-03-27T12:05:57.000' AS DateTime), 42, 1, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (46, CAST(N'2019-07-28T10:56:06.000' AS DateTime), 46, 1, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (47, CAST(N'2019-08-19T10:01:32.000' AS DateTime), 46, 3, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (48, CAST(N'2019-11-22T14:44:14.000' AS DateTime), 46, 3, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (49, CAST(N'2019-09-26T16:57:40.000' AS DateTime), 47, 1, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (50, CAST(N'2019-11-16T16:36:00.000' AS DateTime), 48, 3, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (51, CAST(N'2019-04-29T18:19:10.000' AS DateTime), 49, 1, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (52, CAST(N'2019-03-23T12:33:48.000' AS DateTime), 50, 3, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (53, CAST(N'2019-10-21T10:29:19.000' AS DateTime), 50, 2, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (54, CAST(N'2019-02-22T15:30:53.000' AS DateTime), 4, 2, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (55, CAST(N'2019-02-06T19:06:42.000' AS DateTime), 5, 2, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (56, CAST(N'2019-07-08T18:21:42.000' AS DateTime), 5, 2, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (57, CAST(N'2019-01-28T08:59:40.000' AS DateTime), 6, 1, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (58, CAST(N'2019-04-27T12:25:55.000' AS DateTime), 51, 3, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (59, CAST(N'2019-07-10T18:30:53.000' AS DateTime), 53, 3, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (60, CAST(N'2019-09-01T17:04:05.000' AS DateTime), 56, 3, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (61, CAST(N'2019-11-14T08:58:07.000' AS DateTime), 57, 2, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (62, CAST(N'2019-08-05T16:55:35.000' AS DateTime), 57, 2, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (63, CAST(N'2019-08-06T14:12:26.000' AS DateTime), 59, 1, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (64, CAST(N'2019-11-22T08:16:05.000' AS DateTime), 60, 3, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (65, CAST(N'2019-01-17T09:33:19.000' AS DateTime), 61, 3, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (66, CAST(N'2019-08-22T09:42:19.000' AS DateTime), 61, 2, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (67, CAST(N'2019-12-30T13:56:10.000' AS DateTime), 62, 2, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (68, CAST(N'2019-03-24T18:10:35.000' AS DateTime), 63, 3, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (69, CAST(N'2019-08-01T10:57:01.000' AS DateTime), 63, 2, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (70, CAST(N'2019-09-10T18:21:47.000' AS DateTime), 63, 2, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (71, CAST(N'2019-08-20T18:45:14.000' AS DateTime), 64, 3, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (72, CAST(N'2019-05-10T17:25:12.000' AS DateTime), 67, 1, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (73, CAST(N'2019-02-04T15:49:55.000' AS DateTime), 68, 3, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (74, CAST(N'2019-03-10T12:31:48.000' AS DateTime), 68, 1, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (75, CAST(N'2019-01-15T10:32:43.000' AS DateTime), 69, 1, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (76, CAST(N'2019-07-27T12:18:45.000' AS DateTime), 70, 3, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (77, CAST(N'2019-11-21T15:51:29.000' AS DateTime), 70, 1, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (78, CAST(N'2019-02-14T16:30:00.000' AS DateTime), 73, 2, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (79, CAST(N'2019-11-05T16:15:00.000' AS DateTime), 73, 1, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (80, CAST(N'2019-11-10T16:56:48.000' AS DateTime), 74, 2, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (81, CAST(N'2019-04-24T17:19:15.000' AS DateTime), 76, 2, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (82, CAST(N'2019-06-08T10:47:18.000' AS DateTime), 78, 2, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (83, CAST(N'2019-12-24T10:08:28.000' AS DateTime), 78, 3, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (84, CAST(N'2019-06-30T15:04:55.000' AS DateTime), 80, 3, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (85, CAST(N'2019-08-04T19:12:39.000' AS DateTime), 81, 2, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (86, CAST(N'2019-07-29T09:29:15.000' AS DateTime), 82, 3, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (87, CAST(N'2019-11-02T18:18:45.000' AS DateTime), 87, 1, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (88, CAST(N'2019-09-20T08:56:22.000' AS DateTime), 87, 2, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (89, CAST(N'2019-11-06T09:34:14.000' AS DateTime), 91, 3, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (90, CAST(N'2019-02-19T08:36:15.000' AS DateTime), 91, 1, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (91, CAST(N'2019-07-03T17:37:12.000' AS DateTime), 91, 2, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (92, CAST(N'2019-08-31T10:27:10.000' AS DateTime), 92, 2, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (93, CAST(N'2019-08-10T12:30:44.000' AS DateTime), 92, 2, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (94, CAST(N'2019-02-22T15:07:25.000' AS DateTime), 93, 3, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (95, CAST(N'2019-01-17T18:25:51.000' AS DateTime), 93, 3, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (96, CAST(N'2019-12-25T09:20:39.000' AS DateTime), 95, 3, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (97, CAST(N'2019-01-24T16:39:39.000' AS DateTime), 98, 1, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (98, CAST(N'2019-07-18T08:43:03.000' AS DateTime), 99, 3, NULL)
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (99, CAST(N'2019-01-18T14:44:16.000' AS DateTime), 99, 2, NULL)
GO
INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (100, CAST(N'2019-07-21T08:46:28.000' AS DateTime), 99, 1, NULL)
SET IDENTITY_INSERT [dbo].[ProductSale] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserID], [Role], [Login], [Password], [Surname], [Name], [FatherName]) VALUES (1, 0, N'manager', N'123456', N'Иванов', N'Максим', NULL)
INSERT [dbo].[User] ([UserID], [Role], [Login], [Password], [Surname], [Name], [FatherName]) VALUES (2, 1, N'keeper', N'123456', N'Галкин', N'Данил', N'Дмитриевич')
SET IDENTITY_INSERT [dbo].[User] OFF
ALTER TABLE [dbo].[AttachedProduct]  WITH CHECK ADD  CONSTRAINT [FK_AttachedProduct_Product] FOREIGN KEY([MainProductID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[AttachedProduct] CHECK CONSTRAINT [FK_AttachedProduct_Product]
GO
ALTER TABLE [dbo].[AttachedProduct]  WITH CHECK ADD  CONSTRAINT [FK_AttachedProduct_Product1] FOREIGN KEY([AttachedProductID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[AttachedProduct] CHECK CONSTRAINT [FK_AttachedProduct_Product1]
GO
ALTER TABLE [dbo].[Client]  WITH CHECK ADD  CONSTRAINT [FK_Client_Gender] FOREIGN KEY([GenderCode])
REFERENCES [dbo].[Gender] ([Code])
GO
ALTER TABLE [dbo].[Client] CHECK CONSTRAINT [FK_Client_Gender]
GO
ALTER TABLE [dbo].[ClientService]  WITH CHECK ADD  CONSTRAINT [FK_ClientService_Client] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Client] ([ID])
GO
ALTER TABLE [dbo].[ClientService] CHECK CONSTRAINT [FK_ClientService_Client]
GO
ALTER TABLE [dbo].[ClientService]  WITH CHECK ADD  CONSTRAINT [FK_ClientService_Service] FOREIGN KEY([ServiceID])
REFERENCES [dbo].[Service] ([ID])
GO
ALTER TABLE [dbo].[ClientService] CHECK CONSTRAINT [FK_ClientService_Service]
GO
ALTER TABLE [dbo].[DocumentByService]  WITH CHECK ADD  CONSTRAINT [FK_DocumentByService_ClientService] FOREIGN KEY([ClientServiceID])
REFERENCES [dbo].[ClientService] ([ID])
GO
ALTER TABLE [dbo].[DocumentByService] CHECK CONSTRAINT [FK_DocumentByService_ClientService]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Manufacturer] FOREIGN KEY([ManufacturerID])
REFERENCES [dbo].[Manufacturer] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Manufacturer]
GO
ALTER TABLE [dbo].[ProductPhoto]  WITH CHECK ADD  CONSTRAINT [FK_ProductPhoto_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[ProductPhoto] CHECK CONSTRAINT [FK_ProductPhoto_Product]
GO
ALTER TABLE [dbo].[ProductSale]  WITH CHECK ADD  CONSTRAINT [FK_ProductSale_ClientService] FOREIGN KEY([ClientServiceID])
REFERENCES [dbo].[ClientService] ([ID])
GO
ALTER TABLE [dbo].[ProductSale] CHECK CONSTRAINT [FK_ProductSale_ClientService]
GO
ALTER TABLE [dbo].[ProductSale]  WITH CHECK ADD  CONSTRAINT [FK_ProductSale_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[ProductSale] CHECK CONSTRAINT [FK_ProductSale_Product]
GO
ALTER TABLE [dbo].[ServicePhoto]  WITH CHECK ADD  CONSTRAINT [FK_ServicePhoto_Service] FOREIGN KEY([ServiceID])
REFERENCES [dbo].[Service] ([ID])
GO
ALTER TABLE [dbo].[ServicePhoto] CHECK CONSTRAINT [FK_ServicePhoto_Service]
GO
ALTER TABLE [dbo].[TagOfClient]  WITH CHECK ADD  CONSTRAINT [FK_TagOfClient_Client] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Client] ([ID])
GO
ALTER TABLE [dbo].[TagOfClient] CHECK CONSTRAINT [FK_TagOfClient_Client]
GO
ALTER TABLE [dbo].[TagOfClient]  WITH CHECK ADD  CONSTRAINT [FK_TagOfClient_Tag] FOREIGN KEY([TagID])
REFERENCES [dbo].[Tag] ([ID])
GO
ALTER TABLE [dbo].[TagOfClient] CHECK CONSTRAINT [FK_TagOfClient_Tag]
GO
