USE [master]
GO
/****** Object:  Database [NxbKimDong]    Script Date: 9/23/2023 8:03:54 AM ******/
CREATE DATABASE [NxbKimDong]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'NxbKimDong', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.THUAN\MSSQL\DATA\NxbKimDong.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'NxbKimDong_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.THUAN\MSSQL\DATA\NxbKimDong_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [NxbKimDong] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [NxbKimDong].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [NxbKimDong] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [NxbKimDong] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [NxbKimDong] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [NxbKimDong] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [NxbKimDong] SET ARITHABORT OFF 
GO
ALTER DATABASE [NxbKimDong] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [NxbKimDong] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [NxbKimDong] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [NxbKimDong] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [NxbKimDong] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [NxbKimDong] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [NxbKimDong] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [NxbKimDong] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [NxbKimDong] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [NxbKimDong] SET  DISABLE_BROKER 
GO
ALTER DATABASE [NxbKimDong] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [NxbKimDong] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [NxbKimDong] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [NxbKimDong] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [NxbKimDong] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [NxbKimDong] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [NxbKimDong] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [NxbKimDong] SET RECOVERY FULL 
GO
ALTER DATABASE [NxbKimDong] SET  MULTI_USER 
GO
ALTER DATABASE [NxbKimDong] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [NxbKimDong] SET DB_CHAINING OFF 
GO
ALTER DATABASE [NxbKimDong] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [NxbKimDong] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [NxbKimDong] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [NxbKimDong] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'NxbKimDong', N'ON'
GO
ALTER DATABASE [NxbKimDong] SET QUERY_STORE = OFF
GO
USE [NxbKimDong]
GO
/****** Object:  Table [dbo].[ChiTietDonHang]    Script Date: 9/23/2023 8:03:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonHang](
	[MaDonHang] [int] NOT NULL,
	[MaSach] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [int] NULL,
 CONSTRAINT [PK_ChiTietDonHang] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC,
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 9/23/2023 8:03:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Content] [ntext] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Credentials]    Script Date: 9/23/2023 8:03:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Credentials](
	[UserGroupID] [varchar](20) NOT NULL,
	[RoleID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Credential] PRIMARY KEY CLUSTERED 
(
	[UserGroupID] ASC,
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhMucSP]    Script Date: 9/23/2023 8:03:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMucSP](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](80) NULL,
	[MetaTitle] [varchar](250) NULL,
	[CreatedDate] [datetime] NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_DanhMucSP] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 9/23/2023 8:03:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TongTien] [money] NULL,
	[DaThanhToan] [int] NULL,
	[NgayDat] [datetime] NULL,
	[NgayGiao] [datetime] NULL,
	[MaKH] [int] NULL,
	[Status] [int] NULL,
	[TenKH] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Moblie] [varchar](50) NULL,
 CONSTRAINT [PK_DonHang] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FeedBack]    Script Date: 9/23/2023 8:03:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeedBack](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Content] [nvarchar](250) NULL,
	[CreatedDate] [datetime] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_FeedBack] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 9/23/2023 8:03:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NULL,
 CONSTRAINT [PK_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaXuatBan]    Script Date: 9/23/2023 8:03:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaXuatBan](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenNXB] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Phone] [varchar](50) NULL,
 CONSTRAINT [PK_NhaXuatBan] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 9/23/2023 8:03:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[ID] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sach]    Script Date: 9/23/2023 8:03:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sach](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DanhMucID] [int] NULL,
	[Name] [nvarchar](250) NULL,
	[Image] [nvarchar](250) NULL,
	[Price] [decimal](18, 3) NULL,
	[Quantity] [int] NULL,
	[Sale] [int] NULL,
	[MoTa] [nvarchar](max) NULL,
	[KichThuoc] [nvarchar](50) NULL,
	[TrongLuong] [nvarchar](10) NULL,
	[NhaCungCapID] [int] NULL,
	[SoTrang] [int] NULL,
	[NhaXuatBanID] [int] NULL,
	[NgayCapNhat] [datetime] NULL,
	[SoLuongTon] [int] NULL,
	[MetaTitle] [varchar](250) NULL,
	[MoreImages] [xml] NULL,
	[TopHot] [datetime] NULL,
	[ViewCount] [int] NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Silde]    Script Date: 9/23/2023 8:03:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Silde](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](250) NULL,
	[Link] [nvarchar](250) NULL,
	[CreatedDate] [datetime] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Silde] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TacGia]    Script Date: 9/23/2023 8:03:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TacGia](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenTacGia] [nvarchar](50) NULL,
	[Address] [nvarchar](250) NULL,
	[TieuSu] [nvarchar](max) NULL,
	[Phone] [varchar](50) NULL,
 CONSTRAINT [PK_TacGia] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 9/23/2023 8:03:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[GroupID] [varchar](20) NULL,
	[TaiKhoan] [varchar](50) NULL,
	[Phone] [varchar](50) NULL,
	[Email] [nvarchar](150) NULL,
	[Password] [nvarchar](50) NULL,
	[Address] [nvarchar](250) NULL,
	[GioiTinh] [nvarchar](3) NULL,
	[NgaySinh] [datetime] NULL,
	[Status] [bit] NOT NULL,
	[FullName] [nvarchar](50) NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThamGia]    Script Date: 9/23/2023 8:03:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThamGia](
	[MaSach] [int] NOT NULL,
	[MaTacGia] [int] NOT NULL,
	[VaiTro] [nvarchar](50) NULL,
	[Vitri] [nvarchar](50) NULL,
 CONSTRAINT [PK_ThamGia] PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC,
	[MaTacGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tin_Tuc]    Script Date: 9/23/2023 8:03:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tin_Tuc](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[MetaTitle] [varchar](250) NULL,
	[Description] [nvarchar](max) NULL,
	[Image] [nvarchar](250) NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_Tin_Tuc] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserGroup]    Script Date: 9/23/2023 8:03:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserGroup](
	[ID] [varchar](20) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ChiTietDonHang] ([MaDonHang], [MaSach], [SoLuong], [DonGia]) VALUES (41, 8, 1, 70000)
INSERT [dbo].[ChiTietDonHang] ([MaDonHang], [MaSach], [SoLuong], [DonGia]) VALUES (42, 3, 3, 25000)
INSERT [dbo].[ChiTietDonHang] ([MaDonHang], [MaSach], [SoLuong], [DonGia]) VALUES (43, 44, 1, 32000)
INSERT [dbo].[ChiTietDonHang] ([MaDonHang], [MaSach], [SoLuong], [DonGia]) VALUES (44, 3, 1, 25000)
INSERT [dbo].[ChiTietDonHang] ([MaDonHang], [MaSach], [SoLuong], [DonGia]) VALUES (45, 3, 4, 25000)
INSERT [dbo].[ChiTietDonHang] ([MaDonHang], [MaSach], [SoLuong], [DonGia]) VALUES (46, 3, 3, 25000)
INSERT [dbo].[ChiTietDonHang] ([MaDonHang], [MaSach], [SoLuong], [DonGia]) VALUES (47, 11, 4, 378000)
INSERT [dbo].[ChiTietDonHang] ([MaDonHang], [MaSach], [SoLuong], [DonGia]) VALUES (48, 3, 3, 25000)
INSERT [dbo].[ChiTietDonHang] ([MaDonHang], [MaSach], [SoLuong], [DonGia]) VALUES (48, 7, 4, 50000)
INSERT [dbo].[ChiTietDonHang] ([MaDonHang], [MaSach], [SoLuong], [DonGia]) VALUES (48, 10, 4, 50000)
INSERT [dbo].[ChiTietDonHang] ([MaDonHang], [MaSach], [SoLuong], [DonGia]) VALUES (49, 12, 5, 36000)
INSERT [dbo].[ChiTietDonHang] ([MaDonHang], [MaSach], [SoLuong], [DonGia]) VALUES (50, 45, 5, 25000)
INSERT [dbo].[ChiTietDonHang] ([MaDonHang], [MaSach], [SoLuong], [DonGia]) VALUES (51, 45, 5, 25000)
INSERT [dbo].[ChiTietDonHang] ([MaDonHang], [MaSach], [SoLuong], [DonGia]) VALUES (52, 4, 5, 20000)
INSERT [dbo].[ChiTietDonHang] ([MaDonHang], [MaSach], [SoLuong], [DonGia]) VALUES (52, 7, 5, 50000)
INSERT [dbo].[ChiTietDonHang] ([MaDonHang], [MaSach], [SoLuong], [DonGia]) VALUES (52, 8, 5, 70000)
INSERT [dbo].[ChiTietDonHang] ([MaDonHang], [MaSach], [SoLuong], [DonGia]) VALUES (53, 10, 5, 50000)
INSERT [dbo].[ChiTietDonHang] ([MaDonHang], [MaSach], [SoLuong], [DonGia]) VALUES (54, 3, 4, 25000)
INSERT [dbo].[ChiTietDonHang] ([MaDonHang], [MaSach], [SoLuong], [DonGia]) VALUES (55, 6, 5, 21000)
INSERT [dbo].[ChiTietDonHang] ([MaDonHang], [MaSach], [SoLuong], [DonGia]) VALUES (56, 5, 5, 20000)
INSERT [dbo].[ChiTietDonHang] ([MaDonHang], [MaSach], [SoLuong], [DonGia]) VALUES (56, 6, 5, 21000)
GO
SET IDENTITY_INSERT [dbo].[Contact] ON 

INSERT [dbo].[Contact] ([ID], [Content], [Status]) VALUES (1, N'<p>Công ty cổ phần</p>', 1)
SET IDENTITY_INSERT [dbo].[Contact] OFF
GO
SET IDENTITY_INSERT [dbo].[DanhMucSP] ON 

INSERT [dbo].[DanhMucSP] ([ID], [Name], [MetaTitle], [CreatedDate], [Status]) VALUES (1, N'Lịch sử truyền thống', N'lich-su-truyen-thong', CAST(N'2023-08-31T08:50:55.283' AS DateTime), 1)
INSERT [dbo].[DanhMucSP] ([ID], [Name], [MetaTitle], [CreatedDate], [Status]) VALUES (2, N'Văn học Việt Nam', N'van-hoc-viet-nam', CAST(N'2023-08-27T15:45:52.400' AS DateTime), 1)
INSERT [dbo].[DanhMucSP] ([ID], [Name], [MetaTitle], [CreatedDate], [Status]) VALUES (3, N'Truyện tranh', N'truyen-tranh', CAST(N'2023-08-27T15:45:52.407' AS DateTime), 1)
INSERT [dbo].[DanhMucSP] ([ID], [Name], [MetaTitle], [CreatedDate], [Status]) VALUES (4, N'Manga-Comic', N'manga-comic', CAST(N'2023-08-27T15:45:52.407' AS DateTime), 1)
INSERT [dbo].[DanhMucSP] ([ID], [Name], [MetaTitle], [CreatedDate], [Status]) VALUES (5, N'Wings books', N'wings-books', CAST(N'2023-08-27T15:48:51.830' AS DateTime), 1)
INSERT [dbo].[DanhMucSP] ([ID], [Name], [MetaTitle], [CreatedDate], [Status]) VALUES (6, N'Thiếu nhi', N'thieu-nhi', CAST(N'2023-08-27T15:48:56.627' AS DateTime), 1)
INSERT [dbo].[DanhMucSP] ([ID], [Name], [MetaTitle], [CreatedDate], [Status]) VALUES (7, N'Văn học nước ngoài', N'van-hoc-nuoc-ngoai', CAST(N'2023-08-27T15:49:30.497' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[DanhMucSP] OFF
GO
SET IDENTITY_INSERT [dbo].[DonHang] ON 

INSERT [dbo].[DonHang] ([ID], [TongTien], [DaThanhToan], [NgayDat], [NgayGiao], [MaKH], [Status], [TenKH], [Address], [Email], [Moblie]) VALUES (41, 63000.0000, NULL, CAST(N'2023-09-15T22:06:03.860' AS DateTime), NULL, 4, 0, N'thuan', N'hà nội', N'W@gmail.com', N'025 698 7412')
INSERT [dbo].[DonHang] ([ID], [TongTien], [DaThanhToan], [NgayDat], [NgayGiao], [MaKH], [Status], [TenKH], [Address], [Email], [Moblie]) VALUES (42, 67500.0000, NULL, CAST(N'2023-09-15T22:19:58.257' AS DateTime), NULL, 4, 0, N'thuan', N'hà nội', N'W@gmail.com', N'025 698 7412')
INSERT [dbo].[DonHang] ([ID], [TongTien], [DaThanhToan], [NgayDat], [NgayGiao], [MaKH], [Status], [TenKH], [Address], [Email], [Moblie]) VALUES (43, 28800.0000, NULL, CAST(N'2023-09-15T22:22:34.247' AS DateTime), NULL, 4, 3, N'thuan', N'hà nội', N'W@gmail.com', N'025 698 7412')
INSERT [dbo].[DonHang] ([ID], [TongTien], [DaThanhToan], [NgayDat], [NgayGiao], [MaKH], [Status], [TenKH], [Address], [Email], [Moblie]) VALUES (44, 22500.0000, NULL, CAST(N'2023-09-16T09:04:57.067' AS DateTime), NULL, 4, 3, N'thuan', N'hà nội', N'W@gmail.com', N'025 698 7412')
INSERT [dbo].[DonHang] ([ID], [TongTien], [DaThanhToan], [NgayDat], [NgayGiao], [MaKH], [Status], [TenKH], [Address], [Email], [Moblie]) VALUES (45, 90000.0000, NULL, CAST(N'2023-09-16T09:15:04.300' AS DateTime), NULL, 4, 3, N'thuan', N'hà nội', N'W@gmail.com', N'025 698 7412')
INSERT [dbo].[DonHang] ([ID], [TongTien], [DaThanhToan], [NgayDat], [NgayGiao], [MaKH], [Status], [TenKH], [Address], [Email], [Moblie]) VALUES (46, 67500.0000, NULL, CAST(N'2023-09-16T09:16:52.357' AS DateTime), NULL, 4, 3, N'thuan', N'hà nội', N'W@gmail.com', N'025 698 7412')
INSERT [dbo].[DonHang] ([ID], [TongTien], [DaThanhToan], [NgayDat], [NgayGiao], [MaKH], [Status], [TenKH], [Address], [Email], [Moblie]) VALUES (47, 1360800.0000, NULL, CAST(N'2023-09-16T09:28:38.770' AS DateTime), NULL, 4, 2, N'thuan', N'hà nội', N'W@gmail.com', N'025 698 7412')
INSERT [dbo].[DonHang] ([ID], [TongTien], [DaThanhToan], [NgayDat], [NgayGiao], [MaKH], [Status], [TenKH], [Address], [Email], [Moblie]) VALUES (48, 427500.0000, NULL, CAST(N'2023-09-16T17:14:28.773' AS DateTime), NULL, 7, 2, N'tùng', N'hà nội', N't@gmail.com', N'035 897 4123')
INSERT [dbo].[DonHang] ([ID], [TongTien], [DaThanhToan], [NgayDat], [NgayGiao], [MaKH], [Status], [TenKH], [Address], [Email], [Moblie]) VALUES (49, 162000.0000, NULL, CAST(N'2023-09-16T22:41:03.787' AS DateTime), NULL, 4, 2, N'thuan', N'ha noi', N'W@gmail.com', N'025 698 7412')
INSERT [dbo].[DonHang] ([ID], [TongTien], [DaThanhToan], [NgayDat], [NgayGiao], [MaKH], [Status], [TenKH], [Address], [Email], [Moblie]) VALUES (50, 112500.0000, NULL, CAST(N'2023-09-16T22:49:52.693' AS DateTime), NULL, 4, 0, N'thuan', N'hà nội', N'W@gmail.com', N'025 698 7412')
INSERT [dbo].[DonHang] ([ID], [TongTien], [DaThanhToan], [NgayDat], [NgayGiao], [MaKH], [Status], [TenKH], [Address], [Email], [Moblie]) VALUES (51, 112500.0000, NULL, CAST(N'2023-09-16T22:52:45.893' AS DateTime), NULL, 4, 0, N'thuan', N'hà nội', N'W@gmail.com', N'025 698 7412')
INSERT [dbo].[DonHang] ([ID], [TongTien], [DaThanhToan], [NgayDat], [NgayGiao], [MaKH], [Status], [TenKH], [Address], [Email], [Moblie]) VALUES (52, 630000.0000, NULL, CAST(N'2023-09-16T22:54:26.387' AS DateTime), NULL, 4, 0, N'thuan', N'hà nội', N'W@gmail.com', N'025 698 7412')
INSERT [dbo].[DonHang] ([ID], [TongTien], [DaThanhToan], [NgayDat], [NgayGiao], [MaKH], [Status], [TenKH], [Address], [Email], [Moblie]) VALUES (53, 225000.0000, NULL, CAST(N'2023-09-16T22:59:02.680' AS DateTime), NULL, 4, 0, N'thuan', N'hà nội', N'W@gmail.com', N'025 698 7412')
INSERT [dbo].[DonHang] ([ID], [TongTien], [DaThanhToan], [NgayDat], [NgayGiao], [MaKH], [Status], [TenKH], [Address], [Email], [Moblie]) VALUES (54, 90000.0000, NULL, CAST(N'2023-09-16T23:03:43.777' AS DateTime), NULL, 4, 0, N'thuan', N'hà nội', N'W@gmail.com', N'025 698 7412')
INSERT [dbo].[DonHang] ([ID], [TongTien], [DaThanhToan], [NgayDat], [NgayGiao], [MaKH], [Status], [TenKH], [Address], [Email], [Moblie]) VALUES (55, 94500.0000, NULL, CAST(N'2023-09-16T23:06:57.060' AS DateTime), NULL, 4, 0, N'thuan', N'hà nội', N'W@gmail.com', N'025 698 7412')
INSERT [dbo].[DonHang] ([ID], [TongTien], [DaThanhToan], [NgayDat], [NgayGiao], [MaKH], [Status], [TenKH], [Address], [Email], [Moblie]) VALUES (56, 184500.0000, NULL, CAST(N'2023-09-16T23:07:55.220' AS DateTime), NULL, 4, 0, N'thuan', N'hà nội', N'W@gmail.com', N'025 698 7412')
INSERT [dbo].[DonHang] ([ID], [TongTien], [DaThanhToan], [NgayDat], [NgayGiao], [MaKH], [Status], [TenKH], [Address], [Email], [Moblie]) VALUES (57, 1000.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[DonHang] OFF
GO
SET IDENTITY_INSERT [dbo].[FeedBack] ON 

INSERT [dbo].[FeedBack] ([ID], [Name], [Phone], [Email], [Address], [Content], [CreatedDate], [Status]) VALUES (1, N't', N'09876543', N't@gmail.com', N'hh', N'rrrr', CAST(N'2023-09-05T20:40:52.370' AS DateTime), NULL)
INSERT [dbo].[FeedBack] ([ID], [Name], [Phone], [Email], [Address], [Content], [CreatedDate], [Status]) VALUES (2, N't', N'09876543', N't@gmail.com', N'hh', N'eeee', CAST(N'2023-09-05T20:49:01.307' AS DateTime), NULL)
INSERT [dbo].[FeedBack] ([ID], [Name], [Phone], [Email], [Address], [Content], [CreatedDate], [Status]) VALUES (3, N't', N'09876543', N't@gmail.com', N'hh', N'dđ', CAST(N'2023-09-05T20:50:31.563' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[FeedBack] OFF
GO
SET IDENTITY_INSERT [dbo].[NhaCungCap] ON 

INSERT [dbo].[NhaCungCap] ([ID], [Name]) VALUES (1, N'Kim Ánh')
SET IDENTITY_INSERT [dbo].[NhaCungCap] OFF
GO
SET IDENTITY_INSERT [dbo].[NhaXuatBan] ON 

INSERT [dbo].[NhaXuatBan] ([ID], [TenNXB], [Address], [Phone]) VALUES (1, N'Kim Đồng', N'Hà Nội', NULL)
SET IDENTITY_INSERT [dbo].[NhaXuatBan] OFF
GO
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'ADD_CONTENT', N'Thêm tin tức')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'ADD_USER', N'Thêm user')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'DELETE_USER', N'Xóa user')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'EDIT_CONTENT', N'Sửa tin tức')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'EDIT_USER', N'Sửa user')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'VIEW_USER', N'Xem danh sách')
GO
SET IDENTITY_INSERT [dbo].[Sach] ON 

INSERT [dbo].[Sach] ([ID], [DanhMucID], [Name], [Image], [Price], [Quantity], [Sale], [MoTa], [KichThuoc], [TrongLuong], [NhaCungCapID], [SoTrang], [NhaXuatBanID], [NgayCapNhat], [SoLuongTon], [MetaTitle], [MoreImages], [TopHot], [ViewCount], [Status]) VALUES (3, 1, N'TRANH TRUYỆN LỊCH SỬ VIỆT NAM - TRẦN QUỐC TOẢN', N'/Data/Images/tran-quoc-tuan.png', CAST(25000.000 AS Decimal(18, 3)), 64, 10, N'Trần Quốc Toản (1267 - ?) là một tông thất nhà Trần. Vì căm thù giặc Nguyên Mông, từ tuổi còn thiếu niên, chàng đã chăm đọc binh thư, chiêu tập những người cùng chí hướng luyện tập võ nghệ để đi kháng chiến. Dưới lá cờ đề sáu chữ: Phá cường địch, báo hoàng ân – đoàn quân của vị tướng trẻ Trần Quốc Toản ra trận, khí thế hào hùng. Nhưng Quốc Toản đã hi sinh khi tuổi đời còn rất trẻ. Chàng là tấm gương yêu nước cho bao thế hệ thanh thiếu niên nước Việt về sau.
Tủ sách “Tranh truyện Lịch sử Việt Nam” dành cho lứa tuổi thiếu niên nhi đồng được NXB Kim Đồng xây dựng xuất phát từ mong muốn giúp các em nhỏ bước đầu làm quen với lịch sử, tiếp nhận một lượng kiến thức cơ bản về lịch sử nước nhà thông qua những câu chuyện về các danh nhân được thể hiện bằng các trang sách màu.
Mỗi nhân vật trong bộ truyện tranh lịch sử xuất hiện là một câu chuyện giàu tính văn học, mang hơi hướng dân gian nhẹ nhàng và gần gũi. Lời thoại trong truyện cũng rất đơn giản, không đặt nặng về tư liệu nhưng vẫn luôn tôn trọng tính xác thực của lịch sử, góp phần bồi đắp tình yêu của thiếu nhi với lịch sử, với dân tộc.', N'14.5x20.5 cm', N'100 gram', NULL, 32, NULL, CAST(N'2021-09-01T00:00:00.000' AS DateTime), 156, N'tranh-truyen-lich-su-viet-nam-tran-quoc-toan', NULL, CAST(N'2024-02-02T00:00:00.000' AS DateTime), 0, 1)
INSERT [dbo].[Sach] ([ID], [DanhMucID], [Name], [Image], [Price], [Quantity], [Sale], [MoTa], [KichThuoc], [TrongLuong], [NhaCungCapID], [SoTrang], [NhaXuatBanID], [NgayCapNhat], [SoLuongTon], [MetaTitle], [MoreImages], [TopHot], [ViewCount], [Status]) VALUES (4, 1, N'TRANH TRUYỆN LỊCH SỬ VIỆT NAM - LÊ LỢI ', N'/Data/Images/le-loi.png', CAST(20000.000 AS Decimal(18, 3)), 50, 10, N'Lê Lợi (1385 - 1433), sinh ra trong một gia đình giàu có ở Thanh Hóa. Từ khi còn nhỏ, Lê Lợi đã chứng kiến cảnh giặc Minh xâm lược và tàn phá nước nhà. Căm giận giặc thù, Lê Lợi đã cùng 18 tướng lĩnh là bạn bè thân thiết của mình mở hội thề Lũng Nhai, thề đồng lòng diệt giặc. Năm 1418, Lê Lợi tổ chức cuộc khởi nghĩa Lam Sơn với lực lượng ban đầu chỉ khoảng vài nghìn người. Sau, nghĩa quân dần lớn mạnh. Trải nhiều gian khổ, năm 1428 nghĩa quân giành thắng lợi hoàn toàn, Lê Lợi lên ngôi, mở ra triều đại Hậu Lê ở nước ta.', N'14.5x20.5 cm', N'100 gram', NULL, 32, NULL, CAST(N'2022-07-05T00:00:00.000' AS DateTime), 150, N'tranh-truyen-lich-su-viet-nam-le-loi', NULL, CAST(N'2024-02-02T00:00:00.000' AS DateTime), 0, 1)
INSERT [dbo].[Sach] ([ID], [DanhMucID], [Name], [Image], [Price], [Quantity], [Sale], [MoTa], [KichThuoc], [TrongLuong], [NhaCungCapID], [SoTrang], [NhaXuatBanID], [NgayCapNhat], [SoLuongTon], [MetaTitle], [MoreImages], [TopHot], [ViewCount], [Status]) VALUES (5, 1, N'TRANH TRUYỆN LỊCH SỬ VIỆT NAM - TRẦN THÁI TÔNG', N'/Data/Images/tran-thai-tong-1.png', CAST(20000.000 AS Decimal(18, 3)), 60, 10, N'Trần Thái Tông (1218 - 1277) là vị hoàng đế đầu tiên của triều Trần. Ông giữ ngôi từ ngày 10 tháng 1 năm 1226 tới ngày 30 tháng 3 năm 1258, sau đó làm Thái thượng hoàng cho đến khi qua đời năm 1277. Từ khi lên 7 tuổi, Trần Cảnh được người chú họ là Trần Thủ Độ tiến cử làm Chi hậu chính chi ứng cục, hầu hạ cho nữ hoàng nhỏ tuổi Lý Chiêu Hoàng. Năm 1226, Trần Thủ Độ sắp xếp để Lý Chiêu Hoàng cưới và nhường ngôi cho Trần Cảnh, tức Hoàng đế Trần Thái Tông. Trần Thái Tông đã tiến hành cải tổ luật pháp, hành chính, đồng thời khuyến khích nông, thương nghiệp và phát triển nền giáo dục.
Ông cũng xây dựng quân đội mạnh và ngăn chặn quân Chiêm Thành cướp phá mạn nam nước ta.
', N'14.5x20.5 cm', N'100 gram', NULL, 32, NULL, CAST(N'2019-07-05T00:00:00.000' AS DateTime), 150, N'tranh-truyen-lich-su-viet-nam-tranh-thai-tong', NULL, CAST(N'2024-02-02T00:00:00.000' AS DateTime), 0, 1)
INSERT [dbo].[Sach] ([ID], [DanhMucID], [Name], [Image], [Price], [Quantity], [Sale], [MoTa], [KichThuoc], [TrongLuong], [NhaCungCapID], [SoTrang], [NhaXuatBanID], [NgayCapNhat], [SoLuongTon], [MetaTitle], [MoreImages], [TopHot], [ViewCount], [Status]) VALUES (6, 1, N'TRANH TRUYỆN LỊCH SỬ VIỆT NAM - LÝ THƯỜNG KIỆT', N'/Data/Images/ly-thuong-kiet-1.png', CAST(21000.000 AS Decimal(18, 3)), 60, 10, N'Lý Thường Kiệt tên thật là Ngô Tuấn, một vị tướng kiệt xuất trong lịch sử Việt Nam. Ông nhiều lần thống lĩnh ba quân “phá Tống, bình Chiêm”, giữ bờ cõi nhiều năm trong cảnh thanh bình. Ông lại đem tài sức giúp vua Lý phát mở mang canh nông, xây dựng nhà học, góp phần gây dựng nền văn hiến Đại Việt.', N' 14,5x20,5 cm', N'100 gram', NULL, 32, NULL, CAST(N'2020-08-08T00:00:00.000' AS DateTime), 150, N'tranh-truyen-lich-su-viet-nam-ly-thuong-kiet', NULL, CAST(N'2024-02-02T00:00:00.000' AS DateTime), 0, 1)
INSERT [dbo].[Sach] ([ID], [DanhMucID], [Name], [Image], [Price], [Quantity], [Sale], [MoTa], [KichThuoc], [TrongLuong], [NhaCungCapID], [SoTrang], [NhaXuatBanID], [NgayCapNhat], [SoLuongTon], [MetaTitle], [MoreImages], [TopHot], [ViewCount], [Status]) VALUES (7, 2, N'PHÙ SA CỦA BẦU TRỜI', N'/Data/Images/phu-sa-cua-bau-troi.png', CAST(50000.000 AS Decimal(18, 3)), 60, 10, N'Những xúc cảm trong veo đầu đời xen lẫn nỗi buồn trưởng thành là điểm đặc sắc của tập truyện ngắn Phù sa của bầu trời. Theo từng trang viết của Hà Thanh Phúc, bạn sẽ tìm thấy những kí ức thân quen thời áo trắng, với những chuyện tình mới chớm đẹp tựa pha lê, những hờn giận bạn bè đáng nhớ, những chiêm nghiệm tinh khôi về tình thân, tình yêu quê hương xứ sở. Đó chính là phù sa sâu lắng bồi đắp cho hành trình lớn lên của mỗi người. ', N'14x19 cm', N'190 gram', NULL, 132, NULL, CAST(N'2023-08-08T00:00:00.000' AS DateTime), 150, N'phu-sa-cua-bau-troi', NULL, CAST(N'2024-02-02T00:00:00.000' AS DateTime), 0, 1)
INSERT [dbo].[Sach] ([ID], [DanhMucID], [Name], [Image], [Price], [Quantity], [Sale], [MoTa], [KichThuoc], [TrongLuong], [NhaCungCapID], [SoTrang], [NhaXuatBanID], [NgayCapNhat], [SoLuongTon], [MetaTitle], [MoreImages], [TopHot], [ViewCount], [Status]) VALUES (8, 2, N'HAI NGƯỜI ĐẾN TỪ PHƯƠNG XA', N'/Data/Images/hai-nguoi-toi-tu-phuong-xa.png', CAST(70000.000 AS Decimal(18, 3)), 60, 10, N'“Phương xa” trong tập truyện ngắn Hai người đến từ phương xa mang rất nhiều nghĩa: Là xa xôi về không gian như những người bạn đến từ hai đầu đất nước, hay thậm chí từ hai lục địa. Là cách biệt về thời gian, khác biệt thế hệ. Là sai khác văn hóa như những người xa quê đã lâu gặp phải khi hồi hương. 
Bằng lối viết dí dỏm mà sâu sắc, mỗi truyện ngắn của nhà văn Dương Thụy là một trải nghiệm lí thú về việc vượt qua khác biệt để thấu hiểu. Thông điệp này càng quan trọng trong một thế giới mở, khi chúng ta dễ dàng vượt qua những đường biên hữu hình nhưng xem nhẹ các biên giới vô hình. Yêu thương và tôn trọng lẫn nhau, những người đến từ phương xa nhưng tâm hồn sẽ không hề cách xa. ', N'14x19 cm', N'215 gram', NULL, 148, NULL, CAST(N'2021-09-09T00:00:00.000' AS DateTime), 152, N'hai-nguoi-den-tu-phuong-xa', NULL, CAST(N'2024-02-02T00:00:00.000' AS DateTime), 0, 1)
INSERT [dbo].[Sach] ([ID], [DanhMucID], [Name], [Image], [Price], [Quantity], [Sale], [MoTa], [KichThuoc], [TrongLuong], [NhaCungCapID], [SoTrang], [NhaXuatBanID], [NgayCapNhat], [SoLuongTon], [MetaTitle], [MoreImages], [TopHot], [ViewCount], [Status]) VALUES (9, 2, N'THƠ HÀN MẶC TỬ', N'/Data//Images/tho-han-mac-tu.png', CAST(50000.000 AS Decimal(18, 3)), 60, 10, N'“Trong khoảng trên dưới một chục năm hoạt động trong thi đàn, Hàn Mặc Tử đã từ cổ điển,
lãng mạn, tiến nhanh sang tượng trưng, siêu thực, góp một phần quan trọng vào quá trình hiện đại hóa thi ca Việt Nam. Điều đáng kể nhất là ở loại hình nào, phạm trù nào, Hàn Mặc Tử cũng là trụ cột.” - Giáo sư PHAN CỰ ĐỆ
“Hàn Mặc Tử được sinh ra cho thơ. Sinh thời, Hàn đã sống bằng thơ. Bây giờ và mai sau Hàn vẫn sống bằng thơ. Bởi vì Hàn đã chết cho mỗi lời thơ. Đó là bài học về thơ đắt giá và sáng giá nhất của muôn đời.” - Nhà phê bình văn học CHU VĂN SƠN', N'13x19 cm', N'200 gram', NULL, 180, NULL, CAST(N'2021-01-01T00:00:00.000' AS DateTime), 150, N'tho-han-mac-tu', NULL, CAST(N'2024-02-02T00:00:00.000' AS DateTime), 0, 1)
INSERT [dbo].[Sach] ([ID], [DanhMucID], [Name], [Image], [Price], [Quantity], [Sale], [MoTa], [KichThuoc], [TrongLuong], [NhaCungCapID], [SoTrang], [NhaXuatBanID], [NgayCapNhat], [SoLuongTon], [MetaTitle], [MoreImages], [TopHot], [ViewCount], [Status]) VALUES (10, 2, N'NGỤM ĐẮNG XUÔI NGÀN', N'/Data/Images/ngum-dang-xuoi-vang.png', CAST(50000.000 AS Decimal(18, 3)), 60, 10, N'Một hiện thực sống động về những con người vùng núi phía Bắc với tình yêu, gia đình, nỗi cô đơn và khám phá bản thể. Dấu ấn văn hóa, tập tục, cảnh sắc và nếp sinh hoạt của người Dao, người Mông, người Tày đậm nét khiến người đọc phải tự vấn “Ta là ai? Họ là ai?”... 
Ngụm đắng xuôi ngàn là tập truyện với những phát hiện mới trên hành trình sáng tạo, khám phá tâm hồn người dân tộc thiểu số.
“Ở Seo Lùng Phình, cánh hoa dã quỳ rụng rơi như bị gió bứng, thả xuống mặt đất không chút vương vấn. Cành cây vặn vẹo, thu vào đáy mắt. Ở Seo Lùng Phình, tiếng khèn khô khốc như bó củi trên nương đã tắt...” – Hoài Sa
---', N' 13x19 cm', N'195 gram', NULL, 200, NULL, CAST(N'2021-02-02T00:00:00.000' AS DateTime), 150, N'ngum-dang-xuoi-ngan', NULL, CAST(N'2024-02-02T00:00:00.000' AS DateTime), 0, 1)
INSERT [dbo].[Sach] ([ID], [DanhMucID], [Name], [Image], [Price], [Quantity], [Sale], [MoTa], [KichThuoc], [TrongLuong], [NhaCungCapID], [SoTrang], [NhaXuatBanID], [NgayCapNhat], [SoLuongTon], [MetaTitle], [MoreImages], [TopHot], [ViewCount], [Status]) VALUES (11, 2, N'THƠ NGUYỄN BÍNH', N'/Data/Images/tho-nguyen-binh.png', CAST(378000.000 AS Decimal(18, 3)), 60, 10, N'
“Nhưng còn có một yếu tố khác, đã khiến thơ Nguyễn Bính rung động lòng người trong nhiều thế hệ, đó là âm điệu. Bất cứ người Việt nào xa nước đã lâu mà không được trở về, tình cờ nghe thấy đâu đó một âm giai ngũ cung, trong lòng không khỏi gợn lên chút gì như tiếng sóng. Và những tiếng ru, tiếng ngâm, thường cũng gợi trong lòng họ những tiếng sóng ngầm. Thơ Nguyễn Bính, là một thứ âm thanh có thể gây ra trong lòng người Việt những tiếng sóng ngầm như thế…” (Nhà phê bình THỤY KHUÊ)', N'13x19 cm', N'180 grma', NULL, 184, NULL, CAST(N'2021-08-07T00:00:00.000' AS DateTime), 150, N'tho-nguyen-binh', NULL, CAST(N'2024-02-02T00:00:00.000' AS DateTime), 0, 1)
INSERT [dbo].[Sach] ([ID], [DanhMucID], [Name], [Image], [Price], [Quantity], [Sale], [MoTa], [KichThuoc], [TrongLuong], [NhaCungCapID], [SoTrang], [NhaXuatBanID], [NgayCapNhat], [SoLuongTon], [MetaTitle], [MoreImages], [TopHot], [ViewCount], [Status]) VALUES (12, 3, N'TÝ QUẬY - TẬP 13', N'/Data/Images/ty-quay.png', CAST(36000.000 AS Decimal(18, 3)), 60, 10, N'<p>T&yacute; Quậy tập 13 tiếp tục giới thiệu 4 mẩu chuyện mới toanh về T&yacute;, T&egrave;o, T&uacute;n &ndash; bộ ba g&acirc;y cười &ldquo;trứ danh&rdquo; của x&ecirc;-ri T&yacute; Quậy. Ở tập truyện mới n&agrave;y, T&yacute; phải đương đầu với những t&igrave;nh huống v&ocirc; c&ugrave;ng &ldquo;ngặt ngh&egrave;o&rdquo; như bị bố mẹ so s&aacute;nh với &ldquo;con nh&agrave; người ta&rdquo;, với b&agrave;i tập tiếng Việt tưởng dễ m&agrave; lại kh&oacute; kh&ocirc;ng tưởng, với ng&agrave;y lễ Gi&aacute;ng Sinh v&agrave; k&igrave; nghỉ h&egrave; &ldquo;trong mơ&rdquo;. Vẫn h&agrave;i hước v&agrave; đ&aacute;ng y&ecirc;u đậm chất T&yacute; Quậy, tập truyện tranh n&agrave;y hứa hẹn mang tới cho c&aacute;c độc giả trung th&agrave;nh của T&yacute; những tr&agrave;ng cười sảng kho&aacute;i!</p>
', N'14,5x20,5 cm', N'185 gram', 1, 160, 1, NULL, 150, N'ty-quay', NULL, CAST(N'2024-02-02T00:00:00.000' AS DateTime), 0, 1)
INSERT [dbo].[Sach] ([ID], [DanhMucID], [Name], [Image], [Price], [Quantity], [Sale], [MoTa], [KichThuoc], [TrongLuong], [NhaCungCapID], [SoTrang], [NhaXuatBanID], [NgayCapNhat], [SoLuongTon], [MetaTitle], [MoreImages], [TopHot], [ViewCount], [Status]) VALUES (13, 3, N'DANH NHÂN THẾ GIỚI - NOBEL', N'/Data//Images/nhan-danh-the-gioi-nobel.png', CAST(27000.000 AS Decimal(18, 3)), 60, 10, N'Alfred Nobel sinh ra trong một gia đình trí thức. Ngay từ nhỏ Nobel đã yêu thích các môn khoa học. Yêu thích cả văn học và khoa học nhưng ông đã chọn con đường nghiên cứu khoa học vì cho rằng đó là con đường mang lại hạnh phúc, hòa bình cho nhân loại. Ông đã để lại 350 phát minh như: thuốc nổ dynamit, thiết bị biến chất lỏng thành chất rắn, sợi nhân tạo, máy cắt tự động… Đặc biệt, phát minh ra thuốc nổ dynamit của Nobel đã đưa tiến trình phát triển của nhân loại lên một bước mới. Nhưng dynamit cũng được dùng làm vũ khí chiến tranh, điều đã khiến Nobel vô cùng đau khổ, nên ông nguyện cống hiến toàn bộ tài sản cho hòa bình của thế giới.
Giải thưởng Nobel là biểu tượng, là giải thưởng cao quý thể hiện mong ước đẹp đẽ nhất của ông. Giải thưởng Nobel là nguồn động viên khích lệ, nâng bước cho các nhà khoa học tiếp tục phấn đấu, hoạt động vì khoa học và vì một thế giới hòa bình.', N'14.5x20.5 cm', N'195 gram', NULL, 160, NULL, NULL, 150, N'nhan-danh-the-gioi-nobel', NULL, CAST(N'2024-02-02T00:00:00.000' AS DateTime), 0, 1)
INSERT [dbo].[Sach] ([ID], [DanhMucID], [Name], [Image], [Price], [Quantity], [Sale], [MoTa], [KichThuoc], [TrongLuong], [NhaCungCapID], [SoTrang], [NhaXuatBanID], [NgayCapNhat], [SoLuongTon], [MetaTitle], [MoreImages], [TopHot], [ViewCount], [Status]) VALUES (14, 3, N'CHUỘT TÍP BIẾNG ĂN', N'/Data/Images/chuot-ty-bieng-an.png', CAST(225000.000 AS Decimal(18, 3)), 60, 10, N'Những câu chuyện ngộ nghĩnh, đáng yêu về Chuột Típ luôn được các bạn nhỏ trên khắp thế giới yêu thích và hào hứng đón nhận. Chuột Típ cũng giống như các bé, chú có cuộc sống hạnh phúc bên bố mẹ, có bạn thân là gấu bông Tét - đi và còn có rất nhiều đồ chơi khác nữa... Và cuộc sống xung quanh chú diễn ra vô vàn điều thú vị.

Nhờ chuột Típ, các bạn nhỏ biết đi ngủ đúng giờ, không biếng ăn, vâng lời cha mẹ, thích đi nhà trẻ, không nói dối, vui mừng đón nhận em ra đời, đánh răng hàng ngày, không đi học trễ...', N'18.5x20.5 cm', N'75 gram', NULL, 28, NULL, NULL, 150, N'chuot-ty-bieng-an', NULL, CAST(N'2024-02-02T00:00:00.000' AS DateTime), 0, 1)
INSERT [dbo].[Sach] ([ID], [DanhMucID], [Name], [Image], [Price], [Quantity], [Sale], [MoTa], [KichThuoc], [TrongLuong], [NhaCungCapID], [SoTrang], [NhaXuatBanID], [NgayCapNhat], [SoLuongTon], [MetaTitle], [MoreImages], [TopHot], [ViewCount], [Status]) VALUES (15, 4, N'NHIỆM VỤ TỐI THƯỢNG NHÀ YOZAKURA - TẬP 8', N'/Data/Images/nhiem-vu-toi-thuong.png', CAST(30000.000 AS Decimal(18, 3)), 60, 10, N'Kế hoạch “Tiền tuyến Yozakura” với mục tiêu bắt giữ Kawashita cuối cùng cũng bắt đầu!! Các anh chị em trong nhà đã cùng những người bạn điệp viên của mình nỗ lực tu luyện cho ngày quyết chiến. Taiyo được ông Ban huấn luyện đặc biệt để kích hoạt năng lực “Khai hoa”, song…', N'11,3x17,6 cm', N'135 gram', NULL, 200, NULL, NULL, 150, N'nhiem-vu-toi-thuong-nha-yozakura-tap-8', NULL, NULL, 0, 1)
INSERT [dbo].[Sach] ([ID], [DanhMucID], [Name], [Image], [Price], [Quantity], [Sale], [MoTa], [KichThuoc], [TrongLuong], [NhaCungCapID], [SoTrang], [NhaXuatBanID], [NgayCapNhat], [SoLuongTon], [MetaTitle], [MoreImages], [TopHot], [ViewCount], [Status]) VALUES (16, 4, N'THÁM TỬ LỪNG DANH CONAN - TẬP 25', N'/Data/Images/conan.png', CAST(50000.000 AS Decimal(18, 3)), 60, 10, N'Vừa mới vào trong hang động để thám hiểm, chúng tớ xui xẻo gặp ngay bọn tội phạm giết người cướp của!! Đen đủi hơn, do bất cẩn tớ còn bị một phát đạn vào bụng nên không thể đi tiếp được!! Bây giờ chỉ còn biết trông cậy vào 3 thành viên của đội thám tử nhí mà thôi... Không biết liệu chúng tớ có vượt qua được nguy hiểm này không!?', N'11.3x17.6 cm', N'140 gram', NULL, 196, NULL, NULL, 150, N'tham-tu-lung-danh-conan-tap-25', NULL, NULL, 0, 1)
INSERT [dbo].[Sach] ([ID], [DanhMucID], [Name], [Image], [Price], [Quantity], [Sale], [MoTa], [KichThuoc], [TrongLuong], [NhaCungCapID], [SoTrang], [NhaXuatBanID], [NgayCapNhat], [SoLuongTon], [MetaTitle], [MoreImages], [TopHot], [ViewCount], [Status]) VALUES (17, 4, N'DRAGON BALL FULL COLOR - PHẦN SÁU - TẬP 2', N'/Data/Images/dragon.png', CAST(69300.000 AS Decimal(18, 3)), 60, 10, N'Nếu bạn là fan của DRAGON BALL - 7 VIÊN NGỌC RỒNG và những cuộc phiêu lưu của Khỉ Con Son Goku thì DRAGON BALL FULL COLOR sẽ làm bạn thích thú hơn nữa khi 100% cuốn truyện mà chúng ta yêu thích đều CÓ MÀU! Các nhân vật sẽ xuất hiện trước mắt bạn với màu da, màu tóc, phục trang và những khung cảnh vô cùng sống động! Những màn chiến đấu đặc trưng của DRAGON BALL cũng vì thế mà trở nên hoành tráng hơn bao giờ hết!

Sau thời gian dài chuẩn bị và trao đổi với đại diện của tác giả Akira Toriyama, bộ truyện đã được NXB Kim Đồng phát hành với 100% bản quyền, phần ruột sách in màu rực rỡ trên giấy couché, có bìa áo 5 màu phản quang cực kì ấn tượng!! 
Dragon Ball Full Color có tổng cộng 32 tập, chia thành 6 phần, tương ứng với từng giai đoạn trưởng thành của Son Goku:
Phần 1: Thời niên thiếu của Son Goku (8 tập)
Phần 2: Đại ma vương Piccolo (4 tập)
Phần 3: Cuộc đổ bộ của người Saiya (3 tập)
Phần 4: Frieza Đại Đế (5 tập)
Phần 5: Truy lùng Cell Bọ Hung (6 tập)
Phần 6: Ma Buu (6 tập)', N'11.3x17.6 cm', N'280 gram', NULL, 232, NULL, NULL, 150, N'dragon-ball-full-color-phan-sau-tap-2', NULL, NULL, 0, 1)
INSERT [dbo].[Sach] ([ID], [DanhMucID], [Name], [Image], [Price], [Quantity], [Sale], [MoTa], [KichThuoc], [TrongLuong], [NhaCungCapID], [SoTrang], [NhaXuatBanID], [NgayCapNhat], [SoLuongTon], [MetaTitle], [MoreImages], [TopHot], [ViewCount], [Status]) VALUES (18, 5, N'ẨM THỰC CHINH PHỤC THẾ GIỚI - CHOCOLATE', N'/Data/Images/am-thuc-the-gioi.png', CAST(49500.000 AS Decimal(18, 3)), 60, 10, N'Trải qua mấy ngàn năm, chúng ta đã biết đến một trong những nguyên liệu có hương vị quyến rũ, làm mê đắm lòng người nhất trong nền ẩm thực nói chung và ngành đồ ngọt nói riêng, mang tên chocolate. Niềm yêu thích chocolate từ châu Mĩ, châu Âu đã lan ra thế giới nhanh hơn bất kì loại thực phẩm nào. Cacao được ví như một sản vật đến từ “thiên đường”, nhưng bằng chính sự sáng tạo của mình, con người đã biến chocolate trở thành món quà có giá trị vàng.
Cuốn sách này sẽ cùng bạn khám phá hành trình chinh phục thế giới đầy li kì và hấp dẫn của chocolate!
“Khi nếm những thanh chocolate thơm ngon, chúng ta rất dễ liên tưởng đến những gì lãng mạn nhất. Đường phố châu Âu với những quầy đồ ngọt lấp lánh. Những món quà ngọt ngào không thể thiếu vị chocolate. Nhưng liệu có mấy ai hiểu về ‘vị đắng’ của chocolate. Và những mặt trái của ngành công nghiệp đồ ngọt lớn nhất thế giới này?”
Chocolate là cuốn sách tiếp theo trong tủ sách Ẩm Thực Chinh Phục Thế Giới của Wings Books, bộ sách viết về sự ra đời của các nguyên liệu quan trọng trong ẩm thực, vai trò của chúng đối với lịch sử nhân loại, những câu chuyện thú vị trong nền ẩm thực thế giới và Việt Nam.
Ẩm Thực Chinh Phục Thế Giới – Chocolate ', N'14.5x20.5 cm', N'180 gram', NULL, 104, NULL, NULL, 150, N'am-thuc-chinh-phuc-the-gioi-chocolate', NULL, NULL, 0, 1)
INSERT [dbo].[Sach] ([ID], [DanhMucID], [Name], [Image], [Price], [Quantity], [Sale], [MoTa], [KichThuoc], [TrongLuong], [NhaCungCapID], [SoTrang], [NhaXuatBanID], [NgayCapNhat], [SoLuongTon], [MetaTitle], [MoreImages], [TopHot], [ViewCount], [Status]) VALUES (19, 5, N'DƯỢC SƯ TỰ SỰ (MANGA) - TẬP 2', N'/Data/Images/duoc-su-tu-su.png', CAST(42300.000 AS Decimal(18, 3)), 60, 10, N'Miêu Miêu trước đây vốn là một dược sư, sau khi bị hoạn quan Nhâm Thị phát hiện ra tài năng, cô đã trở thành thị nữ của vị phi tần có tên là Ngọc Diệp. Cô nhận một mệnh lệnh trực tiếp từ “Hoàng đế”, nhưng công việc mà cô được uỷ thác ấy rốt cuộc là gì...!?
Trong tập thứ 2 này, Miêu Miêu cũng hoạt động vô cùng tích cực!! Bị thôi thúc bởi niềm khát khao tri thức và tính hiếu kì cố hữu, cô bất ngờ thu hút sự chú ý của tất cả mọi người!!

* WINGS BOOKS - Thương hiệu sách trẻ của NXB Kim Đồng hân hạnh gửi đến các bạn độc giả phiên bản chuyển thể manga đặc sắc của bộ light-novel siêu ăn khách DƯỢC SƯ TỰ SỰ!
Series đã vượt mốc 13 triệu bản tại thị trường Nhật Bản, luôn thống trị bảng xếp hạng bán chạy mỗi khi ra tập mới!
Số tập: 9 (on-going)', N' 13x18 cm', N'200 gram', NULL, 178, NULL, NULL, 150, N'duoc-su-tu-su-manga-tap-2', NULL, NULL, 0, 1)
INSERT [dbo].[Sach] ([ID], [DanhMucID], [Name], [Image], [Price], [Quantity], [Sale], [MoTa], [KichThuoc], [TrongLuong], [NhaCungCapID], [SoTrang], [NhaXuatBanID], [NgayCapNhat], [SoLuongTon], [MetaTitle], [MoreImages], [TopHot], [ViewCount], [Status]) VALUES (20, 5, N'TRƯỜNG CA ACHILLES', N'/Data/Images/truong-ca.png', CAST(75000.000 AS Decimal(18, 3)), 60, 10, N'Hy Lạp vào thời hoàng kim của các anh hùng. Patroclus là một hoàng tử trẻ vụng về, bị trục xuất tới vương quốc Phthia và được nuôi dạy dưới sự che chở của vua Peleus cùng cậu con trai hoàng kim của ngài, Achilles. “Người Hy Lạp vĩ đại nhất” – mạnh mẽ, đẹp đẽ, và mang nửa dòng máu của một nữ thần – Achilles là tất cả những gì mà Patroclus không bao giờ có được. Nhưng bất chấp sự khác biệt giữa họ, hai cậu bé trở thành chiến hữu trung thành của nhau. Tình cảm giữa họ càng đậm sâu khi cả hai lớn lên thành những chàng trai trẻ, thành thạo trong kĩ nghệ chiến đấu và y dược.

Khi tin tức truyền tới rằng nàng Helen xứ Sparta đã bị bắt cóc, những chiến binh Hy Lạp, bị trói buộc bởi lời thề máu, phải nhân danh nàng mà vây hãm thành Troy. Bị cám dỗ bởi lời hứa hẹn về một số mệnh huy hoàng, Achilles tham gia hàng ngũ của họ. Bị giằng xé giữa tình yêu và nỗi lo sợ dành cho người bạn của mình, Patroclus ra trận theo Achilles. Họ không hay biết rằng các nữ thần Số Phận sẽ thử thách cả hai người họ hơn bao giờ hết và đòi hỏi một sự hi sinh khủng khiếp.

Dựa trên nền tảng của sử thi Iliad, câu chuyện về cuộc chiến thành Troy vĩ đại đã được Madeline Miller kể lại với tiết tấu dồn dập, lôi cuốn, và không kém phần xúc động, đánh dấu sự khởi đầu của một sự nghiệp rực rỡ.', N'14x22.5 cm', N'515 gram', NULL, 444, NULL, NULL, 150, N'truong-ca-achilles', NULL, NULL, 0, 1)
INSERT [dbo].[Sach] ([ID], [DanhMucID], [Name], [Image], [Price], [Quantity], [Sale], [MoTa], [KichThuoc], [TrongLuong], [NhaCungCapID], [SoTrang], [NhaXuatBanID], [NgayCapNhat], [SoLuongTon], [MetaTitle], [MoreImages], [TopHot], [ViewCount], [Status]) VALUES (21, 6, N'12 LÍ DO VÌ SAO PHẢI HỌC', N'/Data/Images/12-ly-do.png', CAST(45000.000 AS Decimal(18, 3)), 60, 10, N'Với em, việc học có khó không? 
Học là quá trình tích lũy kiến thức dần dần, từng chút một. Học không chỉ diễn ra trên lớp, khi em ngồi làm bài tập hay đọc sách, mà còn ở khắp mọi nơi, mọi lúc. Miễn là em còn tò mò, em có thể nghiên cứu về mọi thứ xung quanh, để biến những hiểu biết ấy thành trí tuệ của riêng mình.Hóa ra, từ khi được sinh ra cho đến nay, em đã không ngừng học mỗi ngày, chỉ là em không để ý mà thôi!
---
Vì sao phải đến trường? Vì sao phải học? Vì sao nên đọc sách thay vì chơi điện thoại? Những câu hỏi đó sẽ được lí giải theo cách đầy đủ, đáng yêu và thú vị nhất thông qua 3 tập sách “12 lí do” này. 
Mời các em đón đọc trọn bộ:
•    12 lí do vì sao phải học
•    12 lí do vì sao trường học rất thú vị
•    12 lí do vì sao sách thú vị hơn điện thoại', N'26x22 cm', N'135 gram', NULL, 44, NULL, NULL, 150, N'12-li-do-vi-sao-phai-hoc', NULL, NULL, 0, 1)
INSERT [dbo].[Sach] ([ID], [DanhMucID], [Name], [Image], [Price], [Quantity], [Sale], [MoTa], [KichThuoc], [TrongLuong], [NhaCungCapID], [SoTrang], [NhaXuatBanID], [NgayCapNhat], [SoLuongTon], [MetaTitle], [MoreImages], [TopHot], [ViewCount], [Status]) VALUES (22, 6, N'THẾ GIỚI TƯƠNG LAI - NUÔI NHÂN LOẠI', N'/Data/Images/nhan-loai.png', CAST(74500.000 AS Decimal(18, 3)), 60, 10, N'Từ nay đến năm 2050, các chuyên gia dự đoán dân số thế giới sẽ chạm ngưỡng 9 đến 10 tỉ người. Nhưng liệu Trái Đất có đủ nguồn lực cần thiết để đáp ứng nhu cầu lương thực, thực phẩm cho tất cả? Liệu mục tiêu xóa đói giảm nghèo và bảo vệ môi trường có thể song hành không? Nông nghiệp cần thay đổi ra sao để thích ứng với biến đổi khí hậu (hạn hán, bão tố, lũ lụt, cháy rừng,...)?
Từ sản xuất đến tiêu thụ, từ cánh đồng đến bàn ăn, từ cái cày đến đôi đũa, cả một hệ thức ăn đang biến đổi để giải bài toán nuôi nhân loại trong hiện tại và tương lai. Diện mạo của ngành nông nghiệp đã thay đổi như thế nào xuyên suốt lịch sử phát triển của nhân loại? Mời các bạn tìm hiểu trong Thế Giới Tương Lai – Nuôi Nhân Loại!', N'18,5x24 cm', N'220 gram', NULL, 84, NULL, NULL, 150, N'the-gioi-tuong-lai-nuoi-nhan-loai', NULL, NULL, 0, 1)
INSERT [dbo].[Sach] ([ID], [DanhMucID], [Name], [Image], [Price], [Quantity], [Sale], [MoTa], [KichThuoc], [TrongLuong], [NhaCungCapID], [SoTrang], [NhaXuatBanID], [NgayCapNhat], [SoLuongTon], [MetaTitle], [MoreImages], [TopHot], [ViewCount], [Status]) VALUES (23, 6, N'12 LÍ DO VÌ SAO TRƯỜNG HỌC RẤT THÚ VỊ', N'/Data/Images/12-truong.png', CAST(85500.000 AS Decimal(18, 3)), 60, 10, N'Cuộc sống học đường có gì thú vị nhỉ?
Bạn bè muôn vẻ như bộ bút chì màu.
Sân trường rộng, thỏa thích vui chơi.
Rất nhiều sách hay trong thư viện...
Ồ, tất nhiên là việc học nữa. Thỉnh thoảng sẽ có bài kiểm tra, hẳn em đã biết.
Và còn nhiều điều khác em có thể trải nghiệm ở trường!
Hãy đọc sách để xem đó là gì nhé!
---
Vì sao phải đến trường? Vì sao phải học? Vì sao nên đọc sách thay vì chơi điện thoại? Những câu hỏi đó sẽ được lí giải theo cách đầy đủ, đáng yêu và thú vị nhất thông qua 3 tập sách “12 lí do” này. 
Mời các em đón đọc trọn bộ:
•    12 lí do vì sao phải học
•    12 lí do vì sao trường học rất thú vị
•    12 lí do vì sao sách thú vị hơn điện thoại', N'26x22 cm', N'135 gram ', NULL, 44, NULL, NULL, 150, N'12-li-do-vi-sao-truong-hoc-rat-thu-vi', NULL, NULL, 0, 1)
INSERT [dbo].[Sach] ([ID], [DanhMucID], [Name], [Image], [Price], [Quantity], [Sale], [MoTa], [KichThuoc], [TrongLuong], [NhaCungCapID], [SoTrang], [NhaXuatBanID], [NgayCapNhat], [SoLuongTon], [MetaTitle], [MoreImages], [TopHot], [ViewCount], [Status]) VALUES (24, 7, N'CON CHIM XANH', N'/Data/Images/con-chim.png', CAST(105000.000 AS Decimal(18, 3)), 60, 10, N'“Với “Con Chim Xanh”, Maeterlinck đã viết nên một tiên cảnh triết học. Trong chuyến đi dò tìm con chim siêu phàm, hai đứa trẻ Tyltyl và Mytyl không trải qua một cuộc phiêu lưu thường tình của các chuyện kể. Chúng không hề chạm trán với ông Trăn tinh, Hung thần Rồng,sự tàn nhẫn của các bà Tiên hay sự ranh ma của các đồ vật quỷ ám. Hành trình của chúng là một cuộc phiêu lưu “luân lí”, một cuộc tập sự vươn lên khôn lớn. Chúng dạo chơi giữa những thực thể và những phúng dụ.” LÉON BLUM  (Chính trị gia, Nhà phê bình văn học Pháp)

“Khi quyết định trao giải thưởng năm nay cho Maurice Maeterlinck, một tác giả đã từng được đề cử và xem xét kĩ lưỡng trong những lần trước, Viện Hàn lâm Thụy Điển căn cứ trước hết vào tính độc đáo khác thường và sâu sắc trong tài năng văn chương của ông, một văn phong khác hẳn các hình thức văn học thông thường.”( Trích Diễn từ trao giải Nobel Văn chương năm 1911 của Viện Hàn lâm Thụy Điển.', N'13x19 cm', N'220 gram', NULL, 200, NULL, NULL, 150, N'con-chim-xanh', NULL, NULL, 0, 1)
INSERT [dbo].[Sach] ([ID], [DanhMucID], [Name], [Image], [Price], [Quantity], [Sale], [MoTa], [KichThuoc], [TrongLuong], [NhaCungCapID], [SoTrang], [NhaXuatBanID], [NgayCapNhat], [SoLuongTon], [MetaTitle], [MoreImages], [TopHot], [ViewCount], [Status]) VALUES (25, 7, N'NGỤ NGÔN LA FONTAINE', N'/Data/Images/ngu-ngon.png', CAST(125000.000 AS Decimal(18, 3)), 60, 10, N'JEAN DE LA FONTAINE sinh ngày 8.7.1621 tại Château-Thierry (Pháp), trong một gia đình tiểu quý tộc. Ông có tác phẩm riêng đầu tiên được xuất bản vào năm 1664 rồi lần lượt 3 tuyển tập
với 12 cuốn thơ ngụ ngôn tiếp tục được ấn hành vào các năm 1668, 1678 và 1694. Mặc dù chịu ảnh hưởng các tác giả cổ Hi-La như Ésope, Phèdre... nhưng La Fontaine đã diễn đạt nội dung bằng ngôn ngữ thơ độc đáo, đỉnh cao. Ông được người đương thời mến mộ, được bầu vào Viện Hàn lâm. Năm 1692, ông lâm bệnh và qua đời vào ngày 13.4.1695 tại Paris. Ngoài thơ ngụ ngôn, La Fontaine còn có một số truyện ngắn, kịch, tiểu thuyết, văn chương tôn giáo như: Xử bắn Arioste, Tình yêu của Psyché và chàng trai trẻ, Xise...', N'13x19 cm', N'255 gram', NULL, 268, NULL, NULL, 150, N'ngu-ngon-la-fontaine', NULL, NULL, 0, 1)
INSERT [dbo].[Sach] ([ID], [DanhMucID], [Name], [Image], [Price], [Quantity], [Sale], [MoTa], [KichThuoc], [TrongLuong], [NhaCungCapID], [SoTrang], [NhaXuatBanID], [NgayCapNhat], [SoLuongTon], [MetaTitle], [MoreImages], [TopHot], [ViewCount], [Status]) VALUES (26, 7, N'NHỮNG NGÀY THỨ BA VỚI THẦY MORRIE', N'/Data/Images/nhung-ngay-thu-3.png', CAST(85000.000 AS Decimal(18, 3)), 60, 10, N'Lớp học cuối cùng trong đời vị giáo sư già của tôi diễn ra mỗi tuần một lần, tại nhà thầy, bên cửa sổ phòng làm việc nơi thầy có thể thấy cây dâm bụt nhỏ trổ hoa hồng tươi. Lớp học diễn ra vào thứ Ba. Không cần cuốn sách nào. Môn học mang tên Ý Nghĩa Cuộc Đời. Và người thầy đúc kết từ chính kinh nghiệm đời mình để xây giáo án.

Cuốn sách Những ngày thứ Ba với thầy Morrie đã được xuất bản bằng ba mươi mốt thứ tiếng ở ba mươi sáu quốc gia, được nhiều trường tiểu học, trung học và đại học khắp thế giới đưa vào chương trình giảng dạy. Cuốn sách cũng được chuyển thể thành kịch và phim truyền hình.', N'14,5x20,5 cm', N'275 gram', NULL, 240, NULL, NULL, 150, N'nhung-ngay-thu-ba-voi-thay-morrie', NULL, NULL, 0, 1)
INSERT [dbo].[Sach] ([ID], [DanhMucID], [Name], [Image], [Price], [Quantity], [Sale], [MoTa], [KichThuoc], [TrongLuong], [NhaCungCapID], [SoTrang], [NhaXuatBanID], [NgayCapNhat], [SoLuongTon], [MetaTitle], [MoreImages], [TopHot], [ViewCount], [Status]) VALUES (27, 7, N'MỘT NGÀY SAU CUỐI', N'/Data/Images/ngay-sau-cuoi.png', CAST(56700.000 AS Decimal(18, 3)), 60, 10, N'Bạn đã bao giờ đánh mất một người mình yêu thương, để rồi khao khát được ban tặng thêm một lần trò chuyện, thêm một cơ hội bù đắp cho quãng thời gian bạn đã bỏ lỡ, vì nghiễm nhiên tưởng rằng người ấy sẽ bên bạn mãi mãi? Nếu đã từng, hẳn bạn sẽ biết rằng tuy cuộc đời còn ngày rộng tháng dài, nhưng tất thảy đều không sánh bằng một ngày đã xa mà bạn hằng mong được có lại.
Sẽ ra sao nếu bạn có thể lấy lại một ngày trong dĩ vãng ấy?
Cuốn sách MỘT NGÀY SAU CUỐI là câu chuyện về một người mẹ và một người con trai, về tình mẫu tử bao la vượt qua giới hạn của một kiếp người.
MITCH ALBOM là tác giả sách, nhà báo và người dẫn chương trình phát thanh nổi tiếng, thành viên nhiều hội từ thiện. Ông sáng lập và điều hành hai tổ chức từ thiện ở nội đô Detroit (Mĩ): The Dream Fund - giúp đỡ thanh thiếu niên có hoàn cảnh khó khăn được học nghệ thuật, và A Time to Help - chương trình tình nguyện hằng tháng. Ông sống với vợ mình - bà Janine - ở Michigan, Mĩ.', N'14,5x20,5 cm', N'265 gram', NULL, 228, NULL, NULL, 150, N'mot-ngay-sau-cuoi', NULL, NULL, 0, 1)
INSERT [dbo].[Sach] ([ID], [DanhMucID], [Name], [Image], [Price], [Quantity], [Sale], [MoTa], [KichThuoc], [TrongLuong], [NhaCungCapID], [SoTrang], [NhaXuatBanID], [NgayCapNhat], [SoLuongTon], [MetaTitle], [MoreImages], [TopHot], [ViewCount], [Status]) VALUES (28, 7, N'CHIKA YÊU DẤU', N'/Data/Images/chika.png', CAST(72000.000 AS Decimal(18, 3)), 60, 10, N'Sinh ra giữa cuồng quay của thảm họa động đất Haiti năm 2010, cô bé Chika Jeune mồ côi mẹ được gửi đến cô nhi viện Hãy Vững Tin Haiti do chính tác giả Mitch Albom điều hành tại thủ đô Port-au-Prince. Mạnh mẽ và tự tin, Chika đã nhanh chóng hòa đồng với đám trẻ nơi đây.
Tuy vậy, khi lên năm tuổi, Chika được chẩn đoán mắc phải căn bệnh u não hiếm gặp mà ở Haiti, “không ai chữa được cho cô bé.” Vợ chồng tác giả Mitch Albom đã đưa Chika về thành phố Detroit, Mĩ để tìm cách chữa trị, và rồi dần dần, Chika đã trở thành mảnh ghép vĩnh cửu của bức tranh gia đình đầy ấm áp và yêu thương.
MITCH ALBOM là tác giả sách, nhà báo và người dẫn chương trình phát thanh nổi tiếng, thành viên nhiều hội từ thiện. Ông sáng lập và điều hành hai tổ chức từ thiện ở nội đô Detroit (Mĩ): The Dream Fund - giúp đỡ thanh thiếu niên có hoàn cảnh khó khăn được học nghệ thuật, và A Time to Help - chương trình tình nguyện hằng tháng. Ông sống với vợ mình - bà Janine - ở Michigan, Mĩ.', N'14,5x20,5 cm', N'265 gram', NULL, 228, NULL, NULL, 150, N'chika-yeu-dau', NULL, NULL, 0, 1)
INSERT [dbo].[Sach] ([ID], [DanhMucID], [Name], [Image], [Price], [Quantity], [Sale], [MoTa], [KichThuoc], [TrongLuong], [NhaCungCapID], [SoTrang], [NhaXuatBanID], [NgayCapNhat], [SoLuongTon], [MetaTitle], [MoreImages], [TopHot], [ViewCount], [Status]) VALUES (37, 4, N'DORAEMON TUYỂN TẬP TRANH TRUYỆN MÀU - TẬP 3', N'/Data/Images/doremon-t3.png', CAST(50000.000 AS Decimal(18, 3)), 60, 10, N'Tuyển tập tranh truyện màu về chú mèo máy thông minh đến từ tương lai Doraemon và những người bạn…

“Doraemon tuyển tập tranh truyện màu” ra mắt độc giả dựa trên nguyên tắc tuyệt đối trung thành với bản thảo gốc. Vì thế trong truyện có phần in màu, có phần chỉ in hai màu đỏ - đen, và có cả những trang đen trắng. “Tuyển tập tranh truyện màu” sẽ giúp độc giả khám phá rộng hơn, sâu sắc hơn về thế giới của chú mèo máu Doraemon.

Chúc các bạn có những giờ phút thư giãn vui vẻ cùng chú mèo máy dễ thương.', N'14.5x20.5 cm', N'195 gram', NULL, 160, NULL, NULL, 150, N'doraemon-tuyen-tap-tranh-truyen-mau-tap-3', NULL, NULL, 0, 1)
INSERT [dbo].[Sach] ([ID], [DanhMucID], [Name], [Image], [Price], [Quantity], [Sale], [MoTa], [KichThuoc], [TrongLuong], [NhaCungCapID], [SoTrang], [NhaXuatBanID], [NgayCapNhat], [SoLuongTon], [MetaTitle], [MoreImages], [TopHot], [ViewCount], [Status]) VALUES (38, 4, N'DORAEMON TUYỂN TẬP TRANH TRUYỆN MÀU - TẬP 1', N'/Data/Images/doremon-t1.png', CAST(50000.000 AS Decimal(18, 3)), 60, 10, N'
Tuyển tập tranh truyện màu về chú mèo máy thông minh đến từ tương lai Doraemon và những người bạn…

“Doraemon tuyển tập tranh truyện màu” ra mắt độc giả dựa trên nguyên tắc tuyệt đối trung thành với bản thảo gốc. Vì thế trong truyện có phần in màu, có phần chỉ in hai màu đỏ - đen, và có cả những trang đen trắng. “Tuyển tập tranh truyện màu” sẽ giúp độc giả khám phá rộng hơn, sâu sắc hơn về thế giới của chú mèo máu Doraemon.

Chúc các bạn có những giờ phút thư giãn vui vẻ cùng chú mèo máy dễ thương.', N'14.5x20.5 cm', N'195 gram', NULL, 160, NULL, NULL, 150, N'doraemon-tuyen-tap-tranh-truyen-mau-tap-1', NULL, NULL, 0, 1)
INSERT [dbo].[Sach] ([ID], [DanhMucID], [Name], [Image], [Price], [Quantity], [Sale], [MoTa], [KichThuoc], [TrongLuong], [NhaCungCapID], [SoTrang], [NhaXuatBanID], [NgayCapNhat], [SoLuongTon], [MetaTitle], [MoreImages], [TopHot], [ViewCount], [Status]) VALUES (39, 4, N'DORAEMON TUYỂN TẬP TRANH TRUYỆN MÀU - TẬP 2', N'/Data/Images/doremon-t2.png', CAST(50000.000 AS Decimal(18, 3)), 60, 10, N'Tuyển tập tranh truyện màu về chú mèo máy thông minh đến từ tương lai Doraemon và những người bạn…

“Doraemon tuyển tập tranh truyện màu” ra mắt độc giả dựa trên nguyên tắc tuyệt đối trung thành với bản thảo gốc. Vì thế trong truyện có phần in màu, có phần chỉ in hai màu đỏ - đen, và có cả những trang đen trắng. “Tuyển tập tranh truyện màu” sẽ giúp độc giả khám phá rộng hơn, sâu sắc hơn về thế giới của chú mèo máu Doraemon.

Chúc các bạn có những giờ phút thư giãn vui vẻ cùng chú mèo máy dễ thương.', N'14.5x20.5 cm', N'195 gram', NULL, 160, NULL, NULL, 150, N'doraemon-tuyen-tap-tranh-truyen-mau-tap-2', NULL, NULL, 0, 1)
INSERT [dbo].[Sach] ([ID], [DanhMucID], [Name], [Image], [Price], [Quantity], [Sale], [MoTa], [KichThuoc], [TrongLuong], [NhaCungCapID], [SoTrang], [NhaXuatBanID], [NgayCapNhat], [SoLuongTon], [MetaTitle], [MoreImages], [TopHot], [ViewCount], [Status]) VALUES (40, 4, N'DORAEMON TRANH TRUYỆN MÀU - DORAEMI VÀ ĐỘI QUÂN DORAEMON - 7 BÍ ẨN CỦA TRƯỜNG ĐÀO TẠO ROBOT', N'/Data/Images/7-bi-an-truong-hoc.png', CAST(60000.000 AS Decimal(18, 3)), 60, 10, N'Thế kỉ 22 Doraemon trở lại trường đào tạo robot để dự lễ tốt nghiệp của em gái Dorami. Đúng lúc đó mây đen bao phủ, rất nhiều sự việc kì lạ xảy ra, ngay cả Doramon cũng bị hút vào một sinh vật bí ẩn…
Đây là phiên bản tranh truyện tranh màu được vẽ lại từ tập phim hoạt hình cùng tên của tác giả Fujiko.F.Fujio.', N'12.5x17.6 cm', N'120 gram', NULL, 124, NULL, NULL, 150, N'doraemon-tranh-truyen-mau-doraemi-va-doi-quan-doraemon-7-bi-an-cua-truong-dao-tao-robot', NULL, NULL, 0, 1)
INSERT [dbo].[Sach] ([ID], [DanhMucID], [Name], [Image], [Price], [Quantity], [Sale], [MoTa], [KichThuoc], [TrongLuong], [NhaCungCapID], [SoTrang], [NhaXuatBanID], [NgayCapNhat], [SoLuongTon], [MetaTitle], [MoreImages], [TopHot], [ViewCount], [Status]) VALUES (41, 4, N'DORAEMON MOVIE STORY - NOBITA VÀ VÙNG ĐẤT LÝ TƯỞNG TRÊN BẦU TRỜI', N'/Data/Images/vung-dat-ly-tuong.png', CAST(95000.000 AS Decimal(18, 3)), 60, 10, N'Câu chuyện bắt đầu khi Nobita tìm thấy một hòn đảo hình lưỡi liềm trên trời mây. Ở nơi đó, tất cả đều hoàn hảo… đến mức cậu nhóc mê ngủ ngày như Nobita cũng có thể trở thành một thần đồng toán học, một siêu sao thể thao! Doraemon và nhóm bạn đã cùng sử dụng một món bảo bối độc đáo chưa từng xuất hiện trước đây để đến với vương quốc tuyệt vời này. Cùng với những người bạn ở đây, đặc biệt là chàng robot mèo Sonya, cả hội đã có chuyến hành trình tới vương quốc trên mây tuyệt vời… cho đến khi những bí mật đằng sau vùng đất lý tưởng này được hé lộ! 
Mời các bạn cùng đón đọc tập truyện tranh màu - mở màn cho tủ sách DORAEMON MOVIE STORY của NXB Kim Đồng - được chuyển thể từ Phim điện ảnh Doraemon 2023: Nobita Và Vùng Đất Lý Tưởng Trên Bầu Trời - Tác phẩm đạt kỉ lục doanh thu "triệu vé" tại Việt Nam thời gian qua nhé!!', N'13x18 cm', N'140 gram', NULL, 144, NULL, NULL, 150, N'doraemon-movie-story-nobita-va-vung-dat-ly-tuong-tren-bau-troi', NULL, NULL, 0, 1)
INSERT [dbo].[Sach] ([ID], [DanhMucID], [Name], [Image], [Price], [Quantity], [Sale], [MoTa], [KichThuoc], [TrongLuong], [NhaCungCapID], [SoTrang], [NhaXuatBanID], [NgayCapNhat], [SoLuongTon], [MetaTitle], [MoreImages], [TopHot], [ViewCount], [Status]) VALUES (42, 3, N'STEVE VÀ STEVE', N'/Data/Images/steve.png', CAST(40000.000 AS Decimal(18, 3)), 60, 10, N'Một ngày nọ, hai chú chim cùng tên là Steve gặp nhau. Ai cũng muốn xưng tên và chẳng chịu thua kém người còn lại. Thế là cả hai cùng cạnh tranh để xem ai xứng đáng với tên Steve nhất. 
Sau cùng, ai sẽ là người chiến thắng?
---
Morag Hood là tác giả và họa sĩ minh họa sách thiếu nhi đến từ Edinburgh (Scotland). Cô có bằng Thạc sĩ về Minh họa sách thiếu nhi của Trường Nghệ thuật Cambridge, và từng đoạt nhiều giải thưởng uy tín về minh họa sách.
Các tác phẩm của cô có phong cách kể chuyện độc đáo, phần lời và tranh hòa quyện vào nhau, đầy hài hước và bất ngờ. Qua 7 cuốn sách tranh rực rỡ sắc màu, các bạn nhỏ sẽ được phiêu lưu vào thế giới sáng tạo rất thú vị của Morag Hood!', N'21x21 cm', N'120 gram', NULL, 32, NULL, NULL, 150, N'steve-va-steve', NULL, NULL, 0, 1)
INSERT [dbo].[Sach] ([ID], [DanhMucID], [Name], [Image], [Price], [Quantity], [Sale], [MoTa], [KichThuoc], [TrongLuong], [NhaCungCapID], [SoTrang], [NhaXuatBanID], [NgayCapNhat], [SoLuongTon], [MetaTitle], [MoreImages], [TopHot], [ViewCount], [Status]) VALUES (43, 2, N'ĐẤT RỪNG PHƯƠNG NAM', N'/Data/Images/dat-rung-phuong-nam.png', CAST(81000.000 AS Decimal(18, 3)), 60, 10, N'“Được viết bằng trái tim nhạy cảm, tài quan sát tinh tế, hiểu biết sâu sắc và vốn sống dồi dào, Đất rừng phương Nam là một trong những tác phẩm viết về Nam bộ xuất sắc nhất, làm bật lên trọn vẹn vẻ đẹp con người và thiên nhiên nơi đây. Mỗi lần đọc là mỗi lần tình yêu xứ sở được khơi gợi đến nao lòng.”

(Nhà văn Anh Đức)

Tác phẩm làm nên tên tuổi nhà văn Đoàn Giỏi, gắn liền với thời điểm ra đời của NXB Kim Đồng (tháng 6 năm 1957)

Tác phẩm tái bản nhiều lần, dịch ra nhiều thứ tiếng và được dựng thành phim truyền hình nhiều tập Đất phương Nam.

 

Nhà văn Đoàn Giỏi (1925 – 1989)

Quê quán: Tân Hiệp, Châu Thành, tỉnh Tiền Giang.

Hội viên sáng lập Hội Nhà văn Việt Nam từ năm 1957.

Giải thưởng Nhà nước về Văn học Nghệ thuật, năm 2001.

Các tác phẩm nổi tiếng do NXB Kim Đồng xuất bản: Đất rừng phương Nam, Những chuyện lạ về cá, Tê giác trong ngàn xanh, Cá bống mú, Rừng đêm xào xạc, Hoa hướng dương, Người thủy thủ già trên hòn đảo lưu đày, Cuộc truy tầm kho vũ khí, Trần Văn Ơn.', N' 14.5x20.5 cm', N'335 gram', NULL, 340, NULL, NULL, 150, N'dat-rung-phuong-nam', NULL, NULL, 0, 1)
INSERT [dbo].[Sach] ([ID], [DanhMucID], [Name], [Image], [Price], [Quantity], [Sale], [MoTa], [KichThuoc], [TrongLuong], [NhaCungCapID], [SoTrang], [NhaXuatBanID], [NgayCapNhat], [SoLuongTon], [MetaTitle], [MoreImages], [TopHot], [ViewCount], [Status]) VALUES (44, 1, N'TRẦN VĂN ƠN', N'/Data/Images/tran-van-on.png', CAST(32000.000 AS Decimal(18, 3)), 60, 10, N'Cuốn sách kể về cuộc đời hào hùng, nhiệt huyết của người học sinh trường Pétrus Ký Trần Văn Ơn. Trong những năm 1950, khi phong trào yêu nước sôi sục khắp Nam Bộ, cùng với học sinh - sinh viên Sài Gòn, TRẦN VĂN ƠN đã hăng hái tham gia đấu tranh chính trị, xuống đường chống chính phủ bù nhìn của Bảo Đại và sự thống trị của thực dân Pháp. Ngày 9 tháng 1 năm 1950, một cuộc biểu tình lớn đã xảy ra. Bị đàn áp dã man nhưng Trần Văn Ơn và bạn bè vẫn hiên ngang tiến về phía trước… Kẻ thù đã nổ súng… Khi đó, Trần Văn Ơn chuẩn bị bước sang tuổi mười chín…

 ', N'13.5x20.5 cm', N'135 gram', NULL, 130, NULL, NULL, 150, N'tran-van-on', NULL, NULL, 0, 1)
INSERT [dbo].[Sach] ([ID], [DanhMucID], [Name], [Image], [Price], [Quantity], [Sale], [MoTa], [KichThuoc], [TrongLuong], [NhaCungCapID], [SoTrang], [NhaXuatBanID], [NgayCapNhat], [SoLuongTon], [MetaTitle], [MoreImages], [TopHot], [ViewCount], [Status]) VALUES (45, 1, N'CHỊ SÁU Ở CÔN ĐẢO', N'/Data/Images/chi-sau-con-dao.png', CAST(25000.000 AS Decimal(18, 3)), 60, 10, N'Tuổi mười lăm, chị Võ Thị Sáu hăng hái tham gia cách mạng. Với lòng can cảm và trí thông minh, chị đã lập được nhiều chiến công. Một ngày, không may chị bị sa vào tay giặc… Qua lời kể của tác giả Lê Quang Vịnh, chúng ta hiểu rõ hơn về quãng thời gian chị bị kẻ thù giam cầm, đày đọa và những giây phút cuối cùng của chị tại Côn Đảo “địa ngục trần gian”. Người con gái Đất Đỏ kiên trung, bất khuất ấy đã hi sinh nhưng thôn xóm, quê hương, đất nước sẽ luôn mãi nhắc nhớ đến chị…', N'13.5x20.5 cm', N'75 gram', NULL, 60, NULL, NULL, 150, N'chi-sau-o-con-dao', NULL, NULL, 0, 1)
SET IDENTITY_INSERT [dbo].[Sach] OFF
GO
SET IDENTITY_INSERT [dbo].[Silde] ON 

INSERT [dbo].[Silde] ([ID], [Image], [Link], [CreatedDate], [Status]) VALUES (1, N'/Data/Images/slide-1.png', NULL, CAST(N'2023-08-31T08:43:49.110' AS DateTime), 1)
INSERT [dbo].[Silde] ([ID], [Image], [Link], [CreatedDate], [Status]) VALUES (2, N'/Data/Images/slide-2.png', NULL, CAST(N'2023-08-31T08:43:55.093' AS DateTime), 1)
INSERT [dbo].[Silde] ([ID], [Image], [Link], [CreatedDate], [Status]) VALUES (3, N'/Data/Images/slide-3.png', NULL, CAST(N'2023-08-31T08:44:01.020' AS DateTime), 1)
INSERT [dbo].[Silde] ([ID], [Image], [Link], [CreatedDate], [Status]) VALUES (4, N'/Data/Images/slide-4.png', NULL, CAST(N'2023-08-31T08:44:05.640' AS DateTime), 1)
INSERT [dbo].[Silde] ([ID], [Image], [Link], [CreatedDate], [Status]) VALUES (5, N'/Data/Images/slide-5.png', NULL, CAST(N'2023-08-31T08:44:11.573' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Silde] OFF
GO
SET IDENTITY_INSERT [dbo].[TacGia] ON 

INSERT [dbo].[TacGia] ([ID], [TenTacGia], [Address], [TieuSu], [Phone]) VALUES (1, N'Nguyễn Huy Thắng', NULL, NULL, NULL)
INSERT [dbo].[TacGia] ([ID], [TenTacGia], [Address], [TieuSu], [Phone]) VALUES (2, N'Lê Minh Hải', NULL, NULL, NULL)
INSERT [dbo].[TacGia] ([ID], [TenTacGia], [Address], [TieuSu], [Phone]) VALUES (3, N'Hiếu Minh', NULL, NULL, NULL)
INSERT [dbo].[TacGia] ([ID], [TenTacGia], [Address], [TieuSu], [Phone]) VALUES (4, N'Minh Hiếu', NULL, NULL, NULL)
INSERT [dbo].[TacGia] ([ID], [TenTacGia], [Address], [TieuSu], [Phone]) VALUES (5, N'Tạ Duy Long', NULL, NULL, NULL)
INSERT [dbo].[TacGia] ([ID], [TenTacGia], [Address], [TieuSu], [Phone]) VALUES (6, N'Hà Thanh Phúc', NULL, NULL, NULL)
INSERT [dbo].[TacGia] ([ID], [TenTacGia], [Address], [TieuSu], [Phone]) VALUES (7, N'Dương Thụy', NULL, NULL, NULL)
INSERT [dbo].[TacGia] ([ID], [TenTacGia], [Address], [TieuSu], [Phone]) VALUES (8, N'Hàn Mặc Tử', NULL, NULL, NULL)
INSERT [dbo].[TacGia] ([ID], [TenTacGia], [Address], [TieuSu], [Phone]) VALUES (9, N'Nguyễn Bính', NULL, NULL, NULL)
INSERT [dbo].[TacGia] ([ID], [TenTacGia], [Address], [TieuSu], [Phone]) VALUES (10, N'Hoài Sa', NULL, NULL, NULL)
INSERT [dbo].[TacGia] ([ID], [TenTacGia], [Address], [TieuSu], [Phone]) VALUES (11, N'Đào Hải', NULL, NULL, NULL)
INSERT [dbo].[TacGia] ([ID], [TenTacGia], [Address], [TieuSu], [Phone]) VALUES (12, N'Hoài Thu', NULL, NULL, NULL)
INSERT [dbo].[TacGia] ([ID], [TenTacGia], [Address], [TieuSu], [Phone]) VALUES (13, N'Quang Toàn', NULL, NULL, NULL)
INSERT [dbo].[TacGia] ([ID], [TenTacGia], [Address], [TieuSu], [Phone]) VALUES (14, N' Neung In Publishing Company', NULL, NULL, NULL)
INSERT [dbo].[TacGia] ([ID], [TenTacGia], [Address], [TieuSu], [Phone]) VALUES (15, N' Hitsuji Gondaira', NULL, NULL, NULL)
INSERT [dbo].[TacGia] ([ID], [TenTacGia], [Address], [TieuSu], [Phone]) VALUES (16, N' Marco Campanella', NULL, NULL, NULL)
INSERT [dbo].[TacGia] ([ID], [TenTacGia], [Address], [TieuSu], [Phone]) VALUES (17, N' Anna Casalis', NULL, NULL, NULL)
INSERT [dbo].[TacGia] ([ID], [TenTacGia], [Address], [TieuSu], [Phone]) VALUES (18, N' Gosho Aoyama', NULL, NULL, NULL)
INSERT [dbo].[TacGia] ([ID], [TenTacGia], [Address], [TieuSu], [Phone]) VALUES (19, N'Bảo Anh', NULL, NULL, NULL)
INSERT [dbo].[TacGia] ([ID], [TenTacGia], [Address], [TieuSu], [Phone]) VALUES (20, N'Ngọc Hân', NULL, NULL, NULL)
INSERT [dbo].[TacGia] ([ID], [TenTacGia], [Address], [TieuSu], [Phone]) VALUES (21, N' Natsu Hyuuga', NULL, NULL, NULL)
INSERT [dbo].[TacGia] ([ID], [TenTacGia], [Address], [TieuSu], [Phone]) VALUES (22, N'Touco Shino', NULL, NULL, NULL)
INSERT [dbo].[TacGia] ([ID], [TenTacGia], [Address], [TieuSu], [Phone]) VALUES (23, N' Itsuki Nanao', NULL, NULL, NULL)
INSERT [dbo].[TacGia] ([ID], [TenTacGia], [Address], [TieuSu], [Phone]) VALUES (24, N'Nekokurage', NULL, NULL, NULL)
INSERT [dbo].[TacGia] ([ID], [TenTacGia], [Address], [TieuSu], [Phone]) VALUES (25, N' Madeline Miller', NULL, NULL, NULL)
INSERT [dbo].[TacGia] ([ID], [TenTacGia], [Address], [TieuSu], [Phone]) VALUES (26, N' Noh Eun Joo', NULL, NULL, NULL)
INSERT [dbo].[TacGia] ([ID], [TenTacGia], [Address], [TieuSu], [Phone]) VALUES (27, N' Julie Lardon', NULL, NULL, NULL)
INSERT [dbo].[TacGia] ([ID], [TenTacGia], [Address], [TieuSu], [Phone]) VALUES (28, N' Camille Perreau', NULL, NULL, NULL)
INSERT [dbo].[TacGia] ([ID], [TenTacGia], [Address], [TieuSu], [Phone]) VALUES (29, N'Maurice Maeterlinck', NULL, NULL, NULL)
INSERT [dbo].[TacGia] ([ID], [TenTacGia], [Address], [TieuSu], [Phone]) VALUES (30, N' Jean de La Fontaine', NULL, NULL, NULL)
INSERT [dbo].[TacGia] ([ID], [TenTacGia], [Address], [TieuSu], [Phone]) VALUES (31, N'Mitch Albom', NULL, NULL, NULL)
INSERT [dbo].[TacGia] ([ID], [TenTacGia], [Address], [TieuSu], [Phone]) VALUES (32, N' Akira Toriyama', NULL, NULL, NULL)
INSERT [dbo].[TacGia] ([ID], [TenTacGia], [Address], [TieuSu], [Phone]) VALUES (33, N' Fujiko F Fujio', NULL, NULL, NULL)
INSERT [dbo].[TacGia] ([ID], [TenTacGia], [Address], [TieuSu], [Phone]) VALUES (34, N'Morag Hood', NULL, NULL, NULL)
INSERT [dbo].[TacGia] ([ID], [TenTacGia], [Address], [TieuSu], [Phone]) VALUES (35, N'Nguyễn Việt Hà', NULL, NULL, NULL)
INSERT [dbo].[TacGia] ([ID], [TenTacGia], [Address], [TieuSu], [Phone]) VALUES (36, N'Đoàn Giỏi', NULL, NULL, NULL)
INSERT [dbo].[TacGia] ([ID], [TenTacGia], [Address], [TieuSu], [Phone]) VALUES (37, N' Lê Quang Vịnh', NULL, N'Lê Quang Vịnh từng là một người cộng sản trẻ, một thanh niên trí thức hoạt động trong phong trào học sinh, sinh viên Sài Gòn - Gia Định trước ngày miền Nam giải phóng. Tên của ông đã đi vào lịch sử đấu tranh của thanh niên, sinh viên học sinh Việt Nam những năm 60 sôi sục của thế kỷ XX. [i]

Lê Quang Vịnh sinh năm 1936 tại làng Xuân Hoà, xã Hương Long, TP Huế. [ii] Năm ông Vịnh lên 14 tuổi thì bố ông là Lê Quang Dực bị lính Pháp bắn chết. Nợ nước, thù nhà khiến ông quyết định chọn cho mình con đường cách mạng. [iii]

Ngay năm ấy, 1950, ông tham gia phong trào học sinh kháng chiến Huế và bị bắt với tội danh “Tham gia đoàn học sinh kháng chiến Huế, rải truyền đơn chống chế độ, chống quan Pháp”. Ông bị giam ở nhà lao Phủ Thừa 7 tháng. [iv]

Sau 20/7/1954, theo sự giới thiệu của thầy Tôn Thất Dương Kỵ, Lê Quang Vịnh đến một địa điểm bên bờ sông Hương để được kết nạp vào tổ chức thanh niên cách mạng hoạt động bí mật giữa lòng TP Huế. [v]

Ngày 1/8/1954, tham gia đoàn biểu tình của Nhân dân Huế mừng Hiệp định Geneve, Lê Quang Vịnh bị bắt lần thứ hai. [vi]

Đến năm 1955, ông đậu tú tài toàn phần nhưng không đi học mà vào làm việc tại tờ Báo Ngày Mai (một tờ báo cách mạng), với vai trò thư ký tòa soạn. [vii] Tháng 9/1955, Lê Quang Vịnh bị bắt lần thứ ba và giam ở lao Thừa Thiên (gọi là Trung tâm Cải huấn Thừa Thiên) 1 năm với tội “Việt cộng tham gia phong trào hoà bình Huế, làm thư ký toà soạn ấn phẩm Ngày Mai, đấu tranh đòi hiệp thương thống nhất, chống lại Chính phủ quốc gia”. [viii] 

Bị cấm hoạt động cách mạng tại Huế, năm 1957, lúc mới 21 tuổi, ông chuyển vào Sài Gòn. Tại đây, ông tham gia Đoàn Thanh niên Lao động và đến năm 24 tuổi được kết nạp vào Đảng. [ix]

Là đảng viên cộng sản, ông Vịnh tham gia gánh vác nhiều vị trí quan trọng của tổ chức giao như Bí thư Chi bộ sinh viên các trường đại học ở Sài Gòn, Tổng Thư ký Hội Liên hiệp sinh viên, học sinh khu Sài Gòn - Gia Định, đồng thời, ông cũng tích cực học tập. [x]

24 tuổi, ông tốt nghiệp thủ khoa trường ĐH Sư phạm Sài Gòn (khoa Toán) và hoàn thành văn bằng chính quy Cử nhân Giáo khoa Toán học do trường ĐH Khoa học Sài Gòn cấp. Trong thời gian đó, ông ghi danh học thêm những trường khác như ĐH Luật khoa, ĐH Văn khoa Sài Gòn, chủ yếu là để liên hệ, quy tụ sinh viên nhiều trường trong thành phố. Do đỗ thủ khoa nên Lê Quang Vịnh được quyền chọn trường dạy học. Và ngôi trường danh giá hàng đầu miền Nam hồi ấy là trường Trung học Pétrus Ký Sài Gòn (nay là trường THPT chuyên Lê Hồng Phong TP.HCM) đã chào đón Lê Quang Vịnh vào đội ngũ giáo sư cử nhân thời đó còn rất hiếm hoi. [xi] Ông cũng là một người hiểu biết rộng, lịch lãm, có nhiều biệt tài như viết văn, làm thơ, sáng tác ca khúc.

Mùa hè năm 1961, theo yêu cầu của Khu ủy, giáo sư Lê Quang Vịnh ra căn cứ của Khu Đoàn Sài Gòn - Gia Định để chuẩn bị thoát ly. Từ nơi đây, ông viết báo cáo gửi  sinh viên quốc tế và báo cáo phong trào đấu tranh của sinh viên miền Nam. Một đêm tháng 8/1961, căn cứ Khu đoàn Sài Gòn - Gia Ðịnh ở Ðức Hoà bị địch tập kích. Địch tìm thấy hai bản báo cáo chưa kịp gửi đi và phát hiện giáo sư trường Pétrus Ký Lê Quang Vịnh chính là người đã viết hai bản báo cáo nói trên với chức danh “Tổng thư ký Hội Liên hiệp Sinh viên Học sinh khu Sài Gòn-Gia Định”.[xii]

 ', NULL)
SET IDENTITY_INSERT [dbo].[TacGia] OFF
GO
SET IDENTITY_INSERT [dbo].[TaiKhoan] ON 

INSERT [dbo].[TaiKhoan] ([ID], [GroupID], [TaiKhoan], [Phone], [Email], [Password], [Address], [GioiTinh], [NgaySinh], [Status], [FullName]) VALUES (1, N'ADMIN', N'admin', N'034 587 9522', N't@gmail.com', N'202cb962ac59075b964b07152d234b70', N'hà nội', N'Nữ', CAST(N'2002-05-09T00:00:00.000' AS DateTime), 1, N'admin')
INSERT [dbo].[TaiKhoan] ([ID], [GroupID], [TaiKhoan], [Phone], [Email], [Password], [Address], [GioiTinh], [NgaySinh], [Status], [FullName]) VALUES (4, N'MEMBER', N'thuan', N'025 698 7412', N'W@gmail.com', N'202cb962ac59075b964b07152d234b70', N'hà nội', N'Nam', CAST(N'2002-08-08T00:00:00.000' AS DateTime), 1, N'thuận')
INSERT [dbo].[TaiKhoan] ([ID], [GroupID], [TaiKhoan], [Phone], [Email], [Password], [Address], [GioiTinh], [NgaySinh], [Status], [FullName]) VALUES (7, N'MEMBER', N'tung', N'035 897 4123', N'tung@gmail.com', N'b5f03a04379a0ace90c2895218b7da3e', N'nam định', N'Nam', CAST(N'2002-09-09T00:00:00.000' AS DateTime), 1, N'Trần')
INSERT [dbo].[TaiKhoan] ([ID], [GroupID], [TaiKhoan], [Phone], [Email], [Password], [Address], [GioiTinh], [NgaySinh], [Status], [FullName]) VALUES (11, N'MEMBER', N'adminqqq', N'035 555 6666', N't@gmail.com', N'097218ddbe9b40d2ee5f83c17bfc5bc7', N'hà nội', N'Nữ', CAST(N'2023-09-16T00:00:00.000' AS DateTime), 1, N'Tr?n Xuân Tùng')
INSERT [dbo].[TaiKhoan] ([ID], [GroupID], [TaiKhoan], [Phone], [Email], [Password], [Address], [GioiTinh], [NgaySinh], [Status], [FullName]) VALUES (12, N'MOD', N'admin177', N'081 145 8954', N'tbgn@gmail.com', N'9d862f95e489e2294ab8b1c1c9e78ad3', N'ha noi', N'Nữ', CAST(N'2023-09-24T00:00:00.000' AS DateTime), 1, N'admin')
INSERT [dbo].[TaiKhoan] ([ID], [GroupID], [TaiKhoan], [Phone], [Email], [Password], [Address], [GioiTinh], [NgaySinh], [Status], [FullName]) VALUES (13, N'MEMBER', N'ánh', N'081 145 8954', N't@gmail.com', N'b5f03a04379a0ace90c2895218b7da3e', N'ha noi', N'Nữ', CAST(N'2023-09-22T00:00:00.000' AS DateTime), 0, N'admin')
SET IDENTITY_INSERT [dbo].[TaiKhoan] OFF
GO
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [Vitri]) VALUES (3, 1, NULL, NULL)
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [Vitri]) VALUES (3, 2, NULL, NULL)
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [Vitri]) VALUES (4, 2, NULL, NULL)
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [Vitri]) VALUES (4, 3, NULL, NULL)
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [Vitri]) VALUES (5, 2, NULL, NULL)
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [Vitri]) VALUES (5, 35, NULL, NULL)
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [Vitri]) VALUES (6, 4, NULL, NULL)
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [Vitri]) VALUES (6, 5, NULL, NULL)
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [Vitri]) VALUES (7, 6, NULL, NULL)
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [Vitri]) VALUES (8, 7, NULL, NULL)
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [Vitri]) VALUES (9, 8, NULL, NULL)
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [Vitri]) VALUES (10, 10, NULL, NULL)
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [Vitri]) VALUES (11, 9, NULL, NULL)
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [Vitri]) VALUES (12, 11, NULL, NULL)
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [Vitri]) VALUES (12, 12, NULL, NULL)
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [Vitri]) VALUES (12, 13, NULL, NULL)
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [Vitri]) VALUES (13, 14, NULL, NULL)
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [Vitri]) VALUES (14, 16, NULL, NULL)
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [Vitri]) VALUES (14, 17, NULL, NULL)
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [Vitri]) VALUES (15, 15, NULL, NULL)
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [Vitri]) VALUES (16, 18, NULL, NULL)
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [Vitri]) VALUES (17, 32, NULL, NULL)
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [Vitri]) VALUES (18, 19, NULL, NULL)
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [Vitri]) VALUES (18, 20, NULL, NULL)
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [Vitri]) VALUES (19, 21, NULL, NULL)
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [Vitri]) VALUES (19, 22, NULL, NULL)
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [Vitri]) VALUES (19, 23, NULL, NULL)
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [Vitri]) VALUES (19, 24, NULL, NULL)
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [Vitri]) VALUES (20, 25, NULL, NULL)
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [Vitri]) VALUES (21, 26, NULL, NULL)
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [Vitri]) VALUES (22, 27, NULL, NULL)
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [Vitri]) VALUES (22, 28, NULL, NULL)
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [Vitri]) VALUES (23, 26, NULL, NULL)
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [Vitri]) VALUES (24, 29, NULL, NULL)
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [Vitri]) VALUES (25, 30, NULL, NULL)
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [Vitri]) VALUES (26, 31, NULL, NULL)
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [Vitri]) VALUES (27, 31, NULL, NULL)
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [Vitri]) VALUES (28, 31, NULL, NULL)
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [Vitri]) VALUES (37, 33, NULL, NULL)
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [Vitri]) VALUES (38, 33, NULL, NULL)
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [Vitri]) VALUES (39, 33, NULL, NULL)
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [Vitri]) VALUES (40, 33, NULL, NULL)
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [Vitri]) VALUES (41, 33, NULL, NULL)
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [Vitri]) VALUES (42, 34, NULL, NULL)
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [Vitri]) VALUES (43, 36, NULL, NULL)
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [Vitri]) VALUES (44, 36, NULL, NULL)
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [Vitri]) VALUES (45, 37, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Tin_Tuc] ON 

INSERT [dbo].[Tin_Tuc] ([ID], [Name], [MetaTitle], [Description], [Image], [CreatedDate]) VALUES (1, N'VĂN CHƯƠNG VÀ DẤU ẤN CỦA CÁC CÂY BÚT “NHÍ”', N'van-chuong-va-dau-an-cua-cac-cay-but-nhi', N'Cây bút “nhí” Quỳnh Trần (sinh năm 2007, tác giả tiểu thuyết Ngài Kẹo, Nhà xuất bản Tổng hợp TPHCM) vừa có buổi giao lưu với bạn đọc tại Đường sách Cao Lãnh, tỉnh Đồng Tháp. Buổi trò chuyện không chỉ nói về tác giả, tác phẩm mà còn là câu chuyện truyền cảm hứng đọc sách, niềm yêu thích học văn và sáng tác cho bạn nhỏ cùng trang lứa với Quỳnh Trần. 

Ngài Kẹo là câu chuyện phiêu lưu giả tưởng về thế giới kẹo đầy màu sắc. Bối cảnh truyện là một thị trấn nhỏ, mọi việc bắt đầu khi tiệm bánh kẹo Candy shop - Best N Town xuất hiện. Cuộc chiến đầy thử thách để cứu cả thị trấn khỏi sự diệt vong của bánh kẹo ngọt được Quỳnh Trần kể khá hấp dẫn, đồng thời lồng ghép khéo léo nhiều thông điệp có ý nghĩa. Nội dung và thể loại truyện, văn phong đều phù hợp với trẻ thơ. ', N'/Data/Images/cay-but-nhi.png', CAST(N'2023-09-18T21:39:40.867' AS DateTime))
INSERT [dbo].[Tin_Tuc] ([ID], [Name], [MetaTitle], [Description], [Image], [CreatedDate]) VALUES (2, N'NHIỀU TÍN HIỆU ĐÁNG MỪNG VỚI THƠ CHO THIẾU NHI', N'nhieu-tin-hieu-dang-mung-voi-tho-cho-thieu-nhi', N'"Từ thực tế nuôi dạy con, lớn lên cùng con của chính mình và của bạn bè, cũng như qua việc tập thơ Con là ban mai đã và đang được nhiều người đặt mua, tôi nghĩ rằng, độc giả hiện nay vẫn có nhu cầu đọc thơ thiếu nhi.

Và nhu cầu ấy là nhiều, chứ không phải như một số ý kiến cho rằng "thời nay trẻ em có nhiều thứ để vui chơi, không còn đọc thơ như trước nữa". Chúng ta thấy, hằng ngày ở trường cũng như ở nhà, thơ vẫn hiện diện cùng các hoạt động của các bạn nhỏ, vẫn tồn tại cùng với sự lớn lên của trẻ em.

Tôi viết thơ cho thiếu nhi từ khi còn là thiếu nhi và chủ yếu gửi đăng báo hoặc lưu giữ... "làm của riêng". Vì bận rộn và nhiều lý do khác mà tôi chưa từng in cuốn thơ thiếu nhi nào cả. Nên tôi cũng chưa từng nghĩ mình gặp khó khăn hoặc thuận lợi gì khi in thơ. Có chăng là tôi có chút hiểu biết về quy trình ra đời một cuốn sách, nên cứ từng bước mà làm theo yêu cầu của biên tập viên...

Riêng ở góc độ là một người mẹ của thiếu nhi và thường tiếp xúc nhiều với con cái của bạn bè, cũng đang ở lứa tuổi này, tôi có thuận lợi là được sống trong thế giới của các bạn nhỏ, gần gũi, cùng chơi cùng học, từ đó những suy nghĩ của các bạn nhỏ cũng tự nhiên thấm vào mình. Đó là những suy nghĩ, lời nói, việc làm... vô tư, hồn nhiên, trong trẻo, rất dễ thương.', N'/Data/Images/tin-hieu-thieu-nhi.png', CAST(N'2023-09-18T21:44:29.093' AS DateTime))
INSERT [dbo].[Tin_Tuc] ([ID], [Name], [MetaTitle], [Description], [Image], [CreatedDate]) VALUES (3, N'NHỮNG NGƯỜI THẦY THẮP NGỌN LỬA ĐAM MÊ', N'nhung-nguoi-thay-thap-ngon-lua-dam-me', N'Ngọn lửa của lòng yêu văn chương cũng vậy, mỗi người tự cháy lên bằng thực lực của mình. Nhưng liệu không có những người thầy dạy dỗ, chỉ bảo, động viên, khuyến khích thì mình có vững bước trên con đường văn học hay không? Tôi may mắn được học những người thầy giàu tâm huyết, yêu nghề mến trẻ và luôn có những lời động viên, khuyến khích đúng nơi, đúng lúc nên tôi càng yêu bộ môn văn hơn. Nói học sinh là chủ thể của dạy học thì chỉ đúng một phần; theo tôi, người thầy mới là chủ thể tích cực trong quá trình giảng dạy. “Không thầy đố mày làm nên”, đồng ý là ngày nay việc tương tác giữa giáo viên và học sinh thoáng hơn ngày trước nhưng tìm được người thầy truyền lửa rất khó! Những năm đầu của thập niên 70 (thế kỷ XX), sách giáo khoa trên miền Bắc rất hiếm hoi. Sách truyện, sách tham khảo lại càng hiếm. Vậy mà thầy Lê Quang Vinh (người Huế đi tập kết, học xong ĐH sư phạm văn, về mái trường miền Tây Nghệ An dạy học và “bám rễ” tại đây) vẫn tìm cho tôi những cuốn sách quý. Thầy dặn đi dặn lại là cần giữ gìn cẩn thận; không chuyền tay cho người khác vì sợ thất lạc! Đó là những cuốn như “Thép đã tôi thế đấy”; “Những lá thư từ tuyến đầu Tổ quốc”; “Dế Mèn phiêu lưu ký”; “Đất rừng phương Nam”… Các câu chuyện, những số phận con người đã theo tôi suốt chặng đường dài. Những năm vào chiến trường, các câu chuyện trên được tôi kể cho đồng đội cùng nghe. Và những năm tháng học ĐH, rồi dạy học ở miền sông nước Tây Nam bộ, những hình ảnh về mảnh đất nơi tận cùng càng thêm được nhân lên từ thực tế. Thầy Vinh thường nói với chúng tôi, những học sinh trong đội tuyển dự thi văn ngày đó, rằng: “Người học văn thì nhìn màu nắng hạ cũng khác; đó là màu của niềm vui, màu của mùa phượng nở, của tiếng ve kêu và là màu nắng khó quên của buổi chia tay mùa hạ…”.   

Lòng say mê, đam mê của bản thân mình chưa đủ mà còn phải lan tỏa niềm say mê đó qua người khác. Từ đó góp phần cho bạn bè thương nhau hơn, hiểu nhau hơn qua một trang sách, qua một bài thơ về tình bạn, về tình yêu buổi ban đầu… Người thầy truyền lửa bây giờ thật hiếm! Chương trình mới, cách truyền thụ mới, cuộc sống gấp gáp, hối thúc và đầy áp lực đã dần dần làm cho con người dửng dưng với môn văn, một bộ môn lẽ ra có tầm quan trọng đặc biệt trong việc giáo dục, hình thành nhân cách con người.', N'/Data/Images/thap-lua-dam-me.png', CAST(N'2023-09-18T21:47:35.180' AS DateTime))
SET IDENTITY_INSERT [dbo].[Tin_Tuc] OFF
GO
INSERT [dbo].[UserGroup] ([ID], [Name]) VALUES (N'ADMIN', N'quản trị')
INSERT [dbo].[UserGroup] ([ID], [Name]) VALUES (N'MEMBER', N'thành viên')
INSERT [dbo].[UserGroup] ([ID], [Name]) VALUES (N'MOD', N'moderatior')
GO
ALTER TABLE [dbo].[Contact] ADD  CONSTRAINT [DF_Contact_Status_1]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[DanhMucSP] ADD  CONSTRAINT [DF_DanhMucSP_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[DanhMucSP] ADD  CONSTRAINT [DF_DanhMucSP_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Sach] ADD  CONSTRAINT [DF_Sach_ViewCount]  DEFAULT ((0)) FOR [ViewCount]
GO
ALTER TABLE [dbo].[Sach] ADD  CONSTRAINT [DF_Sach_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Silde] ADD  CONSTRAINT [DF_Silde_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[TaiKhoan] ADD  CONSTRAINT [DF_TaiKhoan_GroupID]  DEFAULT ('MEMBER') FOR [GroupID]
GO
ALTER TABLE [dbo].[Tin_Tuc] ADD  CONSTRAINT [DF_Tin_Tuc_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonHang_DonHang] FOREIGN KEY([MaDonHang])
REFERENCES [dbo].[DonHang] ([ID])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietDonHang_DonHang]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonHang_Sach] FOREIGN KEY([MaSach])
REFERENCES [dbo].[Sach] ([ID])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietDonHang_Sach]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_TaiKhoan] FOREIGN KEY([MaKH])
REFERENCES [dbo].[TaiKhoan] ([ID])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_TaiKhoan]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_DanhMucSP] FOREIGN KEY([DanhMucID])
REFERENCES [dbo].[DanhMucSP] ([ID])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_DanhMucSP]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_NhaCungCap] FOREIGN KEY([NhaCungCapID])
REFERENCES [dbo].[NhaCungCap] ([ID])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_NhaCungCap]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_NhaXuatBan] FOREIGN KEY([NhaXuatBanID])
REFERENCES [dbo].[NhaXuatBan] ([ID])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_NhaXuatBan]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoan_UserGroup] FOREIGN KEY([GroupID])
REFERENCES [dbo].[UserGroup] ([ID])
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_TaiKhoan_UserGroup]
GO
ALTER TABLE [dbo].[ThamGia]  WITH CHECK ADD  CONSTRAINT [FK_ThamGia_Sach] FOREIGN KEY([MaSach])
REFERENCES [dbo].[Sach] ([ID])
GO
ALTER TABLE [dbo].[ThamGia] CHECK CONSTRAINT [FK_ThamGia_Sach]
GO
ALTER TABLE [dbo].[ThamGia]  WITH CHECK ADD  CONSTRAINT [FK_ThamGia_TacGia] FOREIGN KEY([MaTacGia])
REFERENCES [dbo].[TacGia] ([ID])
GO
ALTER TABLE [dbo].[ThamGia] CHECK CONSTRAINT [FK_ThamGia_TacGia]
GO
USE [master]
GO
ALTER DATABASE [NxbKimDong] SET  READ_WRITE 
GO
