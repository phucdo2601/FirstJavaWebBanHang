USE [master]
GO
/****** Object:  Database [JavaWeFptAsmBanHangTet]    Script Date: 6/10/2021 8:18:34 PM ******/
CREATE DATABASE [JavaWeFptAsmBanHangTet]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'JavaWeFptAsmBanHangTet', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\JavaWeFptAsmBanHangTet.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'JavaWeFptAsmBanHangTet_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\JavaWeFptAsmBanHangTet_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [JavaWeFptAsmBanHangTet] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [JavaWeFptAsmBanHangTet].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [JavaWeFptAsmBanHangTet] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [JavaWeFptAsmBanHangTet] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [JavaWeFptAsmBanHangTet] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [JavaWeFptAsmBanHangTet] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [JavaWeFptAsmBanHangTet] SET ARITHABORT OFF 
GO
ALTER DATABASE [JavaWeFptAsmBanHangTet] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [JavaWeFptAsmBanHangTet] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [JavaWeFptAsmBanHangTet] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [JavaWeFptAsmBanHangTet] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [JavaWeFptAsmBanHangTet] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [JavaWeFptAsmBanHangTet] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [JavaWeFptAsmBanHangTet] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [JavaWeFptAsmBanHangTet] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [JavaWeFptAsmBanHangTet] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [JavaWeFptAsmBanHangTet] SET  DISABLE_BROKER 
GO
ALTER DATABASE [JavaWeFptAsmBanHangTet] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [JavaWeFptAsmBanHangTet] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [JavaWeFptAsmBanHangTet] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [JavaWeFptAsmBanHangTet] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [JavaWeFptAsmBanHangTet] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [JavaWeFptAsmBanHangTet] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [JavaWeFptAsmBanHangTet] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [JavaWeFptAsmBanHangTet] SET RECOVERY FULL 
GO
ALTER DATABASE [JavaWeFptAsmBanHangTet] SET  MULTI_USER 
GO
ALTER DATABASE [JavaWeFptAsmBanHangTet] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [JavaWeFptAsmBanHangTet] SET DB_CHAINING OFF 
GO
ALTER DATABASE [JavaWeFptAsmBanHangTet] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [JavaWeFptAsmBanHangTet] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [JavaWeFptAsmBanHangTet] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [JavaWeFptAsmBanHangTet] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [JavaWeFptAsmBanHangTet] SET QUERY_STORE = OFF
GO
USE [JavaWeFptAsmBanHangTet]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 6/10/2021 8:18:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[username] [varchar](200) NOT NULL,
	[password] [varchar](200) NULL,
	[fullname] [nvarchar](200) NULL,
	[address] [nvarchar](200) NULL,
	[phone] [varchar](200) NULL,
	[email] [varchar](200) NULL,
	[roleID] [nvarchar](200) NULL,
	[dateOfPost] [datetime] NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 6/10/2021 8:18:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[categoryID] [varchar](200) NOT NULL,
	[categoryName] [nvarchar](200) NULL,
	[description] [nvarchar](max) NULL,
	[dateOfPost] [datetime] NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[categoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 6/10/2021 8:18:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[orderID] [nvarchar](200) NOT NULL,
	[username] [varchar](200) NULL,
	[customerName] [nvarchar](200) NULL,
	[addressSending] [nvarchar](500) NULL,
	[phoneNumber] [varchar](50) NULL,
	[totalPrice] [float] NULL,
	[dateOfBooking] [datetime] NULL,
	[payment] [varchar](250) NULL,
	[waiting] [bit] NULL,
	[finishing] [bit] NULL,
	[dateOfFinishing] [datetime] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[orderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 6/10/2021 8:18:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[orderDetailID] [nvarchar](300) NOT NULL,
	[orderID] [nvarchar](200) NOT NULL,
	[productID] [varchar](250) NOT NULL,
	[productName] [nvarchar](300) NULL,
	[quantity] [int] NULL,
	[price] [float] NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[orderDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 6/10/2021 8:18:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[productID] [varchar](250) NOT NULL,
	[categoryID] [varchar](200) NULL,
	[productName] [nvarchar](300) NULL,
	[image] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[price] [float] NULL,
	[unit] [nvarchar](max) NULL,
	[quantity] [int] NULL,
	[sale] [int] NULL,
	[dateOfPost] [datetime] NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[productID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Account] ([username], [password], [fullname], [address], [phone], [email], [roleID], [dateOfPost], [status]) VALUES (N'admin', N'1', NULL, NULL, NULL, NULL, N'admin', NULL, 1)
INSERT [dbo].[Account] ([username], [password], [fullname], [address], [phone], [email], [roleID], [dateOfPost], [status]) VALUES (N'dungtran0408', N'A@1234', N'Tran Thi Thuy Dung', N'Hồ Chí Minh', N'099789979674', N'dungtran@gmail.com', N'user', NULL, 1)
INSERT [dbo].[Account] ([username], [password], [fullname], [address], [phone], [email], [roleID], [dateOfPost], [status]) VALUES (N'duongpham01', N'A@1234', N'Pham Binh Duong', N'Bắc Ninh', N'0890789797', N'binhduong@gmail.com', N'user', NULL, 1)
INSERT [dbo].[Account] ([username], [password], [fullname], [address], [phone], [email], [roleID], [dateOfPost], [status]) VALUES (N'duongpham2502', N'DuongAS', N'Pham Van Duong', N'Nam Dinh', NULL, N'duongpham2502@gmail.com', N'user', NULL, 1)
INSERT [dbo].[Account] ([username], [password], [fullname], [address], [phone], [email], [roleID], [dateOfPost], [status]) VALUES (N'lantran1506', N'123$RT', N'Tran Thanh Lan', N'Cu Chi', NULL, N'lantran1506', N'user', NULL, 1)
INSERT [dbo].[Account] ([username], [password], [fullname], [address], [phone], [email], [roleID], [dateOfPost], [status]) VALUES (N'liemnguyen1504', N'Liem@123', N'Nguyen Thanh Liem', N'Tien Giang', N'6465765867', N'liemNguyen2504@gmail.com', N'user', NULL, 1)
INSERT [dbo].[Account] ([username], [password], [fullname], [address], [phone], [email], [roleID], [dateOfPost], [status]) VALUES (N'longpham123', N'A@123', N'Pham Thanh Long', N'Bien Hoa', NULL, N'longpham123@gmail.com', N'user', NULL, 1)
INSERT [dbo].[Account] ([username], [password], [fullname], [address], [phone], [email], [roleID], [dateOfPost], [status]) VALUES (N'namthanh0403', NULL, N'Do Ngoc Khang', N'HA Noi', NULL, N'khangdo2506@gmail.com', N'user', NULL, 1)
INSERT [dbo].[Account] ([username], [password], [fullname], [address], [phone], [email], [roleID], [dateOfPost], [status]) VALUES (N'ngapham2702', N'Nga$1234', N'Pham Yen Nga ', N'Tay ninh', N'5346456564', N'ngapham2702@gmail.com', N'user', NULL, 1)
INSERT [dbo].[Account] ([username], [password], [fullname], [address], [phone], [email], [roleID], [dateOfPost], [status]) VALUES (N'phucdo2601', N'LongKH', N'Do Ngoc Phuc', N'Binh Thanh, Ho Chi Minh', NULL, N'phucdo2601@gmail.com', N'user', NULL, 1)
INSERT [dbo].[Account] ([username], [password], [fullname], [address], [phone], [email], [roleID], [dateOfPost], [status]) VALUES (N'thailai1234', N'A@1234', N'Lai Nguyen Quoc Thai', N'', N'', N'', N'user', CAST(N'2021-02-19T08:04:05.597' AS DateTime), 1)
INSERT [dbo].[Account] ([username], [password], [fullname], [address], [phone], [email], [roleID], [dateOfPost], [status]) VALUES (N'thiennguyen2707', N'A@1234', N'Nguyen Duc Thien', N'', N'', N'', N'user', CAST(N'2021-03-09T18:29:13.347' AS DateTime), 1)
INSERT [dbo].[Account] ([username], [password], [fullname], [address], [phone], [email], [roleID], [dateOfPost], [status]) VALUES (N'thinhnguyen2304', N'%^123Aer', N'Nguyen Phu Thinh ', N'Rach Gia', N'5346455475', N'thinhnguyen2604@gmail.com', N'user', NULL, 0)
GO
INSERT [dbo].[Category] ([categoryID], [categoryName], [description], [dateOfPost], [status]) VALUES (N'st01', N'bánh đóng hộp', N'Bánh Nhập Khẩu', CAST(N'2020-05-31T22:09:37.480' AS DateTime), 1)
INSERT [dbo].[Category] ([categoryID], [categoryName], [description], [dateOfPost], [status]) VALUES (N'st02', N'keo', N'keo nk', CAST(N'2020-05-30T22:09:37.480' AS DateTime), 1)
INSERT [dbo].[Category] ([categoryID], [categoryName], [description], [dateOfPost], [status]) VALUES (N'st03', N'mut', N'cac loai mut', CAST(N'2020-05-29T22:09:37.480' AS DateTime), 1)
INSERT [dbo].[Category] ([categoryID], [categoryName], [description], [dateOfPost], [status]) VALUES (N'st04', N'thuc uong khong con', N'thuc uong co hai cho suc khoe', CAST(N'2020-05-28T22:09:37.480' AS DateTime), 1)
INSERT [dbo].[Category] ([categoryID], [categoryName], [description], [dateOfPost], [status]) VALUES (N'st05', N'thuc uong co con', NULL, CAST(N'2020-05-27T22:09:37.480' AS DateTime), 1)
INSERT [dbo].[Category] ([categoryID], [categoryName], [description], [dateOfPost], [status]) VALUES (N'st06', N'luong thuc chinh', NULL, CAST(N'2020-05-26T22:09:37.480' AS DateTime), 1)
INSERT [dbo].[Category] ([categoryID], [categoryName], [description], [dateOfPost], [status]) VALUES (N'st07', N'thuc pham che bien ', N'cac loai thuc an dac trung ngay tet', CAST(N'2020-05-25T22:09:37.480' AS DateTime), 1)
INSERT [dbo].[Category] ([categoryID], [categoryName], [description], [dateOfPost], [status]) VALUES (N'st08', N'thuc am dinh duong', N'hang noi dia nhat', CAST(N'2020-05-24T22:09:37.480' AS DateTime), 1)
INSERT [dbo].[Category] ([categoryID], [categoryName], [description], [dateOfPost], [status]) VALUES (N'st09', N'Hat say', N'san pham co date ngn han', CAST(N'2020-05-23T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[Order] ([orderID], [username], [customerName], [addressSending], [phoneNumber], [totalPrice], [dateOfBooking], [payment], [waiting], [finishing], [dateOfFinishing]) VALUES (N'1615386902223', N'duongpham01', N'Pham Van Duong', N'Go vap, Ho Chi Minh', NULL, 3520000, CAST(N'2021-03-10T21:35:02.223' AS DateTime), N'cash', 0, 1, CAST(N'2021-03-10T21:35:06.257' AS DateTime))
INSERT [dbo].[Order] ([orderID], [username], [customerName], [addressSending], [phoneNumber], [totalPrice], [dateOfBooking], [payment], [waiting], [finishing], [dateOfFinishing]) VALUES (N'1615463038502', N'dungtran0408', N'Tran Thi Thuy Dung', N'Binh Thanh, Ho Chi Minh', NULL, 1060000, CAST(N'2021-03-11T18:43:58.503' AS DateTime), N'cash', 0, 1, CAST(N'2021-03-11T18:44:03.823' AS DateTime))
INSERT [dbo].[Order] ([orderID], [username], [customerName], [addressSending], [phoneNumber], [totalPrice], [dateOfBooking], [payment], [waiting], [finishing], [dateOfFinishing]) VALUES (N'1615855080566', N'duongpham01', N'Pham Van Duong', N'Tan Binh, Ho Chi Minh', NULL, 630000, CAST(N'2021-03-16T07:38:00.567' AS DateTime), N'cash', 0, 1, CAST(N'2021-03-16T08:09:14.263' AS DateTime))
INSERT [dbo].[Order] ([orderID], [username], [customerName], [addressSending], [phoneNumber], [totalPrice], [dateOfBooking], [payment], [waiting], [finishing], [dateOfFinishing]) VALUES (N'1615856921255', N'duongpham01', N'Pham Van Duong', N'Binh Thanh, Ho Chi Minh', NULL, 900000, CAST(N'2021-03-16T08:08:41.257' AS DateTime), N'cash', 0, 0, CAST(N'2021-03-16T08:09:20.307' AS DateTime))
INSERT [dbo].[Order] ([orderID], [username], [customerName], [addressSending], [phoneNumber], [totalPrice], [dateOfBooking], [payment], [waiting], [finishing], [dateOfFinishing]) VALUES (N'1615957443673', N'dungtran0408', N'Tran Thi Thuy Dung', N'Binh Thanh, Ho Chi Minh', NULL, 1080000, CAST(N'2021-03-17T12:04:03.673' AS DateTime), N'cash', 0, 1, CAST(N'2021-03-17T12:04:09.653' AS DateTime))
INSERT [dbo].[Order] ([orderID], [username], [customerName], [addressSending], [phoneNumber], [totalPrice], [dateOfBooking], [payment], [waiting], [finishing], [dateOfFinishing]) VALUES (N'1615964983787', N'dungtran0408', N'Tran Thi Thuy Dung', N'Binh Thanh, Ho Chi Minh', NULL, 540000, CAST(N'2021-03-17T14:09:43.787' AS DateTime), N'cash', 0, 0, CAST(N'2021-03-17T14:09:51.277' AS DateTime))
INSERT [dbo].[Order] ([orderID], [username], [customerName], [addressSending], [phoneNumber], [totalPrice], [dateOfBooking], [payment], [waiting], [finishing], [dateOfFinishing]) VALUES (N'1615966796856', N'duongpham01', N'Pham Van Duong', N'Tan Binh, Ho Chi Minh', NULL, 15730000, CAST(N'2021-03-17T14:39:56.857' AS DateTime), N'cash', 0, 1, CAST(N'2021-03-17T14:41:37.037' AS DateTime))
INSERT [dbo].[Order] ([orderID], [username], [customerName], [addressSending], [phoneNumber], [totalPrice], [dateOfBooking], [payment], [waiting], [finishing], [dateOfFinishing]) VALUES (N'1615972696932', N'duongpham01', N'Pham Van Duong', N'Tan Binh, Ho Chi Minh', NULL, 955000, CAST(N'2021-03-17T16:18:16.933' AS DateTime), N'cash', 0, 0, CAST(N'2021-03-17T16:18:27.750' AS DateTime))
INSERT [dbo].[Order] ([orderID], [username], [customerName], [addressSending], [phoneNumber], [totalPrice], [dateOfBooking], [payment], [waiting], [finishing], [dateOfFinishing]) VALUES (N'1615972791327', N'dungtran0408', N'Tran Thi Thuy Dung', N'Go vap, Ho Chi Minh', NULL, 295000, CAST(N'2021-03-17T16:19:51.327' AS DateTime), N'cash', 0, 0, CAST(N'2021-03-17T16:19:58.780' AS DateTime))
INSERT [dbo].[Order] ([orderID], [username], [customerName], [addressSending], [phoneNumber], [totalPrice], [dateOfBooking], [payment], [waiting], [finishing], [dateOfFinishing]) VALUES (N'1615979725237', N'ngapham2702', N'Pham Hang Nga', N'Quan 1, Ho Chi Minh', NULL, 1265000, CAST(N'2021-03-17T18:15:25.237' AS DateTime), N'cash', 0, 1, CAST(N'2021-03-17T18:15:31.180' AS DateTime))
INSERT [dbo].[Order] ([orderID], [username], [customerName], [addressSending], [phoneNumber], [totalPrice], [dateOfBooking], [payment], [waiting], [finishing], [dateOfFinishing]) VALUES (N'1615979773845', N'ngapham2702', N'Tran Van Hung', N'Quan 1, Ho Chi Minh', NULL, 640000, CAST(N'2021-03-17T18:16:13.847' AS DateTime), N'card', 0, 0, CAST(N'2021-03-17T18:16:21.057' AS DateTime))
INSERT [dbo].[Order] ([orderID], [username], [customerName], [addressSending], [phoneNumber], [totalPrice], [dateOfBooking], [payment], [waiting], [finishing], [dateOfFinishing]) VALUES (N'1615980408839', N'duongpham01', N'Pham Van Duong', N'Go vap, Ho Chi Minh', NULL, 875000, CAST(N'2021-03-17T18:26:48.840' AS DateTime), N'cash', 0, 0, CAST(N'2021-03-17T18:27:03.473' AS DateTime))
INSERT [dbo].[Order] ([orderID], [username], [customerName], [addressSending], [phoneNumber], [totalPrice], [dateOfBooking], [payment], [waiting], [finishing], [dateOfFinishing]) VALUES (N'1615996497068', N'duongpham01', N'Pham Van Duong', N'Go vap, Ho Chi Minh', NULL, 1415000, CAST(N'2021-03-17T22:54:57.067' AS DateTime), N'cash', 0, 1, CAST(N'2021-03-17T22:55:02.537' AS DateTime))
INSERT [dbo].[Order] ([orderID], [username], [customerName], [addressSending], [phoneNumber], [totalPrice], [dateOfBooking], [payment], [waiting], [finishing], [dateOfFinishing]) VALUES (N'1615998278767', N'duongpham01', N'Pham Van Duong', N'Go vap, Ho Chi Minh', N'45345', 700000, CAST(N'2021-03-17T23:24:38.767' AS DateTime), N'cash', 0, 0, CAST(N'2021-03-17T23:29:51.547' AS DateTime))
INSERT [dbo].[Order] ([orderID], [username], [customerName], [addressSending], [phoneNumber], [totalPrice], [dateOfBooking], [payment], [waiting], [finishing], [dateOfFinishing]) VALUES (N'1615999274732', N'duongpham01', N'Nguyen Ngoc Tinh', N'Go vap, Ho Chi Minh', N'453453', 1690000, CAST(N'2021-03-17T23:41:14.733' AS DateTime), N'cash', 0, 1, CAST(N'2021-03-17T23:41:19.727' AS DateTime))
INSERT [dbo].[Order] ([orderID], [username], [customerName], [addressSending], [phoneNumber], [totalPrice], [dateOfBooking], [payment], [waiting], [finishing], [dateOfFinishing]) VALUES (N'1616000084071', N'duongpham01', N'Pham Van Duong', N'Go vap, Ho Chi Minh', N'453453', 1090000, CAST(N'2021-03-17T23:54:44.070' AS DateTime), N'cash', 0, 1, CAST(N'2021-03-17T23:54:48.137' AS DateTime))
INSERT [dbo].[Order] ([orderID], [username], [customerName], [addressSending], [phoneNumber], [totalPrice], [dateOfBooking], [payment], [waiting], [finishing], [dateOfFinishing]) VALUES (N'1616001468239', N'duongpham01', N'Pham Van Duong', N'Tan Binh, Ho Chi Minh', N'453453', 300000, CAST(N'2021-03-18T00:17:48.240' AS DateTime), N'cash', 0, 1, CAST(N'2021-03-18T00:17:52.783' AS DateTime))
INSERT [dbo].[Order] ([orderID], [username], [customerName], [addressSending], [phoneNumber], [totalPrice], [dateOfBooking], [payment], [waiting], [finishing], [dateOfFinishing]) VALUES (N'1616065310691', N'phucdo2601', N'Do Ngoc Phuc', N'Binh Thanh, Ho Chi Minh', N'0987215804', 7170000, CAST(N'2021-03-18T18:01:50.690' AS DateTime), N'cash', 0, 1, CAST(N'2021-03-18T18:01:54.873' AS DateTime))
INSERT [dbo].[Order] ([orderID], [username], [customerName], [addressSending], [phoneNumber], [totalPrice], [dateOfBooking], [payment], [waiting], [finishing], [dateOfFinishing]) VALUES (N'1616065889122', N'liemnguyen1504', N'Nguyen Thanh Liem', N'Quan 9, Ho Chi Minh', N'0978780788', 1480000, CAST(N'2021-03-18T18:11:29.123' AS DateTime), N'cash', 0, 1, CAST(N'2021-03-18T18:11:42.067' AS DateTime))
INSERT [dbo].[Order] ([orderID], [username], [customerName], [addressSending], [phoneNumber], [totalPrice], [dateOfBooking], [payment], [waiting], [finishing], [dateOfFinishing]) VALUES (N'1616074501868', N'lantran1506', N'Tran Thi Lan', N'Quan 12, Thanh Pho Ho Chi Minh', N'09007967643', 7750000, CAST(N'2021-03-18T20:35:01.867' AS DateTime), N'card', 0, 1, CAST(N'2021-03-18T20:35:05.577' AS DateTime))
INSERT [dbo].[Order] ([orderID], [username], [customerName], [addressSending], [phoneNumber], [totalPrice], [dateOfBooking], [payment], [waiting], [finishing], [dateOfFinishing]) VALUES (N'1616074544545', N'lantran1506', N'Tran Thi Lan', N'Go vap, Ho Chi Minh', N'453453', 960000, CAST(N'2021-03-18T20:35:44.547' AS DateTime), N'cash', 0, 0, CAST(N'2021-03-18T20:35:48.743' AS DateTime))
INSERT [dbo].[Order] ([orderID], [username], [customerName], [addressSending], [phoneNumber], [totalPrice], [dateOfBooking], [payment], [waiting], [finishing], [dateOfFinishing]) VALUES (N'1616126584066', N'duongpham01', N'Pham Van Duong', N'Go vap, Ho Chi Minh', N'453453', 1850000, CAST(N'2021-03-19T11:03:04.067' AS DateTime), N'cash', 0, 1, CAST(N'2021-03-19T11:03:16.427' AS DateTime))
INSERT [dbo].[Order] ([orderID], [username], [customerName], [addressSending], [phoneNumber], [totalPrice], [dateOfBooking], [payment], [waiting], [finishing], [dateOfFinishing]) VALUES (N'1616389769204', N'duongpham01', N'Pham Van Duong', N'Go vap, Ho Chi Minh', N'453453', 1300000, CAST(N'2021-03-22T12:09:29.203' AS DateTime), N'cash', 0, 1, CAST(N'2021-03-22T12:09:51.533' AS DateTime))
INSERT [dbo].[Order] ([orderID], [username], [customerName], [addressSending], [phoneNumber], [totalPrice], [dateOfBooking], [payment], [waiting], [finishing], [dateOfFinishing]) VALUES (N'1621177712873', N'duongpham01', N'Pham Van Duong', N'dgdsgfdgdf', NULL, 850000, CAST(N'2021-05-16T22:08:32.873' AS DateTime), N'card', 0, 1, CAST(N'2021-05-16T22:08:38.037' AS DateTime))
INSERT [dbo].[Order] ([orderID], [username], [customerName], [addressSending], [phoneNumber], [totalPrice], [dateOfBooking], [payment], [waiting], [finishing], [dateOfFinishing]) VALUES (N'1621323453766', N'duongpham01', N'Do Ngoc Phuc', N'72C/6 Dinh Tien Hoang, P.Đa Kao', N'0987215804', 450000, CAST(N'2021-05-18T14:37:33.767' AS DateTime), N'card', 0, 1, CAST(N'2021-05-18T14:37:37.927' AS DateTime))
INSERT [dbo].[Order] ([orderID], [username], [customerName], [addressSending], [phoneNumber], [totalPrice], [dateOfBooking], [payment], [waiting], [finishing], [dateOfFinishing]) VALUES (N'1622304568394', N'duongpham01', N'Do Ngoc Phuc', N'72C/6 Dinh Tien Hoang, P.Đa Kao', N'0987215804', 1250000, CAST(N'2021-05-29T23:09:28.393' AS DateTime), N'card', 0, 1, CAST(N'2021-05-29T23:09:35.313' AS DateTime))
GO
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP100000011158185827', N'1616065889122', N'SP10000001', N'Bánh Danisa NK Loai 1', 1, 450000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP100000011166798575', N'1616074501868', N'SP10000001', N'Bánh Danisa NK Loai 1', 1, 450000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP10000001-1193069492', N'1622304568394', N'SP10000001', N'Bánh Danisa NK Loai 1', 1, 450000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP100000011482065910', N'1616389769204', N'SP10000001', N'Bánh Danisa NK Loai 1', 1, 450000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP10000001479198929', N'1615386902223', N'SP10000001', N'Bánh Danisa NK Loai 1', 1, 450000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP100000021072070550', N'1615979773845', N'SP10000002', N'Bánh Oreo NK', 1, 400000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP100000021090575472', N'1615998278767', N'SP10000002', N'Bánh Oreo NK', 1, 400000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP100000021166798574', N'1616074501868', N'SP10000002', N'Bánh Oreo NK', 10, 400000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP100000021166841250', N'1616074544545', N'SP10000002', N'Bánh Oreo NK', 1, 400000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP10000002-1193069493', N'1622304568394', N'SP10000002', N'Bánh Oreo NK', 2, 400000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP100000021482065909', N'1616389769204', N'SP10000002', N'Bánh Oreo NK', 1, 400000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP10000002555335209', N'1615463038502', N'SP10000002', N'Bánh Oreo NK', 1, 400000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP100000031049740378', N'1615957443673', N'SP10000003', N'Banh Socola hon hop Roca', 1, 600000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP100000031072021943', N'1615979725237', N'SP10000003', N'Banh Socola hon hop Roca', 1, 600000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP100000031091571437', N'1615999274732', N'SP10000003', N'Banh Socola hon hop Roca', 1, 600000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP10000003949217961', N'1615856921255', N'SP10000003', N'Banh Socola hon hop Roca', 1, 600000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP100000041057280494', N'1615964983787', N'SP10000004', N'Socola Almondrush', 1, 150000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP100000041059093563', N'1615966796856', N'SP10000004', N'Socola Almondrush', 1, 150000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP100000041064993639', N'1615972696932', N'SP10000004', N'Socola Almondrush', 1, 150000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP100000041065088034', N'1615972791327', N'SP10000004', N'Socola Almondrush', 1, 150000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP100000041157607400', N'1616065310691', N'SP10000004', N'Socola Almondrush', 10, 150000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP100000041166841252', N'1616074544545', N'SP10000004', N'Socola Almondrush', 1, 150000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP100000042120783175', N'1621323453766', N'SP10000004', N'Socola Almondrush', 1, 150000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP100000051059093564', N'1615966796856', N'SP10000005', N'Socola M&M America', 10, 450000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP100000051064993640', N'1615972696932', N'SP10000005', N'Socola M&M America', 1, 450000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP100000051088793775', N'1615996497068', N'SP10000005', N'Socola M&M America', 1, 450000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP100000051482065911', N'1616389769204', N'SP10000005', N'Socola M&M America', 1, 450000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP10000005479198932', N'1615386902223', N'SP10000005', N'Socola M&M America', 1, 450000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP10000005947377271', N'1615855080566', N'SP10000005', N'Socola M&M America', 1, 450000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP100000061157607398', N'1616065310691', N'SP10000006', N'Socola Hershey', 1, 180000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP100000061158185829', N'1616065889122', N'SP10000006', N'Socola Hershey', 1, 180000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP10000006555335210', N'1615463038502', N'SP10000006', N'Socola Hershey', 1, 180000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP100000071059093562', N'1615966796856', N'SP10000007', N'Anthon Berg', 10, 790000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP100000071091571438', N'1615999274732', N'SP10000007', N'Anthon Berg', 1, 790000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP100000071092380776', N'1616000084071', N'SP10000007', N'Anthon Berg', 1, 790000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP100000071158185830', N'1616065889122', N'SP10000007', N'Anthon Berg', 1, 790000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP10000007479198931', N'1615386902223', N'SP10000007', N'Anthon Berg', 1, 790000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP100000081049740379', N'1615957443673', N'SP10000008', N'Cafe Nestle Coffee Mate Original 1kg', 1, 300000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP100000081166798576', N'1616074501868', N'SP10000008', N'Cafe Nestle Coffee Mate Original 1kg', 1, 300000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP100000082120783176', N'1621323453766', N'SP10000008', N'Cafe Nestle Coffee Mate Original 1kg', 1, 300000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP10000008479198933', N'1615386902223', N'SP10000008', N'Cafe Nestle Coffee Mate Original 1kg', 1, 300000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP100000091049740380', N'1615957443673', N'SP10000009', N'Hạt Hạnh Nhân Sấy ', 1, 180000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP100000091059093565', N'1615966796856', N'SP10000009', N'Hạt Hạnh Nhân Sấy ', 1, 180000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP100000091166841253', N'1616074544545', N'SP10000009', N'Hạt Hạnh Nhân Sấy ', 1, 180000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP10000009479198934', N'1615386902223', N'SP10000009', N'Hạt Hạnh Nhân Sấy ', 1, 180000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP10000009947377272', N'1615855080566', N'SP10000009', N'Hạt Hạnh Nhân Sấy ', 1, 180000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP100000101057280492', N'1615964983787', N'SP10000010', N'BÁNH GRAN PANETTONE MADI 1KG', 1, 300000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP100000101059093561', N'1615966796856', N'SP10000010', N'BÁNH GRAN PANETTONE MADI 1KG', 10, 300000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP100000101064993637', N'1615972696932', N'SP10000010', N'BÁNH GRAN PANETTONE MADI 1KG', 1, 300000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP100000101166798573', N'1616074501868', N'SP10000010', N'BÁNH GRAN PANETTONE MADI 1KG', 10, 300000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP10000010479198928', N'1615386902223', N'SP10000010', N'BÁNH GRAN PANETTONE MADI 1KG', 1, 300000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP10000010555335207', N'1615463038502', N'SP10000010', N'BÁNH GRAN PANETTONE MADI 1KG', 1, 300000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP10000010949217960', N'1615856921255', N'SP10000010', N'BÁNH GRAN PANETTONE MADI 1KG', 1, 300000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP100000121157607397', N'1616065310691', N'SP10000012', N'Jules Destrooper - Butter Waffles ', 10, 500000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP100000151072021946', N'1615979725237', N'SP10000015', N'Bánh Banana Charlteok pie Queen Bin 310g', 1, 65000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP100000161088793776', N'1615996497068', N'SP10000016', N'Bánh Choco Charlteok pie Queen Bin Hàn Quốc 310g', 1, 65000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP100000181072705547', N'1615980408839', N'SP10000018', N'Belgian Chocolate', 1, 400000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP100000221072021945', N'1615979725237', N'SP10000022', N'Mc Vitie''s', 1, 120000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP100000251166841251', N'1616074544545', N'SP10000025', N'Bia sứ St. Paul Triple 7,6% Bỉ – chai 500ml', 1, 230000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP100000261072070551', N'1615979773845', N'SP10000026', N'Bia Chimay xanh 9% Bỉ – chai 330ml', 1, 70000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP10000028479198930', N'1615386902223', N'SP10000028', N'Bia Oranjeboom Premium Strong 18% Hà Lan – 24 lon 500ml', 1, 1050000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP100000361157607396', N'1616065310691', N'SP10000036', N'DẦU RÁN OLIVE NGUYÊN CHẤT HANOLI 1000ML', 1, 190000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP100000381072070552', N'1615979773845', N'SP10000038', N'KHÔ BÒ MỸ JACK LINK''S 92G', 1, 170000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP100000391158185828', N'1616065889122', N'SP10000039', N'PATE GAN HEO 32% HENAFF 130G', 1, 60000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP100000421072705544', N'1615980408839', N'SP10000042', N' COCKTAIL LYCHEE IN SYRUP A CHOICE 565G', 1, 85000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP10000043555335208', N'1615463038502', N'SP10000043', N'Cocktail đóng hộp', 1, 180000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP100000461057280493', N'1615964983787', N'SP10000046', N'bamhquy', 1, 90000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP100000461065088032', N'1615972791327', N'SP10000046', N'bamhquy', 1, 90000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP100000461072021942', N'1615979725237', N'SP10000046', N'bamhquy', 2, 90000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP100000461072705545', N'1615980408839', N'SP10000046', N'bamhquy', 1, 90000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP100000471064993638', N'1615972696932', N'SP10000047', N'Bánh LU', 1, 55000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP100000471065088033', N'1615972791327', N'SP10000047', N'Bánh LU', 1, 55000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP100000471072021944', N'1615979725237', N'SP10000047', N'Bánh LU', 1, 300000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP100000471072705546', N'1615980408839', N'SP10000047', N'Bánh LU', 1, 300000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP100000471088793773', N'1615996497068', N'SP10000047', N'Bánh LU', 1, 300000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP100000481088793774', N'1615996497068', N'SP10000048', N'yến mạch oats', 2, 300000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP100000481090575473', N'1615998278767', N'SP10000048', N'yến mạch oats', 1, 300000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP100000481091571439', N'1615999274732', N'SP10000048', N'yến mạch oats', 1, 300000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP100000481092380777', N'1616000084071', N'SP10000048', N'yến mạch oats', 1, 300000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP100000481093764944', N'1616001468239', N'SP10000048', N'yến mạch oats', 1, 300000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKSP100000481157607399', N'1616065310691', N'SP10000048', N'yến mạch oats', 1, 300000)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [productID], [productName], [quantity], [price]) VALUES (N'STKtestProduct1218880771', N'1616126584066', N'testProduct', N'ten_san_pham_test', 10, 185000)
GO
INSERT [dbo].[Product] ([productID], [categoryID], [productName], [image], [description], [price], [unit], [quantity], [sale], [dateOfPost], [status]) VALUES (N'SP10000001', N'st09', N'Bánh Danisa NK Loai 1', N'https://i2.wp.com/banhkeogiare.com/wp-content/uploads/2019/10/3-5.jpg', N'Bánh Nhập Khẩu', 450000, N'Hộp', 1872, 0, CAST(N'2021-02-05T22:09:37.480' AS DateTime), 0)
INSERT [dbo].[Product] ([productID], [categoryID], [productName], [image], [description], [price], [unit], [quantity], [sale], [dateOfPost], [status]) VALUES (N'SP10000002', N'st01', N'Bánh Oreo NK', N'https://ptaste.vn/wp-content/uploads/2019/12/banh-oreo-nhan-vani.jpg', N'Bánh Nhập Khẩu', 400000, N'Hop', 1964, 0, CAST(N'2021-02-04T22:09:37.480' AS DateTime), 1)
INSERT [dbo].[Product] ([productID], [categoryID], [productName], [image], [description], [price], [unit], [quantity], [sale], [dateOfPost], [status]) VALUES (N'SP10000003', N'st01', N'Banh Socola hon hop Roca', N'https://www.vitaminhouse.vn/data/ck/images/Top%205%20lo%E1%BA%A1i%20b%C3%A1nh%20k%E1%BA%B9o%20nh%E1%BA%ADp%20kh%E1%BA%A9u%20t%E1%BB%AB%20M%E1%BB%B9%20%C4%91ang%20c%E1%BB%B1c%20hot%20-%203.png', N'Banh Nhap Khau', 600000, N'Thanh', 2994, 0, CAST(N'2021-02-03T22:09:37.480' AS DateTime), 1)
INSERT [dbo].[Product] ([productID], [categoryID], [productName], [image], [description], [price], [unit], [quantity], [sale], [dateOfPost], [status]) VALUES (N'SP10000004', N'st02', N'Socola Almondrush', N'https://salt.tikicdn.com/cache/w1200/ts/product/dc/f7/30/0f7ac28ee69af23ec5e5aa21cb33ba22.jpg', N'Keo Nhap Khau', 150000, N'Thanh', 4966, 12, CAST(N'2021-02-02T22:09:37.480' AS DateTime), 1)
INSERT [dbo].[Product] ([productID], [categoryID], [productName], [image], [description], [price], [unit], [quantity], [sale], [dateOfPost], [status]) VALUES (N'SP10000005', N'st02', N'Socola M&M America', N'https://bachhoacc.com/wp-content/uploads/2020/03/socola-nhan-dau-phong-m-m-my-2.jpg', N'Keo Nhap Khau', 450000, N'Hop', 5975, 0, CAST(N'2021-02-01T22:09:37.480' AS DateTime), 1)
INSERT [dbo].[Product] ([productID], [categoryID], [productName], [image], [description], [price], [unit], [quantity], [sale], [dateOfPost], [status]) VALUES (N'SP10000006', N'st02', N'Socola Hershey', N'https://www.hangngoainhap.com.vn/images/201812/goods_img/1048-p2-1545302282.jpg', N'Keo Nhap Khau', 180000, N'Goi', 4994, 0, CAST(N'2021-01-31T22:09:37.480' AS DateTime), 1)
INSERT [dbo].[Product] ([productID], [categoryID], [productName], [image], [description], [price], [unit], [quantity], [sale], [dateOfPost], [status]) VALUES (N'SP10000007', N'st02', N'Anthon Berg', N'https://ruouthuonghieu.com/wp-content/uploads/2018/12/B%C3%A1nh-K%E1%BA%B9o-T%E1%BA%BFt-2020_5.jpg', N'Keo Nhap Khau', 790000, N'Hop ', 5974, 0, CAST(N'2020-12-20T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([productID], [categoryID], [productName], [image], [description], [price], [unit], [quantity], [sale], [dateOfPost], [status]) VALUES (N'SP10000008', N'st08', N'Cafe Nestle Coffee Mate Original 1kg', N'https://cf.shopee.vn/file/bebb7cc630289ad75c696a5c1008c53c', N'Thuc uong dinh duong nhap khau', 300000, N'Hop', 4985, 0, CAST(N'2020-11-24T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([productID], [categoryID], [productName], [image], [description], [price], [unit], [quantity], [sale], [dateOfPost], [status]) VALUES (N'SP10000009', N'st09', N'Hạt Hạnh Nhân Sấy ', N'https://cf.shopee.vn/file/b4d2f4718c495a27d45adea119867428', N'Thuc pham dinh duong', 180000, N'Lo', 4991, 0, CAST(N'2020-10-21T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([productID], [categoryID], [productName], [image], [description], [price], [unit], [quantity], [sale], [dateOfPost], [status]) VALUES (N'SP10000010', N'st01', N'BÁNH GRAN PANETTONE MADI 1KG', N'https://cf.shopee.vn/file/5bb787081d06dd9c3b92bfca31f2ea9d', N'Banh Nhap Khau', 300000, N'Hop', 4972, 0, CAST(N'2020-10-20T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([productID], [categoryID], [productName], [image], [description], [price], [unit], [quantity], [sale], [dateOfPost], [status]) VALUES (N'SP10000011', N'st06', N'Thit hot my cao cấp Dak Premium Ham 454g', N'https://cf.shopee.vn/file/5bb48cf87369749f8477ff32255ba190', N'Thit hot nhap khau', 180000, N'Hop', 6000, 0, CAST(N'2020-10-19T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([productID], [categoryID], [productName], [image], [description], [price], [unit], [quantity], [sale], [dateOfPost], [status]) VALUES (N'SP10000012', N'st01', N'Jules Destrooper - Butter Waffles ', N'https://richmedia.ca-richimage.com/ImageDelivery/imageService?profileId=12026539&id=1881145&recipeId=500', N'Banh Nhap Khau', 500000, N'Hop', 5990, 0, CAST(N'2020-10-19T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([productID], [categoryID], [productName], [image], [description], [price], [unit], [quantity], [sale], [dateOfPost], [status]) VALUES (N'SP10000013', N'st01', N'European Cookies', N'https://www.vitaminhouse.vn/data/ck/images/10(5).jpg', N'Banh Nhap Khau', 500000, N'Hop', 6000, 0, CAST(N'2020-10-19T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([productID], [categoryID], [productName], [image], [description], [price], [unit], [quantity], [sale], [dateOfPost], [status]) VALUES (N'SP10000014', N'st01', N'Bánh ăn kiêng Crown Canape Party With … 280g', N'https://cf.shopee.vn/file/729998633606813de059765851f4ec51', N'Banh Nhap Khau', 80000, N'Hop', 5000, 0, CAST(N'2020-10-18T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([productID], [categoryID], [productName], [image], [description], [price], [unit], [quantity], [sale], [dateOfPost], [status]) VALUES (N'SP10000015', N'st01', N'Bánh Banana Charlteok pie Queen Bin 310g', N'https://cf.shopee.vn/file/f02b36cd7f0dcf16db051de56044a641', N'Banh Nhap Khau', 65000, N'Hop ', 5998, 0, CAST(N'2020-10-18T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([productID], [categoryID], [productName], [image], [description], [price], [unit], [quantity], [sale], [dateOfPost], [status]) VALUES (N'SP10000016', N'st01', N'Bánh Choco Charlteok pie Queen Bin Hàn Quốc 310g', N'https://cf.shopee.vn/file/29b30bfdb2f242943caba74d76cd2062', N'Banh Nhap Khau ', 65000, N'Hop', 5999, 0, CAST(N'2020-10-18T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([productID], [categoryID], [productName], [image], [description], [price], [unit], [quantity], [sale], [dateOfPost], [status]) VALUES (N'SP10000017', N'st01', N'Bánh ChocoStar X5 Peanut Crunch Bar 648g', N'http://media3.scdn.vn/img2/2018/3_2/7SQSPU_simg_de2fe0_900x900_maxb.jpg', N'Banh Nhap Khau', 180000, N'Hop', 6000, 0, CAST(N'2020-10-18T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([productID], [categoryID], [productName], [image], [description], [price], [unit], [quantity], [sale], [dateOfPost], [status]) VALUES (N'SP10000018', N'st02', N'Belgian Chocolate', N'https://cf.shopee.vn/file/b2c2b66d34e8f3df2e3cb803ffe8fedb', N'Keo Nhap Khau', 400000, N'Hop', 5998, 0, CAST(N'2020-10-18T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([productID], [categoryID], [productName], [image], [description], [price], [unit], [quantity], [sale], [dateOfPost], [status]) VALUES (N'SP10000019', N'st01', N'Bánh Le Biscuit Francais Assortment Palets Galettes 720g ( Hộp màu vàng )', N'https://foodplaza.com.vn/wp-content/uploads/2020/07/11-banh-le-biscuit-francais-assortment-palets-galettes-720g-hop-mau-do-1.jpg', N'Banh Nhap Khau', 430000, N'Hop ', 6000, 0, CAST(N'2020-10-18T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([productID], [categoryID], [productName], [image], [description], [price], [unit], [quantity], [sale], [dateOfPost], [status]) VALUES (N'SP10000020', N'st01', N'Banh mochi dau do', N'https://img.websosanh.vn/v2/users/root_product/images/banh-mocchi-nhan-dau-do/g0ibumcwhywoh.jpg', N'Bánh Nhập Khẩu', 55000, N'Hop', 6000, 0, CAST(N'2020-10-18T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([productID], [categoryID], [productName], [image], [description], [price], [unit], [quantity], [sale], [dateOfPost], [status]) VALUES (N'SP10000021', N'st01', N'Bánh quế Sô cô la hạt dẻ Pepperigde Farm 382g', N'https://salt.tikicdn.com/cache/w1200/ts/product/86/07/be/ab3028329a36a97c70a568e7a34c203f.jpg', N'Banh Nhap Khau', 110000, N'Hop', 7000, 0, CAST(N'2020-10-18T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([productID], [categoryID], [productName], [image], [description], [price], [unit], [quantity], [sale], [dateOfPost], [status]) VALUES (N'SP10000022', N'st01', N'Mc Vitie''s', N'https://kphucsinh.s3.ap-southeast-1.amazonaws.com/Contents/S%E1%BA%A3n%20ph%E1%BA%A9m%20%C3%82n%20Nam%202020/F143921-McVitie_s%20Digestive%20Milk%20Chocolate%20200g.jpg', N'Banh Nhap Khau', 120000, N'Hop ', 5999, 0, CAST(N'2020-10-18T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([productID], [categoryID], [productName], [image], [description], [price], [unit], [quantity], [sale], [dateOfPost], [status]) VALUES (N'SP10000023', N'st03', N'Mứt Bonne Maman Cam đắng Bitter Orange 30g (Pháp)', N'https://cf.shopee.vn/file/6859dad384d0a640941e6a4dc21628ac', N'Mut Nhap Khau', 20000, N'Lo', 6990, 0, CAST(N'2020-10-18T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([productID], [categoryID], [productName], [image], [description], [price], [unit], [quantity], [sale], [dateOfPost], [status]) VALUES (N'SP10000024', N'st03', N'Mứt ca cao hạt dẻ Nutela (Úc) - 200g', N'https://product.hstatic.net/1000126467/product/02965468.jpg', N'Mut Nhap Khau', 80000, N'Lo', 6000, 0, CAST(N'2020-10-18T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([productID], [categoryID], [productName], [image], [description], [price], [unit], [quantity], [sale], [dateOfPost], [status]) VALUES (N'SP10000025', N'st05', N'Bia sứ St. Paul Triple 7,6% Bỉ – chai 500ml', N'https://i0.wp.com/shopruou247.com/wp-content/uploads/2019/04/Bia-s%E1%BB%A9-ST.-Paul-Triple-7.6-500-ml-3-min.jpg?resize=1020%2C1020', N'Bia Ruou Nhap Khau', 230000, N'Chai', 4999, 0, CAST(N'2020-10-18T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([productID], [categoryID], [productName], [image], [description], [price], [unit], [quantity], [sale], [dateOfPost], [status]) VALUES (N'SP10000026', N'st05', N'Bia Chimay xanh 9% Bỉ – chai 330ml', N'https://product.hstatic.net/1000377007/product/u_172b5860c5b44a468b61d7baeeff721b.jpg', N'Bia Ruou Nhap Khau', 70000, N'Chai', 4998, 0, CAST(N'2020-10-18T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([productID], [categoryID], [productName], [image], [description], [price], [unit], [quantity], [sale], [dateOfPost], [status]) VALUES (N'SP10000027', N'st05', N'Bia La Trappe Trappist Blond 6% Hà Lan – chai 330ml', N'https://i1.wp.com/shopruou247.com/wp-content/uploads/2019/05/Bia-La-Trappe-Blond-6-1-min.jpg?resize=1020%2C1020', N'Bia Ruou Nhap Khau', 80000, N'Chai', 4990, 0, CAST(N'2020-10-18T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([productID], [categoryID], [productName], [image], [description], [price], [unit], [quantity], [sale], [dateOfPost], [status]) VALUES (N'SP10000028', N'st05', N'Bia Oranjeboom Premium Strong 18% Hà Lan – 24 lon 500ml', N'https://douongnhapkhau.com/wp-content/uploads/2020/01/bia-oranjeboom-extreme-strong-18-lon-500-ml.jpg', N'Bia Ruou Nhap Khau', 1050000, N'Thung', 998, 0, CAST(N'2000-10-18T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([productID], [categoryID], [productName], [image], [description], [price], [unit], [quantity], [sale], [dateOfPost], [status]) VALUES (N'SP10000029', N'st04', N'Coca Nhật Chai Nhôm Lùn Nắp Vặn thùng 24', N'https://cf.shopee.vn/file/4596dec6609cc38243ed8b185c71942d', N'Nuoc uong khong con Nhap Khau', 760000, N'Thung', 1998, 0, CAST(N'2020-10-18T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([productID], [categoryID], [productName], [image], [description], [price], [unit], [quantity], [sale], [dateOfPost], [status]) VALUES (N'SP10000030', N'st04', N'Nước ép Bundaberg Creaming Soda 375ml', N'https://cf.shopee.vn/file/60ac4c748178fa6888d41457bbc784f0', N'Nuoc uong khong con Nhap Khau', 50000, N'Chai', 9999, 0, CAST(N'2020-10-18T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([productID], [categoryID], [productName], [image], [description], [price], [unit], [quantity], [sale], [dateOfPost], [status]) VALUES (N'SP10000031', N'st04', N'Nước ép táo HQ 180ml', N'https://cf.shopee.vn/file/1e919c78587b8895648db50c2267fcc2', N'Nuoc uong khong con Nhap Khau', 23000, N'Chai', 10000, 0, CAST(N'2020-10-18T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([productID], [categoryID], [productName], [image], [description], [price], [unit], [quantity], [sale], [dateOfPost], [status]) VALUES (N'SP10000032', N'st04', N'Nước Ngọt Xá Xị A&W Mỹ', N'https://www.vitaminhouse.vn/data/bt4/nuoc-ngot-xa-xi-a-w-my-1567590495.jpg', N'Nuoc uong khong con Nhap Khau', 28000, N'Lon', 9990, 0, CAST(N'2020-10-18T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([productID], [categoryID], [productName], [image], [description], [price], [unit], [quantity], [sale], [dateOfPost], [status]) VALUES (N'SP10000033', N'st04', N'Soda Welchs nho 355ml', N'https://bucket.nhanh.vn/store1/57095/ps/20191115/67d3184fd0a940029269c80dc6ee84df_600x600.jpg', N'Nuoc uong khong con Nhap Khau', 28000, N'Lon', 10000, 0, CAST(N'2020-10-18T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([productID], [categoryID], [productName], [image], [description], [price], [unit], [quantity], [sale], [dateOfPost], [status]) VALUES (N'SP10000034', N'st04', N'Nước ép việt quất HQ 180ml', N'https://cf.shopee.vn/file/26e200253a5c85282c2ebf48f7ef56ca', N'Nuoc uong khong con Nhap Khau', 22000, N'Chai', 10000, 0, CAST(N'2020-10-18T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([productID], [categoryID], [productName], [image], [description], [price], [unit], [quantity], [sale], [dateOfPost], [status]) VALUES (N'SP10000035', N'st04', N'Nước ép nha đam HQ 1L5', N'https://bizweb.dktcdn.net/thumb/1024x1024/100/361/770/products/nuoc-nha-dam-1500ml-han-quoc.jpg?v=1570677137787', N'Nuoc uong khong con Nhap Khau', 80000, N'Chai', 10000, 0, CAST(N'2020-10-18T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([productID], [categoryID], [productName], [image], [description], [price], [unit], [quantity], [sale], [dateOfPost], [status]) VALUES (N'SP10000036', N'st08', N'DẦU RÁN OLIVE NGUYÊN CHẤT HANOLI 1000ML', N'https://cf.shopee.vn/file/928bfbfb846c189034ee4ed25ad1ff25', N'', 190000, N'Chai', 1998, 0, CAST(N'2020-10-18T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([productID], [categoryID], [productName], [image], [description], [price], [unit], [quantity], [sale], [dateOfPost], [status]) VALUES (N'SP10000037', N'st02', N'MẬN SẤY KHÔ SUNSWEET 1.59KG ', N'https://hangtieudungmy.com.vn/image/cache/catalog/153-800x800.jpg', N'', 420000, N'Goi', 3000, 0, CAST(N'2020-10-18T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([productID], [categoryID], [productName], [image], [description], [price], [unit], [quantity], [sale], [dateOfPost], [status]) VALUES (N'SP10000038', N'st07', N'KHÔ BÒ MỸ JACK LINK''S 92G', N'https://www.hangngoainhap.com.vn/images/201801/goods_img/2101_P_1515911206390.jpg', N'', 170000, N'Goi', 3999, 0, CAST(N'2020-10-18T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([productID], [categoryID], [productName], [image], [description], [price], [unit], [quantity], [sale], [dateOfPost], [status]) VALUES (N'SP10000039', N'st07', N'PATE GAN HEO 32% HENAFF 130G', N'https://cdn.concung.com/2020/02/44414-56926-large_mobile/pate-gan-heo-32-henaff-130g.jpg', N'', 60000, N'Lon', 3998, 0, CAST(N'2020-10-18T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([productID], [categoryID], [productName], [image], [description], [price], [unit], [quantity], [sale], [dateOfPost], [status]) VALUES (N'SP10000040', N'st07', N'PATE GÀ TÂY HENAFF 140G', N'https://cdn.concung.com/2020/02/44415-56922-large_mobile/pate-ga-tay-henaff-140g.jpg', N'', 70000, N'Lon', 3000, 0, CAST(N'2020-10-18T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([productID], [categoryID], [productName], [image], [description], [price], [unit], [quantity], [sale], [dateOfPost], [status]) VALUES (N'SP10000041', N'st07', N'Trái cây đóng hộp Dole vị Đào ', N'https://dp84mqgv78zql.cloudfront.net/large_1577333803761.2688.jpg', N'', 85000, N'Lon', 3999, 0, CAST(N'2020-10-17T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([productID], [categoryID], [productName], [image], [description], [price], [unit], [quantity], [sale], [dateOfPost], [status]) VALUES (N'SP10000042', N'st07', N' COCKTAIL LYCHEE IN SYRUP A CHOICE 565G', N'https://media3.scdn.vn/img4/2020/04_07/rQZ3AcxunVEIyjFxnfbE_simg_b5529c_800x800_maxb.jpg', N'', 85000, N'Lon', 3999, 0, CAST(N'2021-02-17T14:55:44.630' AS DateTime), 1)
INSERT [dbo].[Product] ([productID], [categoryID], [productName], [image], [description], [price], [unit], [quantity], [sale], [dateOfPost], [status]) VALUES (N'SP10000043', N'st07', N'Cocktail đóng hộp', N'https://salt.tikicdn.com/cache/w1200/ts/product/4d/7a/21/cb3a5efb27eb439497b616e892b63def.jpg', N'', 180000, N'Hộp', 4493, 0, CAST(N'2021-02-17T21:10:15.600' AS DateTime), 1)
INSERT [dbo].[Product] ([productID], [categoryID], [productName], [image], [description], [price], [unit], [quantity], [sale], [dateOfPost], [status]) VALUES (N'SP10000044', N'st01', N'Bánh Cookie Hàn Quốc', N'https://s1.storage.5giay.vn/image/2017/09/20170907_33467deef83f7152c53703339af2a5d0_1504784420.jpg', N'', 185000, N'Hộp', 6000, 0, CAST(N'2021-02-17T23:22:01.513' AS DateTime), 1)
INSERT [dbo].[Product] ([productID], [categoryID], [productName], [image], [description], [price], [unit], [quantity], [sale], [dateOfPost], [status]) VALUES (N'SP10000045', N'st02', N'Kẹo Kitkat nhật bản', N'https://bizweb.dktcdn.net/100/237/115/products/2002342keo-kitkat-socola-tra-xanh-jpeg.jpg?v=1504679453810', N'', 180000, N'Gói', 0, 0, CAST(N'2021-02-17T23:26:10.640' AS DateTime), 1)
INSERT [dbo].[Product] ([productID], [categoryID], [productName], [image], [description], [price], [unit], [quantity], [sale], [dateOfPost], [status]) VALUES (N'SP10000046', N'st01', N'bamhquy', N'https://media3.scdn.vn/img3/2018/12_22/hSVNOX_simg_de2fe0_500x500_maxb.jpg', N'', 90000, N'Hop', 1229, 12, CAST(N'2021-03-17T12:25:25.123' AS DateTime), 1)
INSERT [dbo].[Product] ([productID], [categoryID], [productName], [image], [description], [price], [unit], [quantity], [sale], [dateOfPost], [status]) VALUES (N'SP10000047', N'st01', N'Bánh LU', N'https://cf.shopee.vn/file/842285f04dc61c48c44f3050a7cb7cb7', N'Bánh Nhập Khẩu', 300000, N'Hộp', 5995, 0, CAST(N'2021-03-17T12:13:03.457' AS DateTime), 1)
INSERT [dbo].[Product] ([productID], [categoryID], [productName], [image], [description], [price], [unit], [quantity], [sale], [dateOfPost], [status]) VALUES (N'SP10000048', N'st08', N'yến mạch oats', N'https://bizweb.dktcdn.net/100/328/735/products/2-2147f705-7afd-44e8-b64d-2d0047764843.jpg?v=1594978266047', N'', 300000, N'Hộp', 2993, 10, CAST(N'2021-03-17T20:55:36.213' AS DateTime), 1)
INSERT [dbo].[Product] ([productID], [categoryID], [productName], [image], [description], [price], [unit], [quantity], [sale], [dateOfPost], [status]) VALUES (N'testProduct', N'st01', N'ten_san_pham_test', N'https://cf.shopee.vn/file/842285f04dc61c48c44f3050a7cb7cb7', N'', 185000, N'Hộp', 5990, 12, CAST(N'2021-03-19T11:00:52.027' AS DateTime), 1)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Order]    Script Date: 6/10/2021 8:18:34 PM ******/
CREATE NONCLUSTERED INDEX [IX_Order] ON [dbo].[Order]
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Account] FOREIGN KEY([username])
REFERENCES [dbo].[Account] ([username])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Account]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([orderID])
REFERENCES [dbo].[Order] ([orderID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Product] FOREIGN KEY([productID])
REFERENCES [dbo].[Product] ([productID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([categoryID])
REFERENCES [dbo].[Category] ([categoryID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
USE [master]
GO
ALTER DATABASE [JavaWeFptAsmBanHangTet] SET  READ_WRITE 
GO
