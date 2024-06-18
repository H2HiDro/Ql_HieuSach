USE [master]
GO
/****** Object:  Database [CSDL_QLHieuSach]    Script Date: 5/31/2023 12:40:09 PM ******/
CREATE DATABASE [CSDL_QLHieuSach]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CSDL_QLHieuSach', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\CSDL_QLHieuSach.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CSDL_QLHieuSach_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\CSDL_QLHieuSach_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [CSDL_QLHieuSach] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CSDL_QLHieuSach].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CSDL_QLHieuSach] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CSDL_QLHieuSach] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CSDL_QLHieuSach] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CSDL_QLHieuSach] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CSDL_QLHieuSach] SET ARITHABORT OFF 
GO
ALTER DATABASE [CSDL_QLHieuSach] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [CSDL_QLHieuSach] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CSDL_QLHieuSach] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CSDL_QLHieuSach] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CSDL_QLHieuSach] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CSDL_QLHieuSach] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CSDL_QLHieuSach] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CSDL_QLHieuSach] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CSDL_QLHieuSach] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CSDL_QLHieuSach] SET  ENABLE_BROKER 
GO
ALTER DATABASE [CSDL_QLHieuSach] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CSDL_QLHieuSach] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CSDL_QLHieuSach] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CSDL_QLHieuSach] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CSDL_QLHieuSach] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CSDL_QLHieuSach] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CSDL_QLHieuSach] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CSDL_QLHieuSach] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CSDL_QLHieuSach] SET  MULTI_USER 
GO
ALTER DATABASE [CSDL_QLHieuSach] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CSDL_QLHieuSach] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CSDL_QLHieuSach] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CSDL_QLHieuSach] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CSDL_QLHieuSach] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CSDL_QLHieuSach] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [CSDL_QLHieuSach] SET QUERY_STORE = OFF
GO
USE [CSDL_QLHieuSach]
GO
/****** Object:  Table [dbo].[CTHoaDon]    Script Date: 5/31/2023 12:40:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTHoaDon](
	[HoaDon] [varchar](5) NOT NULL,
	[SanPham] [varchar](5) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DonGia] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[HoaDon] ASC,
	[SanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTPhieuDat]    Script Date: 5/31/2023 12:40:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTPhieuDat](
	[PhieuDat] [varchar](5) NOT NULL,
	[SanPham] [varchar](5) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DonGia] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PhieuDat] ASC,
	[SanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 5/31/2023 12:40:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [varchar](5) NOT NULL,
	[NhanVien] [varchar](5) NOT NULL,
	[KhachHang] [varchar](5) NOT NULL,
	[NgayLap] [datetime] NOT NULL,
	[DatHang] [varchar](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 5/31/2023 12:40:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [varchar](5) NOT NULL,
	[TenKH] [nvarchar](30) NOT NULL,
	[GioiTinh] [bit] NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SoDT] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSP]    Script Date: 5/31/2023 12:40:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSP](
	[MaLoai] [varchar](5) NOT NULL,
	[TenLoai] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 5/31/2023 12:40:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [varchar](5) NOT NULL,
	[TenNV] [nvarchar](30) NOT NULL,
	[GioiTinh] [bit] NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SoDT] [varchar](10) NULL,
	[NgayVaoLam] [date] NOT NULL,
	[ChucVu] [bit] NULL,
	[HinhAnh] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaSX]    Script Date: 5/31/2023 12:40:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaSX](
	[MaNSX] [varchar](6) NOT NULL,
	[TenNSX] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
	[SoDT] [varchar](10) NULL,
	[SoFax] [varchar](11) NULL,
	[Email] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuDatHang]    Script Date: 5/31/2023 12:40:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuDatHang](
	[MaPD] [varchar](5) NOT NULL,
	[NhanVien] [varchar](5) NOT NULL,
	[KhachHang] [varchar](5) NOT NULL,
	[NgayNhan] [date] NOT NULL,
	[NgayDat] [date] NOT NULL,
	[TrangThai] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 5/31/2023 12:40:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [varchar](5) NOT NULL,
	[TenSP] [nvarchar](30) NOT NULL,
	[LoaiSP] [varchar](5) NOT NULL,
	[GiaSP] [float] NOT NULL,
	[NhaSX] [varchar](6) NOT NULL,
	[NamSX] [int] NOT NULL,
	[TheLoai] [varchar](5) NULL,
	[TacGia] [varchar](5) NULL,
	[ISBN] [varchar](11) NULL,
	[HinhAnh] [nvarchar](100) NULL,
	[SoLuong] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TacGia]    Script Date: 5/31/2023 12:40:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TacGia](
	[MaTG] [varchar](5) NOT NULL,
	[TenTG] [nvarchar](30) NOT NULL,
	[GioiTinh] [bit] NOT NULL,
	[NgaySinh] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 5/31/2023 12:40:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[NhanVien] [varchar](5) NOT NULL,
	[MatKhau] [varchar](16) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[NhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TheLoai]    Script Date: 5/31/2023 12:40:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheLoai](
	[MaTheLoai] [varchar](5) NOT NULL,
	[TenTheLoai] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTheLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD001', N'SP002', 1, 15000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD001', N'SP003', 1, 3000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD002', N'SP001', 1, 15000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD002', N'SP003', 1, 3000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD002', N'SP005', 1, 20000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD003', N'SP001', 1, 15000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD003', N'SP002', 1, 15000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD003', N'SP003', 2, 3000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD003', N'SP004', 2, 9000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD003', N'SP005', 2, 20000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD004', N'SP003', 1, 3000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD004', N'SP005', 1, 20000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD005', N'SP008', 2, 19000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD005', N'SP011', 1, 15000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD005', N'SP036', 1, 26000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD006', N'SP011', 1, 15000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD006', N'SP014', 1, 25000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD006', N'SP019', 1, 25000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD006', N'SP023', 1, 55000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD006', N'SP024', 1, 35000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD006', N'SP027', 1, 3000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD006', N'SP042', 1, 25000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD007', N'SP004', 1, 9000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD007', N'SP005', 1, 20000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD007', N'SP006', 1, 35000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD007', N'SP008', 1, 19000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD007', N'SP011', 1, 15000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD007', N'SP014', 1, 25000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD007', N'SP016', 1, 10000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD007', N'SP034', 1, 15000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD007', N'SP035', 5, 15000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD008', N'SP035', 1, 15000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD008', N'SP038', 2, 3900)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD008', N'SP042', 1, 25000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD008', N'SP046', 1, 10000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD008', N'SP047', 1, 10000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD008', N'SP050', 1, 12000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD009', N'SP023', 1, 55000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD009', N'SP025', 2, 52000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD009', N'SP028', 1, 4000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD009', N'SP031', 1, 5000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD009', N'SP034', 1, 15000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD009', N'SP036', 1, 26000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD009', N'SP041', 1, 5000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD009', N'SP042', 1, 25000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD009', N'SP045', 2, 50000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD009', N'SP047', 5, 10000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD010', N'SP017', 5, 32000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD010', N'SP021', 7, 25000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD010', N'SP022', 15, 36000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD010', N'SP039', 15, 25000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD010', N'SP049', 30, 16000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD010', N'SP055', 20, 15000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD011', N'SP030', 1, 3000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD011', N'SP033', 1, 10000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD011', N'SP036', 1, 26000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD011', N'SP039', 1, 25000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD011', N'SP045', 1, 50000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD011', N'SP048', 1, 6000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD012', N'SP006', 1, 35000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD012', N'SP009', 1, 12000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD012', N'SP015', 1, 45000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD012', N'SP016', 3, 10000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD012', N'SP023', 5, 55000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD013', N'SP001', 1, 15000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD013', N'SP007', 1, 12000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD013', N'SP049', 1, 16000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD013', N'SP053', 1, 6000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD014', N'SP009', 1, 12000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD014', N'SP012', 1, 16000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD014', N'SP015', 1, 45000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD014', N'SP019', 1, 25000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD015', N'SP001', 5, 15000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD015', N'SP005', 5, 20000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD015', N'SP007', 5, 12000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD015', N'SP010', 5, 38000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD015', N'SP024', 5, 35000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD016', N'SP035', 2, 15000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD016', N'SP041', 2, 5000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD016', N'SP045', 1, 50000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD016', N'SP047', 1, 10000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD016', N'SP049', 3, 16000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD017', N'SP032', 1, 6000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD017', N'SP033', 1, 10000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD017', N'SP035', 1, 15000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD017', N'SP036', 1, 26000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD017', N'SP037', 15, 25000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD017', N'SP038', 15, 3900)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD017', N'SP040', 15, 15000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD017', N'SP041', 1, 5000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD017', N'SP042', 15, 25000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD018', N'SP020', 1, 19000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD018', N'SP021', 1, 25000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD018', N'SP023', 1, 55000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD018', N'SP024', 1, 35000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD018', N'SP027', 2, 3000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD018', N'SP028', 2, 4000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD018', N'SP033', 2, 10000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD019', N'SP020', 2, 19000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD019', N'SP022', 2, 36000)
GO
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD019', N'SP024', 1, 35000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD019', N'SP027', 1, 3000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD019', N'SP030', 2, 3000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD019', N'SP033', 2, 10000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD020', N'SP008', 1, 19000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD020', N'SP013', 1, 38000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD020', N'SP014', 1, 25000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD020', N'SP015', 6, 45000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD020', N'SP016', 6, 10000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD020', N'SP018', 2, 45000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD020', N'SP019', 1, 25000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD020', N'SP021', 1, 25000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD021', N'SP032', 1, 6000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD021', N'SP034', 1, 15000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD021', N'SP036', 1, 26000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD021', N'SP038', 1, 3900)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD021', N'SP042', 1, 25000)
INSERT [dbo].[CTHoaDon] ([HoaDon], [SanPham], [SoLuong], [DonGia]) VALUES (N'HD021', N'SP049', 15, 16000)
GO
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD001', N'SP007', 5, 12000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD001', N'SP035', 7, 15000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD001', N'SP047', 5, 10000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD002', N'SP002', 2, 15000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD002', N'SP003', 1, 3000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD002', N'SP004', 1, 9000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD002', N'SP005', 2, 20000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD003', N'SP001', 1, 15000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD003', N'SP003', 1, 3000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD003', N'SP005', 1, 20000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD004', N'SP001', 1, 15000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD004', N'SP002', 1, 15000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD004', N'SP003', 2, 3000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD004', N'SP004', 2, 9000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD004', N'SP005', 2, 20000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD005', N'SP007', 10, 12000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD005', N'SP009', 10, 12000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD005', N'SP029', 10, 4000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD006', N'SP023', 1, 55000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD006', N'SP025', 2, 52000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD006', N'SP028', 1, 4000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD006', N'SP031', 1, 5000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD006', N'SP034', 1, 15000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD006', N'SP036', 1, 26000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD006', N'SP041', 1, 5000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD006', N'SP042', 1, 25000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD006', N'SP045', 2, 50000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD006', N'SP047', 5, 10000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD007', N'SP013', 10, 38000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD007', N'SP017', 5, 32000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD007', N'SP018', 1, 45000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD007', N'SP020', 1, 19000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD007', N'SP023', 1, 55000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD007', N'SP026', 7, 5000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD007', N'SP048', 1, 6000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD008', N'SP006', 5, 35000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD008', N'SP009', 4, 12000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD008', N'SP015', 3, 45000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD008', N'SP033', 10, 10000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD008', N'SP039', 10, 25000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD008', N'SP048', 10, 6000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD008', N'SP054', 10, 5000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD009', N'SP017', 5, 32000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD009', N'SP021', 7, 25000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD009', N'SP022', 15, 36000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD009', N'SP039', 15, 25000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD009', N'SP049', 30, 16000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD009', N'SP055', 20, 15000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD010', N'SP017', 10, 32000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD010', N'SP020', 9, 19000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD010', N'SP022', 1, 36000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD010', N'SP028', 7, 4000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD010', N'SP032', 5, 6000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD011', N'SP001', 5, 15000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD011', N'SP005', 5, 20000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD011', N'SP007', 5, 12000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD011', N'SP010', 5, 38000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD011', N'SP024', 5, 35000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD012', N'SP037', 15, 25000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD012', N'SP038', 15, 3900)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD012', N'SP040', 15, 15000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD012', N'SP042', 15, 25000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD013', N'SP032', 1, 6000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD013', N'SP033', 1, 10000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD013', N'SP035', 1, 15000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD013', N'SP036', 1, 26000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD013', N'SP037', 15, 25000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD013', N'SP038', 15, 3900)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD013', N'SP040', 15, 15000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD013', N'SP041', 1, 5000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD013', N'SP042', 15, 25000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD014', N'SP008', 5, 19000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD014', N'SP015', 5, 45000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD014', N'SP023', 5, 55000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD014', N'SP026', 15, 5000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD014', N'SP052', 15, 12000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD015', N'SP008', 1, 19000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD015', N'SP013', 1, 38000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD015', N'SP014', 1, 25000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD015', N'SP015', 6, 45000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD015', N'SP016', 6, 10000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD015', N'SP018', 2, 45000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD015', N'SP019', 1, 25000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD015', N'SP021', 1, 25000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD016', N'SP005', 1, 20000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD016', N'SP006', 1, 35000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD016', N'SP009', 1, 12000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD016', N'SP011', 2, 15000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD016', N'SP012', 1, 16000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD016', N'SP013', 3, 38000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD016', N'SP014', 2, 25000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD016', N'SP015', 1, 45000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD016', N'SP017', 3, 32000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD016', N'SP018', 4, 45000)
INSERT [dbo].[CTPhieuDat] ([PhieuDat], [SanPham], [SoLuong], [DonGia]) VALUES (N'PD017', N'SP001', 10, 15000)
GO
INSERT [dbo].[HoaDon] ([MaHD], [NhanVien], [KhachHang], [NgayLap], [DatHang]) VALUES (N'HD001', N'NV001', N'KH001', CAST(N'2023-04-19T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[HoaDon] ([MaHD], [NhanVien], [KhachHang], [NgayLap], [DatHang]) VALUES (N'HD002', N'NV001', N'KH005', CAST(N'2023-04-25T00:00:00.000' AS DateTime), N'PD003')
INSERT [dbo].[HoaDon] ([MaHD], [NhanVien], [KhachHang], [NgayLap], [DatHang]) VALUES (N'HD003', N'NV001', N'KH009', CAST(N'2023-04-25T00:00:00.000' AS DateTime), N'PD004')
INSERT [dbo].[HoaDon] ([MaHD], [NhanVien], [KhachHang], [NgayLap], [DatHang]) VALUES (N'HD004', N'NV001', N'KH001', CAST(N'2023-04-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[HoaDon] ([MaHD], [NhanVien], [KhachHang], [NgayLap], [DatHang]) VALUES (N'HD005', N'NV001', N'KH001', CAST(N'2023-04-30T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[HoaDon] ([MaHD], [NhanVien], [KhachHang], [NgayLap], [DatHang]) VALUES (N'HD006', N'NV001', N'KH001', CAST(N'2023-04-30T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[HoaDon] ([MaHD], [NhanVien], [KhachHang], [NgayLap], [DatHang]) VALUES (N'HD007', N'NV001', N'KH005', CAST(N'2023-05-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[HoaDon] ([MaHD], [NhanVien], [KhachHang], [NgayLap], [DatHang]) VALUES (N'HD008', N'NV001', N'KH013', CAST(N'2023-05-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[HoaDon] ([MaHD], [NhanVien], [KhachHang], [NgayLap], [DatHang]) VALUES (N'HD009', N'NV001', N'KH004', CAST(N'2023-05-02T00:00:00.000' AS DateTime), N'PD006')
INSERT [dbo].[HoaDon] ([MaHD], [NhanVien], [KhachHang], [NgayLap], [DatHang]) VALUES (N'HD010', N'NV002', N'KH008', CAST(N'2023-05-02T00:00:00.000' AS DateTime), N'PD009')
INSERT [dbo].[HoaDon] ([MaHD], [NhanVien], [KhachHang], [NgayLap], [DatHang]) VALUES (N'HD011', N'NV002', N'KH001', CAST(N'2023-05-04T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[HoaDon] ([MaHD], [NhanVien], [KhachHang], [NgayLap], [DatHang]) VALUES (N'HD012', N'NV002', N'KH001', CAST(N'2023-05-04T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[HoaDon] ([MaHD], [NhanVien], [KhachHang], [NgayLap], [DatHang]) VALUES (N'HD013', N'NV002', N'KH010', CAST(N'2023-05-07T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[HoaDon] ([MaHD], [NhanVien], [KhachHang], [NgayLap], [DatHang]) VALUES (N'HD014', N'NV005', N'KH001', CAST(N'2023-05-07T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[HoaDon] ([MaHD], [NhanVien], [KhachHang], [NgayLap], [DatHang]) VALUES (N'HD015', N'NV005', N'KH013', CAST(N'2023-05-09T00:00:00.000' AS DateTime), N'PD011')
INSERT [dbo].[HoaDon] ([MaHD], [NhanVien], [KhachHang], [NgayLap], [DatHang]) VALUES (N'HD016', N'NV005', N'KH014', CAST(N'2023-05-11T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[HoaDon] ([MaHD], [NhanVien], [KhachHang], [NgayLap], [DatHang]) VALUES (N'HD017', N'NV007', N'KH012', CAST(N'2023-05-13T00:00:00.000' AS DateTime), N'PD013')
INSERT [dbo].[HoaDon] ([MaHD], [NhanVien], [KhachHang], [NgayLap], [DatHang]) VALUES (N'HD018', N'NV007', N'KH001', CAST(N'2023-05-17T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[HoaDon] ([MaHD], [NhanVien], [KhachHang], [NgayLap], [DatHang]) VALUES (N'HD019', N'NV007', N'KH015', CAST(N'2023-05-20T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[HoaDon] ([MaHD], [NhanVien], [KhachHang], [NgayLap], [DatHang]) VALUES (N'HD020', N'NV004', N'KH014', CAST(N'2023-05-22T00:00:00.000' AS DateTime), N'PD015')
INSERT [dbo].[HoaDon] ([MaHD], [NhanVien], [KhachHang], [NgayLap], [DatHang]) VALUES (N'HD021', N'NV004', N'KH014', CAST(N'2023-05-30T00:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [NgaySinh], [DiaChi], [SoDT]) VALUES (N'KH001', N'null', 1, CAST(N'1111-01-01' AS Date), N'null', N'0000000000')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [NgaySinh], [DiaChi], [SoDT]) VALUES (N'KH003', N'Đoàn Linh Hương', 0, CAST(N'2004-10-06' AS Date), N'Dak Lak', N'0978404678')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [NgaySinh], [DiaChi], [SoDT]) VALUES (N'KH004', N'Phan Hồng Hải', 1, CAST(N'1995-10-02' AS Date), N'Đà Lạt, Lâm Đồng', N'0978404647')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [NgaySinh], [DiaChi], [SoDT]) VALUES (N'KH005', N'Phan Hải Hùng', 1, CAST(N'1995-10-02' AS Date), N'TP.HCM', N'0978404648')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [NgaySinh], [DiaChi], [SoDT]) VALUES (N'KH007', N'Phan Hồng Hải', 1, CAST(N'1995-10-02' AS Date), N'Đà Lạt, Lâm Đồng', N'0978404667')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [NgaySinh], [DiaChi], [SoDT]) VALUES (N'KH008', N'Nguyễn Linh Hồng', 0, CAST(N'2004-10-06' AS Date), N'Dak Lak', N'0978404688')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [NgaySinh], [DiaChi], [SoDT]) VALUES (N'KH009', N'Nguyễn Hồng Hoa', 0, CAST(N'2004-10-06' AS Date), N'Dak Lak', N'0978404698')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [NgaySinh], [DiaChi], [SoDT]) VALUES (N'KH010', N'Trần Ánh Linh', 0, CAST(N'2003-10-10' AS Date), N'TP.HCM', N'0365404698')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [NgaySinh], [DiaChi], [SoDT]) VALUES (N'KH011', N'Trần Ánh Dương', 1, CAST(N'1995-10-02' AS Date), N'Hà Nội', N'0368404648')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [NgaySinh], [DiaChi], [SoDT]) VALUES (N'KH012', N'Bùi Văn Ánh', 1, CAST(N'2000-10-20' AS Date), N'Đà nẵng', N'0368098648')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [NgaySinh], [DiaChi], [SoDT]) VALUES (N'KH013', N'Phạm Hồng Hải Chi', 0, CAST(N'2006-10-09' AS Date), N'Vũng Tàu', N'0368057548')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [NgaySinh], [DiaChi], [SoDT]) VALUES (N'KH014', N'Hoàng Văn Tài', 1, CAST(N'2003-10-17' AS Date), N'An Giang', N'0364975241')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [NgaySinh], [DiaChi], [SoDT]) VALUES (N'KH015', N'Trần Ánh Chi', 0, CAST(N'2001-10-25' AS Date), N'Cần Thơ', N'0364907593')
GO
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai]) VALUES (N'ML001', N'Sách')
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai]) VALUES (N'ML002', N'Bút Mực')
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai]) VALUES (N'ML003', N'Bút Chì')
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai]) VALUES (N'ML004', N'Thước Kẻ')
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai]) VALUES (N'ML005', N'Bút Máy')
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai]) VALUES (N'ML006', N'Compa')
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai]) VALUES (N'ML007', N'Gôm')
GO
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [DiaChi], [SoDT], [NgayVaoLam], [ChucVu], [HinhAnh]) VALUES (N'NV001', N'Phạm Huy Hiếu', 1, CAST(N'2001-05-18' AS Date), N'HCM', N'0878404989', CAST(N'2020-07-05' AS Date), 1, N'src/main/java/images/NhanVien/13.png')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [DiaChi], [SoDT], [NgayVaoLam], [ChucVu], [HinhAnh]) VALUES (N'NV002', N'Trần Văn Thắng', 1, CAST(N'2002-05-01' AS Date), N'HCM', N'0878404889', CAST(N'2020-07-05' AS Date), 0, N'src/main/java/images/NhanVien/14.png')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [DiaChi], [SoDT], [NgayVaoLam], [ChucVu], [HinhAnh]) VALUES (N'NV003', N'Lê Thị Hoa', 0, CAST(N'2002-05-14' AS Date), N'HCM', N'0878404798', CAST(N'2021-07-02' AS Date), 0, N'src/main/java/images/NhanVien/6.png')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [DiaChi], [SoDT], [NgayVaoLam], [ChucVu], [HinhAnh]) VALUES (N'NV004', N'Nguyễn Thị Ánh', 0, CAST(N'2001-05-01' AS Date), N'HCM', N'0878407989', CAST(N'2020-10-12' AS Date), 1, N'src/main/java/images/NhanVien/8.png')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [DiaChi], [SoDT], [NgayVaoLam], [ChucVu], [HinhAnh]) VALUES (N'NV005', N'Cao Nguyễn Ánh Tuyết', 0, CAST(N'2003-05-15' AS Date), N'HCM', N'0878397989', CAST(N'2021-10-07' AS Date), 1, N'src/main/java/images/NhanVien/4.png')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [DiaChi], [SoDT], [NgayVaoLam], [ChucVu], [HinhAnh]) VALUES (N'NV006', N'Bùi Ánh Hoa', 0, CAST(N'2002-05-01' AS Date), N'HCM', N'0878376754', CAST(N'2022-10-20' AS Date), 0, N'src/main/java/images/NhanVien/1.png')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [DiaChi], [SoDT], [NgayVaoLam], [ChucVu], [HinhAnh]) VALUES (N'NV007', N'Nguyễn Gia Hưng', 1, CAST(N'2002-04-04' AS Date), N'HCM', N'0878376745', CAST(N'2021-10-13' AS Date), 0, N'src/main/java/images/NhanVien/hung.png')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [DiaChi], [SoDT], [NgayVaoLam], [ChucVu], [HinhAnh]) VALUES (N'NV008', N'Hoàng Ánh Linh', 0, CAST(N'2002-05-01' AS Date), N'HCM', N'0878375395', CAST(N'2022-10-20' AS Date), 0, N'src/main/java/images/NhanVien/12.png')
GO
INSERT [dbo].[NhaSX] ([MaNSX], [TenNSX], [DiaChi], [SoDT], [SoFax], [Email]) VALUES (N'NSX001', N'Kim Đồng', N'Cầu Giấy, Hà Nội', N'0987651234', N'84987651234', N'KimDong@gmail.com')
INSERT [dbo].[NhaSX] ([MaNSX], [TenNSX], [DiaChi], [SoDT], [SoFax], [Email]) VALUES (N'NSX002', N'Thiên Long', N'Quận 1, TP.Hồ Chí Minh', N'0500456213', N'84500456213', N'ThienLong@gmail.com')
INSERT [dbo].[NhaSX] ([MaNSX], [TenNSX], [DiaChi], [SoDT], [SoFax], [Email]) VALUES (N'NSX003', N'NXB Giáo Dục', N'Hoàng Mai, Hà Nội', N'0500345678', N'4500345678', N'NXB@gmail.com')
INSERT [dbo].[NhaSX] ([MaNSX], [TenNSX], [DiaChi], [SoDT], [SoFax], [Email]) VALUES (N'NSX004', N'Deli', N'HCM', N'0368022423', N'2587965842', N'deli.officail@gmail.com')
INSERT [dbo].[NhaSX] ([MaNSX], [TenNSX], [DiaChi], [SoDT], [SoFax], [Email]) VALUES (N'NSX005', N'Kim Nguyên', N'vĩnh Long', N'0369857589', N'8574965821', N'kimnguyn@gmail.com')
INSERT [dbo].[NhaSX] ([MaNSX], [TenNSX], [DiaChi], [SoDT], [SoFax], [Email]) VALUES (N'NSX006', N'Campus', N'Đồng Nai', N'0358749685', N'8458965325', N'campus@gmail.com')
GO
INSERT [dbo].[PhieuDatHang] ([MaPD], [NhanVien], [KhachHang], [NgayNhan], [NgayDat], [TrangThai]) VALUES (N'PD001', N'NV001', N'KH003', CAST(N'2023-05-25' AS Date), CAST(N'2023-04-20' AS Date), 1)
INSERT [dbo].[PhieuDatHang] ([MaPD], [NhanVien], [KhachHang], [NgayNhan], [NgayDat], [TrangThai]) VALUES (N'PD002', N'NV001', N'KH004', CAST(N'2023-05-25' AS Date), CAST(N'2023-04-22' AS Date), 0)
INSERT [dbo].[PhieuDatHang] ([MaPD], [NhanVien], [KhachHang], [NgayNhan], [NgayDat], [TrangThai]) VALUES (N'PD003', N'NV001', N'KH005', CAST(N'2023-05-31' AS Date), CAST(N'2023-04-27' AS Date), 1)
INSERT [dbo].[PhieuDatHang] ([MaPD], [NhanVien], [KhachHang], [NgayNhan], [NgayDat], [TrangThai]) VALUES (N'PD004', N'NV001', N'KH009', CAST(N'2023-05-24' AS Date), CAST(N'2023-04-30' AS Date), 1)
INSERT [dbo].[PhieuDatHang] ([MaPD], [NhanVien], [KhachHang], [NgayNhan], [NgayDat], [TrangThai]) VALUES (N'PD005', N'NV001', N'KH005', CAST(N'2023-06-01' AS Date), CAST(N'2023-05-01' AS Date), 0)
INSERT [dbo].[PhieuDatHang] ([MaPD], [NhanVien], [KhachHang], [NgayNhan], [NgayDat], [TrangThai]) VALUES (N'PD006', N'NV001', N'KH004', CAST(N'2023-06-04' AS Date), CAST(N'2023-05-03' AS Date), 1)
INSERT [dbo].[PhieuDatHang] ([MaPD], [NhanVien], [KhachHang], [NgayNhan], [NgayDat], [TrangThai]) VALUES (N'PD007', N'NV002', N'KH008', CAST(N'2023-06-22' AS Date), CAST(N'2023-05-07' AS Date), 0)
INSERT [dbo].[PhieuDatHang] ([MaPD], [NhanVien], [KhachHang], [NgayNhan], [NgayDat], [TrangThai]) VALUES (N'PD008', N'NV002', N'KH009', CAST(N'2023-06-22' AS Date), CAST(N'2023-05-10' AS Date), 0)
INSERT [dbo].[PhieuDatHang] ([MaPD], [NhanVien], [KhachHang], [NgayNhan], [NgayDat], [TrangThai]) VALUES (N'PD009', N'NV002', N'KH008', CAST(N'2023-06-22' AS Date), CAST(N'2023-05-11' AS Date), 1)
INSERT [dbo].[PhieuDatHang] ([MaPD], [NhanVien], [KhachHang], [NgayNhan], [NgayDat], [TrangThai]) VALUES (N'PD010', N'NV005', N'KH008', CAST(N'2023-07-11' AS Date), CAST(N'2023-05-13' AS Date), 0)
INSERT [dbo].[PhieuDatHang] ([MaPD], [NhanVien], [KhachHang], [NgayNhan], [NgayDat], [TrangThai]) VALUES (N'PD011', N'NV005', N'KH013', CAST(N'2023-06-22' AS Date), CAST(N'2023-05-17' AS Date), 1)
INSERT [dbo].[PhieuDatHang] ([MaPD], [NhanVien], [KhachHang], [NgayNhan], [NgayDat], [TrangThai]) VALUES (N'PD012', N'NV007', N'KH009', CAST(N'2023-07-21' AS Date), CAST(N'2023-05-20' AS Date), 0)
INSERT [dbo].[PhieuDatHang] ([MaPD], [NhanVien], [KhachHang], [NgayNhan], [NgayDat], [TrangThai]) VALUES (N'PD013', N'NV007', N'KH012', CAST(N'2023-07-21' AS Date), CAST(N'2023-05-21' AS Date), 1)
INSERT [dbo].[PhieuDatHang] ([MaPD], [NhanVien], [KhachHang], [NgayNhan], [NgayDat], [TrangThai]) VALUES (N'PD014', N'NV004', N'KH011', CAST(N'2023-06-05' AS Date), CAST(N'2023-05-24' AS Date), 0)
INSERT [dbo].[PhieuDatHang] ([MaPD], [NhanVien], [KhachHang], [NgayNhan], [NgayDat], [TrangThai]) VALUES (N'PD015', N'NV004', N'KH014', CAST(N'2023-06-14' AS Date), CAST(N'2023-05-25' AS Date), 1)
INSERT [dbo].[PhieuDatHang] ([MaPD], [NhanVien], [KhachHang], [NgayNhan], [NgayDat], [TrangThai]) VALUES (N'PD016', N'NV004', N'KH009', CAST(N'2023-06-16' AS Date), CAST(N'2023-05-31' AS Date), 0)
INSERT [dbo].[PhieuDatHang] ([MaPD], [NhanVien], [KhachHang], [NgayNhan], [NgayDat], [TrangThai]) VALUES (N'PD017', N'NV001', N'KH009', CAST(N'2023-06-13' AS Date), CAST(N'2023-05-31' AS Date), 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [GiaSP], [NhaSX], [NamSX], [TheLoai], [TacGia], [ISBN], [HinhAnh], [SoLuong]) VALUES (N'SP001', N'Toán Lớp 1', N'ML001', 15000, N'NSX003', 2018, N'TL001', N'TG004', N'1234567890', N'src/main/java/images/SanPham/Sach/Toan-1.png', 89)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [GiaSP], [NhaSX], [NamSX], [TheLoai], [TacGia], [ISBN], [HinhAnh], [SoLuong]) VALUES (N'SP002', N'Tiếng Việt Lớp 1', N'ML001', 15000, N'NSX003', 2017, N'TL001', N'TG001', N'1324658769', N'src/main/java/images/SanPham/Sach/TiengViet1.png', 38)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [GiaSP], [NhaSX], [NamSX], [TheLoai], [TacGia], [ISBN], [HinhAnh], [SoLuong]) VALUES (N'SP003', N'Bút bi TL', N'ML002', 3000, N'NSX002', 2022, NULL, NULL, N'1234567890', N'src/main/java/images/SanPham/But/Bútbixanh.png', 78)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [GiaSP], [NhaSX], [NamSX], [TheLoai], [TacGia], [ISBN], [HinhAnh], [SoLuong]) VALUES (N'SP004', N'Thước 20Cm TL', N'ML004', 9000, N'NSX002', 2021, NULL, NULL, N'1234567890', N'src/main/java/images/SanPham/ThuocKe/thướckẻhồnghà.png', 44)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [GiaSP], [NhaSX], [NamSX], [TheLoai], [TacGia], [ISBN], [HinhAnh], [SoLuong]) VALUES (N'SP005', N'Số đỏ', N'ML001', 20000, N'NSX001', 2017, N'TL005', N'TG005', N'84123456789', N'src/main/java/images/SanPham/sodo.png', 62)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [GiaSP], [NhaSX], [NamSX], [TheLoai], [TacGia], [ISBN], [HinhAnh], [SoLuong]) VALUES (N'SP006', N'Giáo trình CNXHKH', N'ML001', 35000, N'NSX003', 2022, N'TL003', N'TG003', N'1254879635', N'src/main/java/images/SanPham/Sach/CNXHKH.png', 48)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [GiaSP], [NhaSX], [NamSX], [TheLoai], [TacGia], [ISBN], [HinhAnh], [SoLuong]) VALUES (N'SP007', N'GDCD', N'ML001', 12000, N'NSX003', 2022, N'TL001', N'TG003', N'1236587493', N'src/main/java/images/SanPham/Sach/GDCD10.png', 94)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [GiaSP], [NhaSX], [NamSX], [TheLoai], [TacGia], [ISBN], [HinhAnh], [SoLuong]) VALUES (N'SP008', N'Âm Nhạc 2', N'ML001', 19000, N'NSX001', 2023, N'TL001', N'TG006', N'1258793589', N'src/main/java/images/SanPham/Sach/Âmnhạc2.png', 46)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [GiaSP], [NhaSX], [NamSX], [TheLoai], [TacGia], [ISBN], [HinhAnh], [SoLuong]) VALUES (N'SP009', N'Âm nhạc 5', N'ML001', 12000, N'NSX001', 2022, N'TL001', N'TG006', N'1258799845', N'src/main/java/images/SanPham/Sach/Âmnhạc5.png', 57)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [GiaSP], [NhaSX], [NamSX], [TheLoai], [TacGia], [ISBN], [HinhAnh], [SoLuong]) VALUES (N'SP010', N'Đạo lý làm người', N'ML001', 38000, N'NSX002', 2019, N'TL005', N'TG010', N'5986486231', N'src/main/java/images/SanPham/Sach/Đạolýlàmngười.png', 14)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [GiaSP], [NhaSX], [NamSX], [TheLoai], [TacGia], [ISBN], [HinhAnh], [SoLuong]) VALUES (N'SP011', N'Địa lý 10', N'ML001', 15000, N'NSX003', 2019, N'TL001', N'TG008', N'8975463251', N'src/main/java/images/SanPham/Sach/Địalý10.png', 25)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [GiaSP], [NhaSX], [NamSX], [TheLoai], [TacGia], [ISBN], [HinhAnh], [SoLuong]) VALUES (N'SP012', N'Địa lý 12', N'ML001', 16000, N'NSX003', 2018, N'TL001', N'TG006', N'1259864387', N'src/main/java/images/SanPham/Sach/Địalý12.png', 24)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [GiaSP], [NhaSX], [NamSX], [TheLoai], [TacGia], [ISBN], [HinhAnh], [SoLuong]) VALUES (N'SP013', N'English 5', N'ML001', 38000, N'NSX003', 2018, N'TL001', N'TG006', N'7896542598', N'src/main/java/images/SanPham/Sach/English5.png', 23)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [GiaSP], [NhaSX], [NamSX], [TheLoai], [TacGia], [ISBN], [HinhAnh], [SoLuong]) VALUES (N'SP014', N'Giải đố nhanh', N'ML001', 25000, N'NSX002', 2019, N'TL004', N'TG004', N'1856497625', N'src/main/java/images/SanPham/Sach/Giảiđốnhanh.png', 42)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [GiaSP], [NhaSX], [NamSX], [TheLoai], [TacGia], [ISBN], [HinhAnh], [SoLuong]) VALUES (N'SP015', N'Hình ảnh điều khiển tâm lý', N'ML001', 45000, N'NSX002', 2021, N'TL005', N'TG010', N'4569863258', N'src/main/java/images/SanPham/Sach/Hìnhảnhđiềukhiểntâmlý.png', 17)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [GiaSP], [NhaSX], [NamSX], [TheLoai], [TacGia], [ISBN], [HinhAnh], [SoLuong]) VALUES (N'SP016', N'Kĩ Thuật 5', N'ML001', 10000, N'NSX003', 2016, N'TL001', N'TG006', N'7895468213', N'src/main/java/images/SanPham/Sach/Kĩthuật5.png', 16)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [GiaSP], [NhaSX], [NamSX], [TheLoai], [TacGia], [ISBN], [HinhAnh], [SoLuong]) VALUES (N'SP017', N'Kinh tế chính trị', N'ML001', 32000, N'NSX003', 2022, N'TL003', N'TG008', N'2536987412', N'src/main/java/images/SanPham/Sach/KTCT.png', 55)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [GiaSP], [NhaSX], [NamSX], [TheLoai], [TacGia], [ISBN], [HinhAnh], [SoLuong]) VALUES (N'SP018', N'Khổng lồ về khủng long', N'ML001', 45000, N'NSX002', 2020, N'TL004', N'TG001', N'5897463589', N'src/main/java/images/SanPham/Sach/Khổnglồvềkhủnglong.png', 27)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [GiaSP], [NhaSX], [NamSX], [TheLoai], [TacGia], [ISBN], [HinhAnh], [SoLuong]) VALUES (N'SP019', N'Nhật kí 5 năm đầu đời của bé', N'ML001', 25000, N'NSX002', 2019, N'TL004', NULL, N'8975896425', N'src/main/java/images/SanPham/Sach/Nhậtkí.png', 12)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [GiaSP], [NhaSX], [NamSX], [TheLoai], [TacGia], [ISBN], [HinhAnh], [SoLuong]) VALUES (N'SP020', N'Vở Bé làm quen với chữ cái', N'ML001', 19000, N'NSX003', 2021, N'TL002', N'TG006', N'6985325741', N'src/main/java/images/SanPham/Sach/Sáchvởlàmquenvớichữcái.png', 42)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [GiaSP], [NhaSX], [NamSX], [TheLoai], [TacGia], [ISBN], [HinhAnh], [SoLuong]) VALUES (N'SP021', N'Tâm lý học đâij cương', N'ML001', 25000, N'NSX003', 2021, N'TL003', N'TG007', N'7894655155', N'src/main/java/images/SanPham/Sach/Tâmlýhọc.png', 41)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [GiaSP], [NhaSX], [NamSX], [TheLoai], [TacGia], [ISBN], [HinhAnh], [SoLuong]) VALUES (N'SP022', N'TTHCM', N'ML001', 36000, N'NSX003', 2022, N'TL003', N'TG008', N'5879645321', N'src/main/java/images/SanPham/Sach/TTHCM.png', 83)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [GiaSP], [NhaSX], [NamSX], [TheLoai], [TacGia], [ISBN], [HinhAnh], [SoLuong]) VALUES (N'SP023', N'The New English Dictionary', N'ML001', 55000, N'NSX002', 2021, N'TL002', N'TG010', N'9968745632', N'src/main/java/images/SanPham/Sach/thenewEdictionary.png', 17)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [GiaSP], [NhaSX], [NamSX], [TheLoai], [TacGia], [ISBN], [HinhAnh], [SoLuong]) VALUES (N'SP024', N'Triết học', N'ML001', 35000, N'NSX003', 2022, N'TL003', N'TG006', N'8975869845', N'src/main/java/images/SanPham/Sach/Triếthọc.png', 92)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [GiaSP], [NhaSX], [NamSX], [TheLoai], [TacGia], [ISBN], [HinhAnh], [SoLuong]) VALUES (N'SP025', N'Bút ArtinoMagnetPen', N'ML003', 52000, N'NSX002', 2021, NULL, NULL, N'5897458698', N'src/main/java/images/SanPham/But/ArtinoMagnetPen.png', 23)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [GiaSP], [NhaSX], [NamSX], [TheLoai], [TacGia], [ISBN], [HinhAnh], [SoLuong]) VALUES (N'SP026', N'Bút bi đỏ Unique', N'ML002', 5000, N'NSX001', 2020, NULL, NULL, N'5897458695', N'src/main/java/images/SanPham/But/bútbiđỏunique.png', 100)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [GiaSP], [NhaSX], [NamSX], [TheLoai], [TacGia], [ISBN], [HinhAnh], [SoLuong]) VALUES (N'SP027', N'Bút bi TL08', N'ML002', 3000, N'NSX002', 2020, NULL, NULL, N'5897885687', N'src/main/java/images/SanPham/But/BútbiTL08.png', 46)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [GiaSP], [NhaSX], [NamSX], [TheLoai], [TacGia], [ISBN], [HinhAnh], [SoLuong]) VALUES (N'SP028', N'Bút bi TL079', N'ML002', 4000, N'NSX002', 2019, NULL, NULL, N'8795468542', N'src/main/java/images/SanPham/But/bútbiTL079.png', 97)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [GiaSP], [NhaSX], [NamSX], [TheLoai], [TacGia], [ISBN], [HinhAnh], [SoLuong]) VALUES (N'SP029', N'Bút bi xanh', N'ML002', 4000, N'NSX002', 2022, NULL, NULL, N'8974589658', N'src/main/java/images/SanPham/But/Bútbixanh.png', 50)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [GiaSP], [NhaSX], [NamSX], [TheLoai], [TacGia], [ISBN], [HinhAnh], [SoLuong]) VALUES (N'SP030', N'Bút bi xanh TL034', N'ML002', 3000, N'NSX002', 2021, NULL, NULL, N'8759682154', N'src/main/java/images/SanPham/But/bútbixanhTL034.png', 97)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [GiaSP], [NhaSX], [NamSX], [TheLoai], [TacGia], [ISBN], [HinhAnh], [SoLuong]) VALUES (N'SP031', N'Bút bi xanh TLX025', N'ML002', 5000, N'NSX002', 2021, NULL, NULL, N'8457968425', N'src/main/java/images/SanPham/But/BútbixanhThiênLongX025.png', 99)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [GiaSP], [NhaSX], [NamSX], [TheLoai], [TacGia], [ISBN], [HinhAnh], [SoLuong]) VALUES (N'SP032', N'Bút chì Tryed', N'ML003', 6000, N'NSX002', 2021, NULL, NULL, N'5897846684', N'src/main/java/images/SanPham/But/Bútchì.png', 98)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [GiaSP], [NhaSX], [NamSX], [TheLoai], [TacGia], [ISBN], [HinhAnh], [SoLuong]) VALUES (N'SP033', N'Bút chì Librería Platino', N'ML003', 10000, N'NSX004', 2021, NULL, NULL, N'8798648522', N'src/main/java/images/SanPham/But/BútchìLibreríaPlatino.png', 94)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [GiaSP], [NhaSX], [NamSX], [TheLoai], [TacGia], [ISBN], [HinhAnh], [SoLuong]) VALUES (N'SP034', N'Bút chì SSENSE', N'ML003', 15000, N'NSX004', 2021, NULL, NULL, N'8798548569', N'src/main/java/images/SanPham/But/bútchìSSENSE.png', 47)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [GiaSP], [NhaSX], [NamSX], [TheLoai], [TacGia], [ISBN], [HinhAnh], [SoLuong]) VALUES (N'SP035', N'Bút GTec C4 ', N'ML002', 15000, N'NSX004', 2022, NULL, NULL, N'7589654825', N'src/main/java/images/SanPham/But/BútGTecC4Pen.png', 51)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [GiaSP], [NhaSX], [NamSX], [TheLoai], [TacGia], [ISBN], [HinhAnh], [SoLuong]) VALUES (N'SP036', N'Bút kí Uni', N'ML002', 26000, N'NSX004', 2021, NULL, NULL, N'8795845869', N'src/main/java/images/SanPham/But/Bútkíuni.png', 10)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [GiaSP], [NhaSX], [NamSX], [TheLoai], [TacGia], [ISBN], [HinhAnh], [SoLuong]) VALUES (N'SP037', N'Bút máy Parker', N'ML002', 25000, N'NSX004', 2021, NULL, NULL, N'1879685425', N'src/main/java/images/SanPham/But/BútmáyParker.png', 15)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [GiaSP], [NhaSX], [NamSX], [TheLoai], [TacGia], [ISBN], [HinhAnh], [SoLuong]) VALUES (N'SP038', N'Bút mực xanh', N'ML002', 3900, N'NSX002', 2020, NULL, NULL, N'8885896585', N'src/main/java/images/SanPham/But/Bútmựcxanh.png', 82)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [GiaSP], [NhaSX], [NamSX], [TheLoai], [TacGia], [ISBN], [HinhAnh], [SoLuong]) VALUES (N'SP039', N'Bút NosCrayons', N'ML002', 25000, N'NSX004', 2023, NULL, NULL, N'9858645875', N'src/main/java/images/SanPham/But/bútNosCrayons.png', 34)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [GiaSP], [NhaSX], [NamSX], [TheLoai], [TacGia], [ISBN], [HinhAnh], [SoLuong]) VALUES (N'SP040', N'Bút bi 4 màu', N'ML002', 15000, N'NSX002', 2022, NULL, NULL, N'8796854251', N'src/main/java/images/SanPham/But/bútbi4màu.png', 10)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [GiaSP], [NhaSX], [NamSX], [TheLoai], [TacGia], [ISBN], [HinhAnh], [SoLuong]) VALUES (N'SP041', N'Bút study supplies', N'ML002', 5000, N'NSX004', 2020, NULL, NULL, N'2568794568', N'src/main/java/images/SanPham/But/studysupplies.png', 96)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [GiaSP], [NhaSX], [NamSX], [TheLoai], [TacGia], [ISBN], [HinhAnh], [SoLuong]) VALUES (N'SP042', N'Compa BeCost', N'ML006', 25000, N'NSX005', 2022, NULL, NULL, N'7858965842', N'src/main/java/images/SanPham/ThuocKe/combaBeeCost.png', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [GiaSP], [NhaSX], [NamSX], [TheLoai], [TacGia], [ISBN], [HinhAnh], [SoLuong]) VALUES (N'SP043', N'Compa Deli', N'ML006', 25000, N'NSX004', 2023, NULL, NULL, N'9865824584', N'src/main/java/images/SanPham/ThuocKe/combadeli.png', 30)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [GiaSP], [NhaSX], [NamSX], [TheLoai], [TacGia], [ISBN], [HinhAnh], [SoLuong]) VALUES (N'SP044', N'Compa Thiên Long', N'ML006', 30000, N'NSX003', 2022, NULL, NULL, N'9856685742', N'src/main/java/images/SanPham/ThuocKe/combaThiênLOng.png', 50)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [GiaSP], [NhaSX], [NamSX], [TheLoai], [TacGia], [ISBN], [HinhAnh], [SoLuong]) VALUES (N'SP045', N'Compa Vạch dấu 125mm', N'ML006', 50000, N'NSX005', 2021, NULL, NULL, N'8789685458', N'src/main/java/images/SanPham/ThuocKe/combavạchdấu125mm.png', 11)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [GiaSP], [NhaSX], [NamSX], [TheLoai], [TacGia], [ISBN], [HinhAnh], [SoLuong]) VALUES (N'SP046', N'Combo Thước kẻ', N'ML004', 10000, N'NSX004', 2021, NULL, NULL, N'6968542589', N'src/main/java/images/SanPham/ThuocKe/combothướckẻ.png', 24)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [GiaSP], [NhaSX], [NamSX], [TheLoai], [TacGia], [ISBN], [HinhAnh], [SoLuong]) VALUES (N'SP047', N'Gôm Campus', N'ML007', 10000, N'NSX006', 2022, NULL, NULL, N'8575896584', N'src/main/java/images/SanPham/ThuocKe/GômCampus.png', 93)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [GiaSP], [NhaSX], [NamSX], [TheLoai], [TacGia], [ISBN], [HinhAnh], [SoLuong]) VALUES (N'SP048', N'Gôm Deli', N'ML007', 6000, N'NSX004', 2022, NULL, NULL, N'7589685425', N'src/main/java/images/SanPham/ThuocKe/gômDeli.png', 29)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [GiaSP], [NhaSX], [NamSX], [TheLoai], [TacGia], [ISBN], [HinhAnh], [SoLuong]) VALUES (N'SP049', N'Gôm Hi-polyme', N'ML007', 16000, N'NSX006', 2023, NULL, NULL, N'8796852548', N'src/main/java/images/SanPham/ThuocKe/GômHipolymer.png', 130)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [GiaSP], [NhaSX], [NamSX], [TheLoai], [TacGia], [ISBN], [HinhAnh], [SoLuong]) VALUES (N'SP050', N'Gôm Plus', N'ML007', 12000, N'NSX002', 2020, NULL, NULL, N'8758968452', N'src/main/java/images/SanPham/ThuocKe/GômPlus.png', 59)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [GiaSP], [NhaSX], [NamSX], [TheLoai], [TacGia], [ISBN], [HinhAnh], [SoLuong]) VALUES (N'SP051', N'Thước kẻ Deli', N'ML001', 5000, N'NSX004', 2021, NULL, NULL, N'5869325478', N'src/main/java/images/SanPham/ThuocKe/thướckẻDeli.png', 50)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [GiaSP], [NhaSX], [NamSX], [TheLoai], [TacGia], [ISBN], [HinhAnh], [SoLuong]) VALUES (N'SP052', N'Thước kẻ hình học', N'ML004', 12000, N'NSX004', 2021, NULL, NULL, N'9858685452', N'src/main/java/images/SanPham/ThuocKe/thướckẻhìnhhọc.png', 30)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [GiaSP], [NhaSX], [NamSX], [TheLoai], [TacGia], [ISBN], [HinhAnh], [SoLuong]) VALUES (N'SP053', N'Thước kẻ Hồng Hà', N'ML004', 6000, N'NSX006', 2023, NULL, NULL, N'9858745635', N'src/main/java/images/SanPham/ThuocKe/thướckẻhồnghà.png', 59)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [GiaSP], [NhaSX], [NamSX], [TheLoai], [TacGia], [ISBN], [HinhAnh], [SoLuong]) VALUES (N'SP054', N'Thước kẻ Kim Nguyên', N'ML004', 5000, N'NSX005', 2021, NULL, NULL, N'7895864251', N'src/main/java/images/SanPham/ThuocKe/thướckẻKimNguyên.png', 20)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [GiaSP], [NhaSX], [NamSX], [TheLoai], [TacGia], [ISBN], [HinhAnh], [SoLuong]) VALUES (N'SP055', N'Thước kẻ Smart Kids', N'ML004', 15000, N'NSX004', 2021, NULL, NULL, N'9854762525', N'src/main/java/images/SanPham/ThuocKe/Thướckẻsmartkids.png', 10)
GO
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [GioiTinh], [NgaySinh]) VALUES (N'TG001', N'Văn Tài', 1, CAST(N'1980-05-22' AS Date))
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [GioiTinh], [NgaySinh]) VALUES (N'TG002', N'ĐÌnh Thanh', 1, CAST(N'1975-10-05' AS Date))
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [GioiTinh], [NgaySinh]) VALUES (N'TG003', N'Hương Hoa', 0, CAST(N'1981-02-12' AS Date))
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [GioiTinh], [NgaySinh]) VALUES (N'TG004', N'Hồng Ánh', 0, CAST(N'1984-11-05' AS Date))
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [GioiTinh], [NgaySinh]) VALUES (N'TG005', N'Vũ Trọng Phụng', 1, CAST(N'1912-10-20' AS Date))
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [GioiTinh], [NgaySinh]) VALUES (N'TG006', N'NXB Giáo Dục', 1, CAST(N'2022-05-19' AS Date))
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [GioiTinh], [NgaySinh]) VALUES (N'TG007', N'NXB Đại học Sư Phạm', 1, CAST(N'2022-05-04' AS Date))
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [GioiTinh], [NgaySinh]) VALUES (N'TG008', N'NXB Đại học Quốc Gia Hà Nội', 1, CAST(N'2023-05-12' AS Date))
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [GioiTinh], [NgaySinh]) VALUES (N'TG009', N'Nguyễn Nhật Ánh', 1, CAST(N'2022-05-04' AS Date))
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [GioiTinh], [NgaySinh]) VALUES (N'TG010', N'Văn Thành Lê', 1, CAST(N'1978-09-12' AS Date))
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [GioiTinh], [NgaySinh]) VALUES (N'TG011', N'NXB Kim Đồng', 1, CAST(N'1999-08-04' AS Date))
GO
INSERT [dbo].[TaiKhoan] ([NhanVien], [MatKhau]) VALUES (N'NV001', N'1234')
INSERT [dbo].[TaiKhoan] ([NhanVien], [MatKhau]) VALUES (N'NV002', N'1234')
INSERT [dbo].[TaiKhoan] ([NhanVien], [MatKhau]) VALUES (N'NV003', N'1234')
INSERT [dbo].[TaiKhoan] ([NhanVien], [MatKhau]) VALUES (N'NV004', N'1234')
INSERT [dbo].[TaiKhoan] ([NhanVien], [MatKhau]) VALUES (N'NV005', N'1234')
INSERT [dbo].[TaiKhoan] ([NhanVien], [MatKhau]) VALUES (N'NV006', N'1234')
INSERT [dbo].[TaiKhoan] ([NhanVien], [MatKhau]) VALUES (N'NV007', N'1234')
INSERT [dbo].[TaiKhoan] ([NhanVien], [MatKhau]) VALUES (N'NV008', N'1234')
GO
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (N'TL001', N'Sách giáo khoa')
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (N'TL002', N'Tài lệu tham khảo')
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (N'TL003', N'Giáo trình')
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (N'TL004', N'Truyện tranh')
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (N'TL005', N'Tiểu thuyết')
GO
ALTER TABLE [dbo].[PhieuDatHang] ADD  DEFAULT (getdate()) FOR [NgayDat]
GO
ALTER TABLE [dbo].[SanPham] ADD  DEFAULT ((0)) FOR [SoLuong]
GO
ALTER TABLE [dbo].[CTHoaDon]  WITH CHECK ADD FOREIGN KEY([HoaDon])
REFERENCES [dbo].[HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[CTHoaDon]  WITH CHECK ADD FOREIGN KEY([SanPham])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[CTPhieuDat]  WITH CHECK ADD FOREIGN KEY([PhieuDat])
REFERENCES [dbo].[PhieuDatHang] ([MaPD])
GO
ALTER TABLE [dbo].[CTPhieuDat]  WITH CHECK ADD FOREIGN KEY([SanPham])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([DatHang])
REFERENCES [dbo].[PhieuDatHang] ([MaPD])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([KhachHang])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([NhanVien])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[PhieuDatHang]  WITH CHECK ADD FOREIGN KEY([KhachHang])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[PhieuDatHang]  WITH CHECK ADD FOREIGN KEY([NhanVien])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([LoaiSP])
REFERENCES [dbo].[LoaiSP] ([MaLoai])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([NhaSX])
REFERENCES [dbo].[NhaSX] ([MaNSX])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([TacGia])
REFERENCES [dbo].[TacGia] ([MaTG])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([TheLoai])
REFERENCES [dbo].[TheLoai] ([MaTheLoai])
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD FOREIGN KEY([NhanVien])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
USE [master]
GO
ALTER DATABASE [CSDL_QLHieuSach] SET  READ_WRITE 
GO
