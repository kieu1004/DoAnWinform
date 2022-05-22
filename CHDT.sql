CREATE DATABASE [CHDT]
GO
USE [CHDT]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 22/5/2022 4:55:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[MaHD] [nvarchar](10) NOT NULL,
	[MaSP] [nvarchar](10) NOT NULL,
	[TenSP] [nvarchar](50) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[ThanhTien] [int] NOT NULL,
	[TrangThai] [char](1) NOT NULL,
 CONSTRAINT [PK_ChiTietHoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietPhieuNhap]    Script Date: 22/5/2022 4:55:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuNhap](
	[MaPN] [nvarchar](10) NOT NULL,
	[MaSP] [nvarchar](10) NOT NULL,
	[TenSP] [nvarchar](50) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[MaNhaSX] [nvarchar](10) NOT NULL,
	[ThanhTien] [int] NOT NULL,
	[TrangThai] [char](1) NOT NULL,
 CONSTRAINT [PK_ChiTietPhieuNhap] PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 22/5/2022 4:55:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [nvarchar](10) NOT NULL,
	[NgayTaoHD] [datetime] NOT NULL,
	[MaNV] [nvarchar](10) NOT NULL,
	[MaKH] [nvarchar](10) NULL,
	[ThanhTien] [int] NOT NULL,
	[TrangThai] [char](1) NOT NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 22/5/2022 4:55:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [nvarchar](10) NOT NULL,
	[TenKH] [nvarchar](50) NOT NULL,
	[GioiTinh] [nvarchar](3) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[SĐT] [char](10) NOT NULL,
	[DiaChi] [nvarchar](50) NULL,
	[MaLoaiTVien] [nvarchar](10) NOT NULL,
	[DiemTichLuy] [int] NOT NULL,
	[TrangThai] [char](1) NOT NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiNhanVien]    Script Date: 22/5/2022 4:55:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiNhanVien](
	[MaLoaiNV] [nvarchar](10) NOT NULL,
	[TenLoaiNV] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_LoaiNhanVien] PRIMARY KEY CLUSTERED 
(
	[MaLoaiNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 22/5/2022 4:55:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoaiSP] [nvarchar](10) NOT NULL,
	[TenLoaiSP] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_LoaiSanPham] PRIMARY KEY CLUSTERED 
(
	[MaLoaiSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiThanhVien]    Script Date: 22/5/2022 4:55:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiThanhVien](
	[MaLoaiTVien] [nvarchar](10) NOT NULL,
	[TenLoaiTVien] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_LoaiThanhVien] PRIMARY KEY CLUSTERED 
(
	[MaLoaiTVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 22/5/2022 4:55:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [nvarchar](10) NOT NULL,
	[TenNCC] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 22/5/2022 4:55:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [nvarchar](10) NOT NULL,
	[TenNV] [nvarchar](50) NOT NULL,
	[GioiTinh] [nvarchar](3) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[SĐT] [char](10) NOT NULL,
	[DiaChi] [nvarchar](50) NULL,
	[MaLoaiNV] [nvarchar](10) NOT NULL,
	[MaNguoiDung] [nvarchar](10) NOT NULL,
	[TrangThai] [char](1) NOT NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaSanXuat]    Script Date: 22/5/2022 4:55:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaSanXuat](
	[MaNhaSX] [nvarchar](10) NOT NULL,
	[TenNhaSX] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_NhaSanXuat] PRIMARY KEY CLUSTERED 
(
	[MaNhaSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuNhapHang]    Script Date: 22/5/2022 4:55:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhapHang](
	[MaPN] [nvarchar](10) NOT NULL,
	[NgayTaoPN] [datetime] NOT NULL,
	[MaNV] [nvarchar](10) NOT NULL,
	[MaNCC] [nvarchar](10) NOT NULL,
	[ThanhTien] [int] NOT NULL,
	[TrangThai] [char](1) NOT NULL,
 CONSTRAINT [PK_PhieuNhapHang] PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 22/5/2022 4:55:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [nvarchar](10) NOT NULL,
	[TenSP] [nvarchar](50) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DonGia] [int] NOT NULL,
	[MaLoaiSP] [nvarchar](10) NOT NULL,
	[MaNhaSX] [nvarchar](10) NOT NULL,
	[TrangThai] [char](1) NOT NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 22/5/2022 4:55:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[MaNguoiDung] [nvarchar](10) NOT NULL,
	[TaiKhoan] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](50) NOT NULL,
	[MaLoaiNV] [nvarchar](10) NULL,
 CONSTRAINT [PK_DangNhap] PRIMARY KEY CLUSTERED 
(
	[MaNguoiDung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [Email], [SĐT], [DiaChi], [MaLoaiTVien], [DiemTichLuy], [TrangThai]) VALUES (N'KH001', N'Văn Tuấn Kiệt', N'Nam', N'kietvan@gmail.com', N'0935112869', N'TPHCM', N'LTV001', 50, N'1')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [Email], [SĐT], [DiaChi], [MaLoaiTVien], [DiemTichLuy], [TrangThai]) VALUES (N'KH002', N'Nguyễn Hữu Lợi', N'Nam', N'loinguyen@gmail.com', N'0923445689', N'TPHCM', N'LTV002', 150, N'1')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [Email], [SĐT], [DiaChi], [MaLoaiTVien], [DiemTichLuy], [TrangThai]) VALUES (N'KH003', N'Trần Công Lộc', N'Nam', N'loctran@gmail.com', N'0922355486', N'TPHCM', N'LTV003', 200, N'1')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [Email], [SĐT], [DiaChi], [MaLoaiTVien], [DiemTichLuy], [TrangThai]) VALUES (N'KH004', N'Nguyễn Thị Thảo Ly', N'Nữ', N'lylynguyen@gmail.com', N'0925929772', N'TPHCM', N'LTV003', 220, N'1')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [Email], [SĐT], [DiaChi], [MaLoaiTVien], [DiemTichLuy], [TrangThai]) VALUES (N'KH005', N'Phạm Hoàng Tuấn', N'Nam', N'tuanpham@gmail.com', N'0941130732', N'TPHCM', N'LTV004', 400, N'1')
GO
INSERT [dbo].[LoaiNhanVien] ([MaLoaiNV], [TenLoaiNV]) VALUES (N'LNV001', N'Nhân viên')
INSERT [dbo].[LoaiNhanVien] ([MaLoaiNV], [TenLoaiNV]) VALUES (N'LNV002', N'Quản lí')
INSERT [dbo].[LoaiNhanVien] ([MaLoaiNV], [TenLoaiNV]) VALUES (N'LNV003', N'Thủ kho')
INSERT [dbo].[LoaiNhanVien] ([MaLoaiNV], [TenLoaiNV]) VALUES (N'LNV004', N'Quản trị hệ thống')
GO
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP]) VALUES (N'L001', N'Máy tính bàn')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP]) VALUES (N'L002', N'Laptop')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP]) VALUES (N'L003', N'Điện thoại')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP]) VALUES (N'L004', N'Tablet')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP]) VALUES (N'L005', N'Đồng hồ thông minh')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP]) VALUES (N'L006', N'Màn hình')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP]) VALUES (N'L007', N'TV')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP]) VALUES (N'L008', N'Tai nghe')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP]) VALUES (N'L009', N'Loa')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP]) VALUES (N'L010', N'Bàn phím')
GO
INSERT [dbo].[LoaiThanhVien] ([MaLoaiTVien], [TenLoaiTVien]) VALUES (N'LTV001', N'Đồng')
INSERT [dbo].[LoaiThanhVien] ([MaLoaiTVien], [TenLoaiTVien]) VALUES (N'LTV002', N'Bạc')
INSERT [dbo].[LoaiThanhVien] ([MaLoaiTVien], [TenLoaiTVien]) VALUES (N'LTV003', N'Vàng')
INSERT [dbo].[LoaiThanhVien] ([MaLoaiTVien], [TenLoaiTVien]) VALUES (N'LTV004', N'Kim cương')
GO
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (N'NCC01', N'Công Ty TNHH VIETHAS')
GO
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [Email], [SĐT], [DiaChi], [MaLoaiNV], [MaNguoiDung], [TrangThai]) VALUES (N'NV001', N'Đỗ Thị Phương Anh', N'Nữ', N'anhthiphuongdo123@gmail.com', N'0983556448', N'TPHCM', N'LNV001', N'US009', N'1')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [Email], [SĐT], [DiaChi], [MaLoaiNV], [MaNguoiDung], [TrangThai]) VALUES (N'NV002', N'Nguyễn Ngọc Bảo', N'Nam', N'baonguyenngoc@gmail.com', N'0946777827', N'Quảng Ngãi', N'LNV002', N'US005', N'1')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [Email], [SĐT], [DiaChi], [MaLoaiNV], [MaNguoiDung], [TrangThai]) VALUES (N'NV003', N'Ngô Quốc Cường', N'Nam', N'cuongngoquoc@gmail.com', N'0982355479', N'TPHCM', N'LNV001', N'US010', N'1')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [Email], [SĐT], [DiaChi], [MaLoaiNV], [MaNguoiDung], [TrangThai]) VALUES (N'NV004', N'Lồ Sin Dậu', N'Nam', N'daulosin@gmail.com', N'0898237581', N'TPHCM', N'LNV002', N'US002', N'1')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [Email], [SĐT], [DiaChi], [MaLoaiNV], [MaNguoiDung], [TrangThai]) VALUES (N'NV005', N'Đoàn Trần Bá Đạt', N'Nam', N'badatdoan@gmail.com', N'0977420748', N'TPHCM', N'LNV002', N'US001', N'1')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [Email], [SĐT], [DiaChi], [MaLoaiNV], [MaNguoiDung], [TrangThai]) VALUES (N'NV006', N'Nông Thảo Hiền', N'Nữ', N'hiennong@gmail.com', N'0935112869', N'TPHCM', N'LNV001', N'US011', N'1')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [Email], [SĐT], [DiaChi], [MaLoaiNV], [MaNguoiDung], [TrangThai]) VALUES (N'NV007', N'Nguyễn Văn Vĩnh Hưng', N'Nam', N'hungnguyenvanvinh@gmail.com', N'0943555678', N'TPHCM', N'LNV001', N'US012', N'1')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [Email], [SĐT], [DiaChi], [MaLoaiNV], [MaNguoiDung], [TrangThai]) VALUES (N'NV008', N'Đặng Duy Khánh', N'Nam', N'khanhdang@gmail.com', N'0933455899', N'TPHCM', N'LNV001', N'US013', N'1')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [Email], [SĐT], [DiaChi], [MaLoaiNV], [MaNguoiDung], [TrangThai]) VALUES (N'NV009', N'Lê Tấn Khoa', N'Nam', N'khoaletan@gmail.com', N'0935113567', N'TPHCM', N'LNV001', N'US014', N'1')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [Email], [SĐT], [DiaChi], [MaLoaiNV], [MaNguoiDung], [TrangThai]) VALUES (N'NV010', N'Nguyễn Văn Khôi', N'Nam', N'khoinguyen@gmail.com', N'0922355467', N'TPHCM', N'LNV001', N'US015', N'1')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [Email], [SĐT], [DiaChi], [MaLoaiNV], [MaNguoiDung], [TrangThai]) VALUES (N'NV011', N'Nguyễn Thị Bích Kiều', N'Nữ', N'kieunguyen@gmail.com', N'0922115869', N'TPHCM', N'LNV002', N'US004', N'1')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [Email], [SĐT], [DiaChi], [MaLoaiNV], [MaNguoiDung], [TrangThai]) VALUES (N'NV012', N'Lâm Minh Tuấn Kiện', N'Nam', N'kienlam@gmail.com', N'0955322867', N'TPHCM', N'LNV001', N'US016', N'1')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [Email], [SĐT], [DiaChi], [MaLoaiNV], [MaNguoiDung], [TrangThai]) VALUES (N'NV013', N'Trần Hoàng Thanh Thy', N'Nữ', N'thygao@gmail.com', N'0922355918', N'TPHCM', N'LNV001', N'US017', N'1')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [Email], [SĐT], [DiaChi], [MaLoaiNV], [MaNguoiDung], [TrangThai]) VALUES (N'NV014', N'Nguyễn Hoàn Thiện', N'Nam', N'thiennguyen@gmail.com', N'0935112448', N'TPHCM', N'LNV002', N'US003', N'1')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [Email], [SĐT], [DiaChi], [MaLoaiNV], [MaNguoiDung], [TrangThai]) VALUES (N'NV015', N'Trần Tiến Phát', N'Nam', N'phattran@gmail.com', N'0982156878', N'TPHCM', N'LNV003', N'US006', N'1')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [Email], [SĐT], [DiaChi], [MaLoaiNV], [MaNguoiDung], [TrangThai]) VALUES (N'NV016', N'Lê Thị Cẩm Hà', N'Nữ', N'hale@gmail.com', N'0981819175', N'TPHCM', N'LNV003', N'US007', N'1')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [Email], [SĐT], [DiaChi], [MaLoaiNV], [MaNguoiDung], [TrangThai]) VALUES (N'NV017', N'Nguyễn Phương Duy', N'Nam', N'duynguyen@gmail.com', N'0983814358', N'TPHCM', N'LNV003', N'US018', N'1')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [Email], [SĐT], [DiaChi], [MaLoaiNV], [MaNguoiDung], [TrangThai]) VALUES (N'NV018', N'Nguyễn Ngọc Nhã Thy', N'Nữ', N'thynguyen@gmail.com', N'0933525789', N'TPHCM', N'LNV003', N'US019', N'1')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [Email], [SĐT], [DiaChi], [MaLoaiNV], [MaNguoiDung], [TrangThai]) VALUES (N'NV019', N'Võ Ngọc Đan Thanh', N'Nữ', N'thanhvo@gmail.com', N'0943523479', N'TPHCM', N'LNV003', N'US008', N'1')
GO
INSERT [dbo].[NhaSanXuat] ([MaNhaSX], [TenNhaSX]) VALUES (N'SX001', N'Asus')
INSERT [dbo].[NhaSanXuat] ([MaNhaSX], [TenNhaSX]) VALUES (N'SX002', N'Dell')
INSERT [dbo].[NhaSanXuat] ([MaNhaSX], [TenNhaSX]) VALUES (N'SX003', N'Apple')
INSERT [dbo].[NhaSanXuat] ([MaNhaSX], [TenNhaSX]) VALUES (N'SX004', N'Samsung')
INSERT [dbo].[NhaSanXuat] ([MaNhaSX], [TenNhaSX]) VALUES (N'SX005', N'Lenovo')
INSERT [dbo].[NhaSanXuat] ([MaNhaSX], [TenNhaSX]) VALUES (N'SX006', N'HP')
INSERT [dbo].[NhaSanXuat] ([MaNhaSX], [TenNhaSX]) VALUES (N'SX007', N'Microsoft')
INSERT [dbo].[NhaSanXuat] ([MaNhaSX], [TenNhaSX]) VALUES (N'SX008', N'Oppo')
INSERT [dbo].[NhaSanXuat] ([MaNhaSX], [TenNhaSX]) VALUES (N'SX009', N'Huawei')
INSERT [dbo].[NhaSanXuat] ([MaNhaSX], [TenNhaSX]) VALUES (N'SX010', N'Realme')
INSERT [dbo].[NhaSanXuat] ([MaNhaSX], [TenNhaSX]) VALUES (N'SX011', N'LG')
INSERT [dbo].[NhaSanXuat] ([MaNhaSX], [TenNhaSX]) VALUES (N'SX012', N'Sony')
INSERT [dbo].[NhaSanXuat] ([MaNhaSX], [TenNhaSX]) VALUES (N'SX013', N'Logitech')
GO
INSERT [dbo].[PhieuNhapHang] ([MaPN], [NgayTaoPN], [MaNV], [MaNCC], [ThanhTien], [TrangThai]) VALUES (N'PN001', CAST(N'2022-05-16T13:37:00.000' AS DateTime), N'NV002', N'NCC01', 47000000, N'1')
INSERT [dbo].[PhieuNhapHang] ([MaPN], [NgayTaoPN], [MaNV], [MaNCC], [ThanhTien], [TrangThai]) VALUES (N'PN002', CAST(N'2022-05-16T13:37:00.000' AS DateTime), N'NV002', N'NCC01', 23500000, N'1')
INSERT [dbo].[PhieuNhapHang] ([MaPN], [NgayTaoPN], [MaNV], [MaNCC], [ThanhTien], [TrangThai]) VALUES (N'PN003', CAST(N'2022-05-16T13:37:00.000' AS DateTime), N'NV002', N'NCC01', 23500000, N'1')
INSERT [dbo].[PhieuNhapHang] ([MaPN], [NgayTaoPN], [MaNV], [MaNCC], [ThanhTien], [TrangThai]) VALUES (N'PN004', CAST(N'2022-05-16T13:37:00.000' AS DateTime), N'NV002', N'NCC01', 23500000, N'1')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MaLoaiSP], [MaNhaSX], [TrangThai]) VALUES (N'SP001', N'Asus Vivobook Pro 14 Oled', 14, 23500000, N'L002', N'SX001', N'1')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MaLoaiSP], [MaNhaSX], [TrangThai]) VALUES (N'SP002', N'Dell Inspiron 5515', 20, 19500000, N'L002', N'SX002', N'1')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MaLoaiSP], [MaNhaSX], [TrangThai]) VALUES (N'SP003', N'Macbook Air M1 2020', 25, 23500000, N'L002', N'SX003', N'1')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MaLoaiSP], [MaNhaSX], [TrangThai]) VALUES (N'SP004', N'HP Spectre', 6, 18000000, N'L002', N'SX006', N'1')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MaLoaiSP], [MaNhaSX], [TrangThai]) VALUES (N'SP005', N'Dell Vostro 3670MT J84NJ1', 10, 16500000, N'L001', N'SX002', N'1')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MaLoaiSP], [MaNhaSX], [TrangThai]) VALUES (N'SP006', N'HP ProDesk 400 G5 MT 4ST33PA', 13, 17200000, N'L001', N'SX006', N'1')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MaLoaiSP], [MaNhaSX], [TrangThai]) VALUES (N'SP007', N'Apple iMac 2017 MMQA2', 10, 41500000, N'L001', N'SX003', N'1')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MaLoaiSP], [MaNhaSX], [TrangThai]) VALUES (N'SP008', N'Microsoft Surface Laptop 4', 20, 22500000, N'L002', N'SX007', N'1')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MaLoaiSP], [MaNhaSX], [TrangThai]) VALUES (N'SP009', N'Macbook Pro M1 2020', 22, 32500000, N'L002', N'SX003', N'1')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MaLoaiSP], [MaNhaSX], [TrangThai]) VALUES (N'SP010', N'Dell XPS 13', 19, 22500000, N'L002', N'SX002', N'1')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MaLoaiSP], [MaNhaSX], [TrangThai]) VALUES (N'SP011', N'Dell Inspiron 7501', 10, 31500000, N'L002', N'SX002', N'1')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MaLoaiSP], [MaNhaSX], [TrangThai]) VALUES (N'SP012', N'Dell Vostro 3400', 8, 17500000, N'L002', N'SX002', N'1')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MaLoaiSP], [MaNhaSX], [TrangThai]) VALUES (N'SP013', N'Asus Vivobook F512J', 10, 19500000, N'L002', N'SX001', N'1')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MaLoaiSP], [MaNhaSX], [TrangThai]) VALUES (N'SP014', N'Asus Zenbook Q408UG', 12, 18500000, N'L002', N'SX001', N'1')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MaLoaiSP], [MaNhaSX], [TrangThai]) VALUES (N'SP015', N'MacBook Pro 16 inch Intel', 6, 35800000, N'L002', N'SX003', N'1')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MaLoaiSP], [MaNhaSX], [TrangThai]) VALUES (N'SP016', N'MacBook Pro 16 inch M1 Pro', 8, 75200000, N'L002', N'SX003', N'1')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MaLoaiSP], [MaNhaSX], [TrangThai]) VALUES (N'SP017', N'Lenovo Yoga Slim 7 i7', 10, 24500000, N'L002', N'SX005', N'1')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MaLoaiSP], [MaNhaSX], [TrangThai]) VALUES (N'SP018', N'HP Envy 13', 12, 18500000, N'L002', N'SX006', N'1')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MaLoaiSP], [MaNhaSX], [TrangThai]) VALUES (N'SP019', N'HP ProBook 445 G7', 8, 20500000, N'L002', N'SX006', N'1')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MaLoaiSP], [MaNhaSX], [TrangThai]) VALUES (N'SP020', N'Lenovo ThinkPad X1 Carbon (Gen 9)', 9, 22500000, N'L002', N'SX005', N'1')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MaLoaiSP], [MaNhaSX], [TrangThai]) VALUES (N'SP021', N'Lenovo Legion 5 Pro', 6, 23500000, N'L002', N'SX005', N'1')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MaLoaiSP], [MaNhaSX], [TrangThai]) VALUES (N'SP022', N'Huawei Matebook Pro 14 2021', 5, 20500000, N'L002', N'SX009', N'1')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MaLoaiSP], [MaNhaSX], [TrangThai]) VALUES (N'SP023', N'Macbook Air M2 2022', 15, 27500000, N'L002', N'SX003', N'1')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MaLoaiSP], [MaNhaSX], [TrangThai]) VALUES (N'SP024', N'HP ProDesk 400 G5 MT 4ST33PA', 8, 19500000, N'L001', N'SX006', N'1')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MaLoaiSP], [MaNhaSX], [TrangThai]) VALUES (N'SP025', N'Dell Vostro 3470ST STI31508', 5, 18000000, N'L001', N'SX002', N'1')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MaLoaiSP], [MaNhaSX], [TrangThai]) VALUES (N'SP026', N'OPPO A76', 11, 6500000, N'L003', N'SX008', N'1')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MaLoaiSP], [MaNhaSX], [TrangThai]) VALUES (N'SP027', N'OPPO Reno7', 10, 8990000, N'L003', N'SX008', N'1')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MaLoaiSP], [MaNhaSX], [TrangThai]) VALUES (N'SP028', N'OPPO Reno7 Pro 5G', 9, 7990000, N'L003', N'SX008', N'1')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MaLoaiSP], [MaNhaSX], [TrangThai]) VALUES (N'SP029', N'OPPO Find X5 Pro 5G', 8, 7800000, N'L003', N'SX008', N'1')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MaLoaiSP], [MaNhaSX], [TrangThai]) VALUES (N'SP030', N'Galaxy S22 Ultra', 10, 31500000, N'L003', N'SX004', N'1')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MaLoaiSP], [MaNhaSX], [TrangThai]) VALUES (N'SP031', N'Galaxy Z Fold 3', 8, 24500000, N'L003', N'SX004', N'1')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MaLoaiSP], [MaNhaSX], [TrangThai]) VALUES (N'SP032', N'Galaxy A53 5G', 15, 8950000, N'L003', N'SX004', N'1')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MaLoaiSP], [MaNhaSX], [TrangThai]) VALUES (N'SP033', N'Realme X3 SuperZoom', 5, 4990000, N'L003', N'SX010', N'1')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MaLoaiSP], [MaNhaSX], [TrangThai]) VALUES (N'SP034', N'Realme 6 Pro', 6, 5990000, N'L003', N'SX010', N'1')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MaLoaiSP], [MaNhaSX], [TrangThai]) VALUES (N'SP035', N'IPhone 11 64GB', 15, 8500000, N'L003', N'SX003', N'1')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MaLoaiSP], [MaNhaSX], [TrangThai]) VALUES (N'SP036', N'iPhone 12 Pro Max', 10, 32500000, N'L003', N'SX003', N'1')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MaLoaiSP], [MaNhaSX], [TrangThai]) VALUES (N'SP037', N'Asus Zenfone 5', 15, 9500000, N'L003', N'SX001', N'1')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MaLoaiSP], [MaNhaSX], [TrangThai]) VALUES (N'SP038', N'Asus Rog Phone 2', 20, 13500000, N'L003', N'SX001', N'1')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MaLoaiSP], [MaNhaSX], [TrangThai]) VALUES (N'SP039', N'LG V60 ThinQ.', 10, 6990000, N'L003', N'SX011', N'1')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MaLoaiSP], [MaNhaSX], [TrangThai]) VALUES (N'SP040', N'LG G8 ThinQ.', 8, 79900000, N'L003', N'SX011', N'1')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MaLoaiSP], [MaNhaSX], [TrangThai]) VALUES (N'SP041', N'TV LG Smart OLED G1 65 inch 4K OLED65G1PTA', 5, 52500000, N'L007', N'SX011', N'1')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MaLoaiSP], [MaNhaSX], [TrangThai]) VALUES (N'SP042', N'Smart Tivi LG 4K 70 inch 70UP7750PTB', 12, 20500000, N'L007', N'SX011', N'1')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MaLoaiSP], [MaNhaSX], [TrangThai]) VALUES (N'SP043', N'Smart Tivi OLED LG 4K 48 inch 48A1PTA', 5, 23500000, N'L007', N'SX011', N'1')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MaLoaiSP], [MaNhaSX], [TrangThai]) VALUES (N'SP044', N'Tivi Sony 4K 43 inch KD-43X8500H', 10, 24500000, N'L007', N'SX012', N'1')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MaLoaiSP], [MaNhaSX], [TrangThai]) VALUES (N'SP045', N'Tivi Sony 4K 49 inch KD-49X8050H', 8, 34500000, N'L007', N'SX012', N'1')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MaLoaiSP], [MaNhaSX], [TrangThai]) VALUES (N'SP046', N'Apple Watch Series 7 41mm', 5, 13500000, N'L005', N'SX003', N'1')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MaLoaiSP], [MaNhaSX], [TrangThai]) VALUES (N'SP047', N'Huawei Watch GT3', 10, 14500000, N'L005', N'SX009', N'1')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MaLoaiSP], [MaNhaSX], [TrangThai]) VALUES (N'SP048', N'Samsung Galaxy Watch 4 40mm', 5, 12350000, N'L005', N'SX004', N'1')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MaLoaiSP], [MaNhaSX], [TrangThai]) VALUES (N'SP049', N'Apple Watch Series 5', 8, 6500000, N'L005', N'SX003', N'1')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MaLoaiSP], [MaNhaSX], [TrangThai]) VALUES (N'SP050', N'Samsung Galaxy Tab S6 Lite 64GB Xanh', 10, 13500000, N'L004', N'SX004', N'1')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MaLoaiSP], [MaNhaSX], [TrangThai]) VALUES (N'SP051', N'Samsung Galaxy Tab S7 FE 64GB Đen', 5, 15990000, N'L004', N'SX004', N'1')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MaLoaiSP], [MaNhaSX], [TrangThai]) VALUES (N'SP052', N'Lenovo Tab M8', 9, 9500000, N'L004', N'SX005', N'1')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MaLoaiSP], [MaNhaSX], [TrangThai]) VALUES (N'SP053', N'iPad 10.2 inch Wifi 32GB', 12, 9800000, N'L004', N'SX003', N'1')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MaLoaiSP], [MaNhaSX], [TrangThai]) VALUES (N'SP054', N'iPad Pro M1 2021', 10, 40990000, N'L004', N'SX003', N'1')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MaLoaiSP], [MaNhaSX], [TrangThai]) VALUES (N'SP055', N'Asus VP279QGL Gaming Monitor', 12, 9500000, N'L006', N'SX001', N'1')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MaLoaiSP], [MaNhaSX], [TrangThai]) VALUES (N'SP056', N'Samsung LS32R750UEEXXV 32 inch 4K', 10, 12500000, N'L006', N'SX004', N'1')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MaLoaiSP], [MaNhaSX], [TrangThai]) VALUES (N'SP057', N'LG 24MP59G-P 24 inch Full HD', 12, 4500000, N'L006', N'SX011', N'1')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MaLoaiSP], [MaNhaSX], [TrangThai]) VALUES (N'SP058', N'Tai Nghe Nhét Tai Sony XBA-N1AP Hi-Res', 10, 1250000, N'L008', N'SX012', N'1')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MaLoaiSP], [MaNhaSX], [TrangThai]) VALUES (N'SP059', N'Sony XBA-N1AP Hi-Res', 8, 1300000, N'L008', N'SX012', N'1')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MaLoaiSP], [MaNhaSX], [TrangThai]) VALUES (N'SP060', N'Loa Bluetooth LG XBOOM GO PN1', 5, 4990000, N'L009', N'SX011', N'1')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MaLoaiSP], [MaNhaSX], [TrangThai]) VALUES (N'SP061', N'Loa Bluetooth Sony SRS XB12', 8, 4500000, N'L009', N'SX012', N'1')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MaLoaiSP], [MaNhaSX], [TrangThai]) VALUES (N'SP062', N'Bàn phím Logitech K380', 10, 550000, N'L010', N'SX013', N'1')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MaLoaiSP], [MaNhaSX], [TrangThai]) VALUES (N'SP063', N'Bàn phím Logitech G Pro X', 12, 670000, N'L010', N'SX013', N'1')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MaLoaiSP], [MaNhaSX], [TrangThai]) VALUES (N'SP064', N'Bàn phím Logitech G613', 10, 850000, N'L010', N'SX013', N'1')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MaLoaiSP], [MaNhaSX], [TrangThai]) VALUES (N'SP065', N'Bàn phím Logitech K270', 8, 720000, N'L010', N'SX013', N'1')
GO
INSERT [dbo].[TaiKhoan] ([MaNguoiDung], [TaiKhoan], [MatKhau], [MaLoaiNV]) VALUES (N'US001', N'datdoan123', N'doantranbadat12345', N'LNV002')
INSERT [dbo].[TaiKhoan] ([MaNguoiDung], [TaiKhoan], [MatKhau], [MaLoaiNV]) VALUES (N'US002', N'daulosin', N'dau123', N'LNV002')
INSERT [dbo].[TaiKhoan] ([MaNguoiDung], [TaiKhoan], [MatKhau], [MaLoaiNV]) VALUES (N'US003', N'thiennguyen2455', N'thiennguyen231002', N'LNV002')
INSERT [dbo].[TaiKhoan] ([MaNguoiDung], [TaiKhoan], [MatKhau], [MaLoaiNV]) VALUES (N'US004', N'bichkieu2002', N'bichkieu123', N'LNV002')
INSERT [dbo].[TaiKhoan] ([MaNguoiDung], [TaiKhoan], [MatKhau], [MaLoaiNV]) VALUES (N'US005', N'bao201102', N'bao201102', N'LNV003')
INSERT [dbo].[TaiKhoan] ([MaNguoiDung], [TaiKhoan], [MatKhau], [MaLoaiNV]) VALUES (N'US006', N'phattran123', N'trantienphat123456', N'LNV003')
INSERT [dbo].[TaiKhoan] ([MaNguoiDung], [TaiKhoan], [MatKhau], [MaLoaiNV]) VALUES (N'US007', N'halethicam1604', N'camha160402', N'LNV003')
INSERT [dbo].[TaiKhoan] ([MaNguoiDung], [TaiKhoan], [MatKhau], [MaLoaiNV]) VALUES (N'US008', N'danthanh2210', N'danthanh123', N'LNV003')
INSERT [dbo].[TaiKhoan] ([MaNguoiDung], [TaiKhoan], [MatKhau], [MaLoaiNV]) VALUES (N'US009', N'anhthiphuongdo', N'anhdo12345', N'LNV001')
INSERT [dbo].[TaiKhoan] ([MaNguoiDung], [TaiKhoan], [MatKhau], [MaLoaiNV]) VALUES (N'US010', N'cuongngoquoc', N'cuongngo123', N'LNV001')
INSERT [dbo].[TaiKhoan] ([MaNguoiDung], [TaiKhoan], [MatKhau], [MaLoaiNV]) VALUES (N'US011', N'nongthaohien', N'hiennong120402', N'LNV001')
INSERT [dbo].[TaiKhoan] ([MaNguoiDung], [TaiKhoan], [MatKhau], [MaLoaiNV]) VALUES (N'US012', N'vinhhung123', N'vinhhung12345', N'LNV001')
INSERT [dbo].[TaiKhoan] ([MaNguoiDung], [TaiKhoan], [MatKhau], [MaLoaiNV]) VALUES (N'US013', N'khanhdang', N'dangduykhanh170102', N'LNV001')
INSERT [dbo].[TaiKhoan] ([MaNguoiDung], [TaiKhoan], [MatKhau], [MaLoaiNV]) VALUES (N'US014', N'khoaletan123', N'letankhoa1011002', N'LNV001')
INSERT [dbo].[TaiKhoan] ([MaNguoiDung], [TaiKhoan], [MatKhau], [MaLoaiNV]) VALUES (N'US015', N'vankhoi123', N'vankhoi12345', N'LNV001')
INSERT [dbo].[TaiKhoan] ([MaNguoiDung], [TaiKhoan], [MatKhau], [MaLoaiNV]) VALUES (N'US016', N'kienlamminhtuan', N'kiensinger123', N'LNV001')
INSERT [dbo].[TaiKhoan] ([MaNguoiDung], [TaiKhoan], [MatKhau], [MaLoaiNV]) VALUES (N'US017', N'thytranhoangthanh', N'thyg12345', N'LNV001')
INSERT [dbo].[TaiKhoan] ([MaNguoiDung], [TaiKhoan], [MatKhau], [MaLoaiNV]) VALUES (N'US018', N'phuongduy', N'phuongduy123', N'LNV003')
INSERT [dbo].[TaiKhoan] ([MaNguoiDung], [TaiKhoan], [MatKhau], [MaLoaiNV]) VALUES (N'US019', N'thynha123', N'nhathy221102', N'LNV003')
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_HoaDon] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_HoaDon]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_SanPham]
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuNhap_NhaSanXuat] FOREIGN KEY([MaNhaSX])
REFERENCES [dbo].[NhaSanXuat] ([MaNhaSX])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap] CHECK CONSTRAINT [FK_ChiTietPhieuNhap_NhaSanXuat]
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuNhap_PhieuNhapHang] FOREIGN KEY([MaPN])
REFERENCES [dbo].[PhieuNhapHang] ([MaPN])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap] CHECK CONSTRAINT [FK_ChiTietPhieuNhap_PhieuNhapHang]
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuNhap_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap] CHECK CONSTRAINT [FK_ChiTietPhieuNhap_SanPham]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_NhanVien]
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [FK__KhachHang__MaLoa__3D5E1FD2] FOREIGN KEY([MaLoaiTVien])
REFERENCES [dbo].[LoaiThanhVien] ([MaLoaiTVien])
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [FK__KhachHang__MaLoa__3D5E1FD2]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK__NhanVien__MaLoai__3E52440B] FOREIGN KEY([MaLoaiNV])
REFERENCES [dbo].[LoaiNhanVien] ([MaLoaiNV])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK__NhanVien__MaLoai__3E52440B]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK__NhanVien__MaNguo__3F466844] FOREIGN KEY([MaNguoiDung])
REFERENCES [dbo].[TaiKhoan] ([MaNguoiDung])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK__NhanVien__MaNguo__3F466844]
GO
ALTER TABLE [dbo].[PhieuNhapHang]  WITH CHECK ADD  CONSTRAINT [FK__PhieuNhapH__MaNV__4316F928] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[PhieuNhapHang] CHECK CONSTRAINT [FK__PhieuNhapH__MaNV__4316F928]
GO
ALTER TABLE [dbo].[PhieuNhapHang]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhapHang_NhaCungCap] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[PhieuNhapHang] CHECK CONSTRAINT [FK_PhieuNhapHang_NhaCungCap]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK__SanPham__MaLoaiS__47DBAE45] FOREIGN KEY([MaLoaiSP])
REFERENCES [dbo].[LoaiSanPham] ([MaLoaiSP])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK__SanPham__MaLoaiS__47DBAE45]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK__SanPham__MaNhaSX__48CFD27E] FOREIGN KEY([MaNhaSX])
REFERENCES [dbo].[NhaSanXuat] ([MaNhaSX])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK__SanPham__MaNhaSX__48CFD27E]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK__DangNhap__MaLoai__398D8EEE] FOREIGN KEY([MaLoaiNV])
REFERENCES [dbo].[LoaiNhanVien] ([MaLoaiNV])
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK__DangNhap__MaLoai__398D8EEE]
GO
