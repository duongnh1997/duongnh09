CREATE database API
GO
USE [API]
GO
/****** Object:  Table [dbo].[account]    Script Date: 1/5/2023 10:20:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[account](
	[MaTaiKhoan] [int] IDENTITY(1,1) NOT NULL,
	[MaNguoiDung] [char](20) NULL,
	[TaiKhoan] [varchar](100) NULL,
	[MatKhau] [varchar](100) NULL,
	[NgayBatDau] [datetime] NULL,
	[NgayKetThuc] [datetime] NULL,
	[TrangThai] [bit] NULL,
	[LoaiQuyen] [varchar](10) NULL,
 CONSTRAINT [PK_account] PRIMARY KEY CLUSTERED 
(
	[MaTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bill_detail_ban]    Script Date: 1/5/2023 10:20:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bill_detail_ban](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_bill_ban] [int] NOT NULL,
	[masp] [char](40) NULL,
	[giaban] [int] NULL,
	[soluong] [smallint] NULL,
	[chietkhau] [float] NULL,
	[tralai] [smallint] NULL,
 CONSTRAINT [PK__bill_det__3213E83FCE0D1878] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bill_detail_nhap]    Script Date: 1/5/2023 10:20:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bill_detail_nhap](
	[id] [char](20) NOT NULL,
	[id_bill_nhap] [char](20) NOT NULL,
	[id_sp] [char](20) NOT NULL,
	[sl] [int] NOT NULL,
	[don_vi] [varchar](20) NOT NULL,
	[created_at] [date] NULL,
	[updated_at] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bills_ban]    Script Date: 1/5/2023 10:20:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bills_ban](
	[id_bill_ban] [int] NOT NULL,
	[id_kh] [char](100) NULL,
	[ngay_ban] [datetime] NULL,
	[so_hoadon] [nvarchar](500) NULL,
	[manguoidung] [varchar](200) NULL,
 CONSTRAINT [PK__bills_ba__3213E83FE1F574F3] PRIMARY KEY CLUSTERED 
(
	[id_bill_ban] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bills_nhap]    Script Date: 1/5/2023 10:20:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bills_nhap](
	[id] [char](20) NOT NULL,
	[id_ncc] [char](20) NULL,
	[id_nhanvien] [char](20) NOT NULL,
	[date_order] [date] NULL,
	[tong_tien] [float] NULL,
	[thanh_toan] [varchar](200) NULL,
	[note] [nvarchar](500) NULL,
	[created_at] [date] NULL,
	[updated_at] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietDonHang]    Script Date: 1/5/2023 10:20:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonHang](
	[MaChiTietDonHang] [int] IDENTITY(1,1) NOT NULL,
	[MaDonHang] [int] NOT NULL,
	[MaSanPham] [char](20) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[GiaMua] [int] NOT NULL,
 CONSTRAINT [PK_ChiTietDonHang] PRIMARY KEY CLUSTERED 
(
	[MaChiTietDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Donhang]    Script Date: 1/5/2023 10:20:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Donhang](
	[MaDonHang] [int] IDENTITY(1,1) NOT NULL,
	[MaKhachHang] [char](100) NOT NULL,
	[Ngaydat] [datetime] NOT NULL,
	[Trangthai] [nvarchar](50) NULL,
 CONSTRAINT [PK_Donhang] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[khach_hang]    Script Date: 1/5/2023 10:20:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khach_hang](
	[id] [char](100) NOT NULL,
	[ten_kh] [nvarchar](100) NOT NULL,
	[email] [varchar](255) NOT NULL,
	[dia_chi] [varchar](255) NOT NULL,
	[sdt] [varchar](20) NOT NULL,
	[note] [text] NULL,
 CONSTRAINT [PK__khach_ha__3213E83F9FBBB5BA] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[loai_sp]    Script Date: 1/5/2023 10:20:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loai_sp](
	[id] [char](40) NOT NULL,
	[tenloai] [nvarchar](100) NULL,
 CONSTRAINT [PK_loai_sp] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[news]    Script Date: 1/5/2023 10:20:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[news](
	[id_new] [char](20) NOT NULL,
	[title] [nvarchar](200) NOT NULL,
	[content] [nvarchar](1000) NOT NULL,
	[image] [varchar](200) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nha_cung_cap]    Script Date: 1/5/2023 10:20:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nha_cung_cap](
	[id] [char](40) NOT NULL,
	[ten_ncc] [nvarchar](100) NOT NULL,
	[diachi_ncc] [nvarchar](200) NOT NULL,
	[email] [varchar](255) NOT NULL,
	[sdt] [varchar](15) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[san_pham]    Script Date: 1/5/2023 10:20:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[san_pham](
	[id] [char](40) NOT NULL,
	[name] [nvarchar](100) NULL,
	[id_loai_sp] [char](40) NULL,
	[id_ncc] [char](40) NOT NULL,
	[mota_sp] [nvarchar](250) NULL,
	[unit_price] [int] NULL,
	[so_luong] [int] NOT NULL,
	[image] [varchar](255) NULL,
	[don_vi_tinh] [varchar](255) NULL,
	[ngay_sanxuat] [date] NULL,
	[han_sudung] [date] NULL,
	[ngay_them] [date] NULL,
 CONSTRAINT [PK_san_pham] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 1/5/2023 10:20:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [char](20) NOT NULL,
	[full_name] [varchar](50) NOT NULL,
	[address] [nvarchar](50) NOT NULL,
	[email] [varchar](255) NOT NULL,
	[password] [varchar](255) NOT NULL,
	[phone] [varchar](20) NOT NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[account] ON 

INSERT [dbo].[account] ([MaTaiKhoan], [MaNguoiDung], [TaiKhoan], [MatKhau], [NgayBatDau], [NgayKetThuc], [TrangThai], [LoaiQuyen]) VALUES (1, N'1                   ', N'user1', N'123456', CAST(N'2021-08-18T00:44:56.683' AS DateTime), CAST(N'2021-08-18T00:44:56.683' AS DateTime), 1, N'User')
SET IDENTITY_INSERT [dbo].[account] OFF
GO
SET IDENTITY_INSERT [dbo].[bill_detail_ban] ON 

INSERT [dbo].[bill_detail_ban] ([id], [id_bill_ban], [masp], [giaban], [soluong], [chietkhau], [tralai]) VALUES (15, 308223057, N'59                                      ', 15000, 1, NULL, NULL)
INSERT [dbo].[bill_detail_ban] ([id], [id_bill_ban], [masp], [giaban], [soluong], [chietkhau], [tralai]) VALUES (16, 308223057, N'6                                       ', 20000, 1, NULL, NULL)
INSERT [dbo].[bill_detail_ban] ([id], [id_bill_ban], [masp], [giaban], [soluong], [chietkhau], [tralai]) VALUES (17, 423892255, N'59                                      ', 15000, 1, NULL, NULL)
INSERT [dbo].[bill_detail_ban] ([id], [id_bill_ban], [masp], [giaban], [soluong], [chietkhau], [tralai]) VALUES (18, 423892255, N'4                                       ', 200000, 1, NULL, NULL)
INSERT [dbo].[bill_detail_ban] ([id], [id_bill_ban], [masp], [giaban], [soluong], [chietkhau], [tralai]) VALUES (19, 1362938913, N'33                                      ', 25000, 1, NULL, NULL)
INSERT [dbo].[bill_detail_ban] ([id], [id_bill_ban], [masp], [giaban], [soluong], [chietkhau], [tralai]) VALUES (20, 1362938913, N'4                                       ', 200000, 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[bill_detail_ban] OFF
GO
INSERT [dbo].[bills_ban] ([id_bill_ban], [id_kh], [ngay_ban], [so_hoadon], [manguoidung]) VALUES (308223057, N'f0ec4295-3618-42a2-8f0d-d8b4321639a9                                                                ', CAST(N'2023-01-04T16:05:50.440' AS DateTime), NULL, NULL)
INSERT [dbo].[bills_ban] ([id_bill_ban], [id_kh], [ngay_ban], [so_hoadon], [manguoidung]) VALUES (423892255, N'cb3cc6d3-3ea8-40a2-854b-a076c56045ca                                                                ', CAST(N'2023-01-04T16:58:52.797' AS DateTime), NULL, NULL)
INSERT [dbo].[bills_ban] ([id_bill_ban], [id_kh], [ngay_ban], [so_hoadon], [manguoidung]) VALUES (1362938913, N'8d3a89f3-0996-4501-8ced-1483d9eaf468                                                                ', CAST(N'2023-01-05T08:57:54.783' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[bills_nhap] ([id], [id_ncc], [id_nhanvien], [date_order], [tong_tien], [thanh_toan], [note], [created_at], [updated_at]) VALUES (N'1                   ', N'1                   ', N'1                   ', CAST(N'2019-04-15' AS Date), 1500000, N'on', NULL, CAST(N'2019-04-15' AS Date), CAST(N'2019-04-15' AS Date))
GO
SET IDENTITY_INSERT [dbo].[ChiTietDonHang] ON 

INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaMua]) VALUES (32, 15, N'4                   ', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaMua]) VALUES (33, 16, N'33                  ', 1, 25000)
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaMua]) VALUES (34, 16, N'6                   ', 1, 20000)
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaMua]) VALUES (35, 17, N'33                  ', 1, 25000)
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaMua]) VALUES (36, 18, N'3                   ', 1, 10000)
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaMua]) VALUES (37, 18, N'61                  ', 1, 150000)
SET IDENTITY_INSERT [dbo].[ChiTietDonHang] OFF
GO
SET IDENTITY_INSERT [dbo].[Donhang] ON 

INSERT [dbo].[Donhang] ([MaDonHang], [MaKhachHang], [Ngaydat], [Trangthai]) VALUES (15, N'798ea657-1a53-4070-ab68-52122af16b52                                                                ', CAST(N'2023-01-04T15:15:40.100' AS DateTime), N'ok')
INSERT [dbo].[Donhang] ([MaDonHang], [MaKhachHang], [Ngaydat], [Trangthai]) VALUES (16, N'32eac5a8-6570-483f-9e00-0a5ae2da511f                                                                ', CAST(N'2023-01-04T15:30:58.013' AS DateTime), N'ok')
INSERT [dbo].[Donhang] ([MaDonHang], [MaKhachHang], [Ngaydat], [Trangthai]) VALUES (17, N'85e2dc00-5b6c-4f31-a7fb-882ac14576cb                                                                ', CAST(N'2023-01-05T08:45:46.160' AS DateTime), N'ok')
INSERT [dbo].[Donhang] ([MaDonHang], [MaKhachHang], [Ngaydat], [Trangthai]) VALUES (18, N'6be52294-9ab5-4bc7-9efa-b657819d4b59                                                                ', CAST(N'2023-01-05T10:54:22.707' AS DateTime), N'ok')
SET IDENTITY_INSERT [dbo].[Donhang] OFF
GO
INSERT [dbo].[khach_hang] ([id], [ten_kh], [email], [dia_chi], [sdt], [note]) VALUES (N'097078b0-605c-49a1-a777-a4c3eb8fbb63                                                                ', N'Manh', N'a@gmail.com', N'Hung Yên', N'0566211950', N'Ok')
INSERT [dbo].[khach_hang] ([id], [ten_kh], [email], [dia_chi], [sdt], [note]) VALUES (N'27e2e300-6695-457d-a86c-66cd9c2ec7cc                                                                ', N'Manh', N'ok@a', N'a', N'05566211950', N'a')
INSERT [dbo].[khach_hang] ([id], [ten_kh], [email], [dia_chi], [sdt], [note]) VALUES (N'3645a22b-ad6b-4ac0-8030-e5f0a5abe65a                                                                ', N'string', N'string', N'string', N'string', N'string')
INSERT [dbo].[khach_hang] ([id], [ten_kh], [email], [dia_chi], [sdt], [note]) VALUES (N'6be52294-9ab5-4bc7-9efa-b657819d4b59                                                                ', N'Thầy Hiển', N'Th?y Hi?n', N'ok', N'a@gmail', N'oke')
INSERT [dbo].[khach_hang] ([id], [ten_kh], [email], [dia_chi], [sdt], [note]) VALUES (N'85e2dc00-5b6c-4f31-a7fb-882ac14576cb                                                                ', N'Mạnh', N'M?nh', N'ok', N'a@gmail.com', N'oke')
INSERT [dbo].[khach_hang] ([id], [ten_kh], [email], [dia_chi], [sdt], [note]) VALUES (N'8d3a89f3-0996-4501-8ced-1483d9eaf468                                                                ', N'', N'', N'', N'', N'')
INSERT [dbo].[khach_hang] ([id], [ten_kh], [email], [dia_chi], [sdt], [note]) VALUES (N'9b60f57f-f272-4678-846c-69e5634bdf31                                                                ', N'string', N'string', N'string', N'string', N'string')
INSERT [dbo].[khach_hang] ([id], [ten_kh], [email], [dia_chi], [sdt], [note]) VALUES (N'cb3cc6d3-3ea8-40a2-854b-a076c56045ca                                                                ', N'Dương', N'a@gmail', N'Hung Yên', N'0566211950', N'OK')
INSERT [dbo].[khach_hang] ([id], [ten_kh], [email], [dia_chi], [sdt], [note]) VALUES (N'f0ec4295-3618-42a2-8f0d-d8b4321639a9                                                                ', N'Mạnh', N'a@gmail.com', N'Hung Yên', N'0566211950', N'Ðã Chuy?n')
GO
INSERT [dbo].[loai_sp] ([id], [tenloai]) VALUES (N'1                                       ', N'Ðồ ăn nhanh')
INSERT [dbo].[loai_sp] ([id], [tenloai]) VALUES (N'2                                       ', N'Trái cây')
INSERT [dbo].[loai_sp] ([id], [tenloai]) VALUES (N'3                                       ', N'Nấm')
INSERT [dbo].[loai_sp] ([id], [tenloai]) VALUES (N'323                                     ', N'Bánh ngọt')
INSERT [dbo].[loai_sp] ([id], [tenloai]) VALUES (N'4                                       ', N'heo')
INSERT [dbo].[loai_sp] ([id], [tenloai]) VALUES (N'5                                       ', N'bò')
INSERT [dbo].[loai_sp] ([id], [tenloai]) VALUES (N'6                                       ', N'Nước ngọt')
INSERT [dbo].[loai_sp] ([id], [tenloai]) VALUES (N'7                                       ', N'Rau xanh')
INSERT [dbo].[loai_sp] ([id], [tenloai]) VALUES (N'8                                       ', N'Món chính')
GO
INSERT [dbo].[news] ([id_new], [title], [content], [image]) VALUES (N'01949133-6c6a-4330-b', N'th?t bò dang gi?m giá', N'thịt bò đang giảm giá 50%', N'abcd')
GO
INSERT [dbo].[nha_cung_cap] ([id], [ten_ncc], [diachi_ncc], [email], [sdt]) VALUES (N'41a9d744-ee02-4342-8                    ', N'Công ty THHH Yên Mĩ', N'Hưng Yên', N'thyenmi@gmail.com', N'1331113')
INSERT [dbo].[nha_cung_cap] ([id], [ten_ncc], [diachi_ncc], [email], [sdt]) VALUES (N'63beea00-fa50-4adf-9                    ', N'công ty cổ phần TPS', N'Hà Nội', N'tpshn@gmail.com', N'056622113')
INSERT [dbo].[nha_cung_cap] ([id], [ten_ncc], [diachi_ncc], [email], [sdt]) VALUES (N'7d56ec46-aca9-4654-8                    ', N'Công ty FreshFood Hà Nam', N'Hà Nam', N'ffhn@gmail.com', N'032113414')
GO
INSERT [dbo].[san_pham] ([id], [name], [id_loai_sp], [id_ncc], [mota_sp], [unit_price], [so_luong], [image], [don_vi_tinh], [ngay_sanxuat], [han_sudung], [ngay_them]) VALUES (N'3                                       ', N'humberger', N'1                                       ', N'7d56ec46-aca9-4654-8                    ', N'abc', 10000, 10, N'humberger.jpg', N'az', CAST(N'2022-11-19' AS Date), CAST(N'2022-12-19' AS Date), CAST(N'2022-01-19' AS Date))
INSERT [dbo].[san_pham] ([id], [name], [id_loai_sp], [id_ncc], [mota_sp], [unit_price], [so_luong], [image], [don_vi_tinh], [ngay_sanxuat], [han_sudung], [ngay_them]) VALUES (N'33                                      ', N'Cam ngọt', N'2                                       ', N'63beea00-fa50-4adf-9                    ', N'
', 25000, 15, N'cam_ngot.jpg', N'kg', CAST(N'2022-11-19' AS Date), CAST(N'2022-12-19' AS Date), NULL)
INSERT [dbo].[san_pham] ([id], [name], [id_loai_sp], [id_ncc], [mota_sp], [unit_price], [so_luong], [image], [don_vi_tinh], [ngay_sanxuat], [han_sudung], [ngay_them]) VALUES (N'4                                       ', N'Tôm', N'8                                       ', N'3                                       ', NULL, 200000, 150, N'10.jpg', N'con', CAST(N'2022-11-19' AS Date), CAST(N'2022-12-19' AS Date), NULL)
INSERT [dbo].[san_pham] ([id], [name], [id_loai_sp], [id_ncc], [mota_sp], [unit_price], [so_luong], [image], [don_vi_tinh], [ngay_sanxuat], [han_sudung], [ngay_them]) VALUES (N'59                                      ', N'Nước cam', N'6                                       ', N'41a9d744-ee02-4342-8                    ', N'
', 15000, 500, N'nuoccam.jpg', N'kg', CAST(N'2022-11-19' AS Date), CAST(N'2022-12-19' AS Date), NULL)
INSERT [dbo].[san_pham] ([id], [name], [id_loai_sp], [id_ncc], [mota_sp], [unit_price], [so_luong], [image], [don_vi_tinh], [ngay_sanxuat], [han_sudung], [ngay_them]) VALUES (N'61                                      ', N'Gà rán KFC', N'1                                       ', N'7d56ec46-aca9-4654-8                    ', N'
', 150000, 100, N'1.jpg', N'h?p', CAST(N'2022-11-19' AS Date), CAST(N'2022-12-19' AS Date), NULL)
INSERT [dbo].[san_pham] ([id], [name], [id_loai_sp], [id_ncc], [mota_sp], [unit_price], [so_luong], [image], [don_vi_tinh], [ngay_sanxuat], [han_sudung], [ngay_them]) VALUES (N'64                                      ', N'bò viên', N'1                                       ', N'2                                       ', NULL, 20000, 100, N'bovien.jpg', N'dia', CAST(N'2022-11-19' AS Date), CAST(N'2022-12-19' AS Date), NULL)
INSERT [dbo].[san_pham] ([id], [name], [id_loai_sp], [id_ncc], [mota_sp], [unit_price], [so_luong], [image], [don_vi_tinh], [ngay_sanxuat], [han_sudung], [ngay_them]) VALUES (N'65                                      ', N'Yoomost', N'6                                       ', N'2                                       ', NULL, 2000, 20, N'yooh.jpg', N'lon', CAST(N'2022-11-19' AS Date), CAST(N'2022-12-19' AS Date), CAST(N'2022-03-19' AS Date))
INSERT [dbo].[san_pham] ([id], [name], [id_loai_sp], [id_ncc], [mota_sp], [unit_price], [so_luong], [image], [don_vi_tinh], [ngay_sanxuat], [han_sudung], [ngay_them]) VALUES (N'66                                      ', N'Nuớc sting', N'6                                       ', N'63beea00-fa50-4adf-9                    ', N'
', 20000, 200, N'string.jpg', N'lon', CAST(N'2022-11-19' AS Date), CAST(N'2022-12-19' AS Date), NULL)
INSERT [dbo].[san_pham] ([id], [name], [id_loai_sp], [id_ncc], [mota_sp], [unit_price], [so_luong], [image], [don_vi_tinh], [ngay_sanxuat], [han_sudung], [ngay_them]) VALUES (N'67                                      ', N'Que cay', N'1                                       ', N'2                                       ', NULL, 20000, 200, N'quecay.jpg', N'gói', CAST(N'2022-11-19' AS Date), CAST(N'2022-12-19' AS Date), NULL)
INSERT [dbo].[san_pham] ([id], [name], [id_loai_sp], [id_ncc], [mota_sp], [unit_price], [so_luong], [image], [don_vi_tinh], [ngay_sanxuat], [han_sudung], [ngay_them]) VALUES (N'68                                      ', N'Pepsi', N'6                                       ', N'3                                       ', NULL, 20000, 200, N'pepsi.png', N'lon', CAST(N'2022-11-19' AS Date), CAST(N'2022-12-19' AS Date), NULL)
INSERT [dbo].[san_pham] ([id], [name], [id_loai_sp], [id_ncc], [mota_sp], [unit_price], [so_luong], [image], [don_vi_tinh], [ngay_sanxuat], [han_sudung], [ngay_them]) VALUES (N'69                                      ', N'Mì ý', N'8                                       ', N'1                                       ', NULL, 150000, 150, N'Italia noodle.jpg', N'dia', CAST(N'2022-11-19' AS Date), CAST(N'2022-12-19' AS Date), NULL)
INSERT [dbo].[san_pham] ([id], [name], [id_loai_sp], [id_ncc], [mota_sp], [unit_price], [so_luong], [image], [don_vi_tinh], [ngay_sanxuat], [han_sudung], [ngay_them]) VALUES (N'7                                       ', N'Lê', N'2                                       ', N'2                                       ', N'Khoai tây chiên có g?m nhi?u lo?i an kèm hon nhu trong m?t s? món nhu poutine ho?c \"chili cheese fries\". Lo?i thái lát có th? du?c làm t? khoai lang thay vì khoai tây. M?t bi?n th? nu?ng, khoai tây nu?ng lò, s? d?ng ít d?u ho?c không d?u.Dua h?u là', 30000, 27, N'le.jpg', N'kg', CAST(N'2022-11-19' AS Date), CAST(N'2022-12-19' AS Date), CAST(N'2022-12-19' AS Date))
INSERT [dbo].[san_pham] ([id], [name], [id_loai_sp], [id_ncc], [mota_sp], [unit_price], [so_luong], [image], [don_vi_tinh], [ngay_sanxuat], [han_sudung], [ngay_them]) VALUES (N'70                                      ', N'Gà KFC', N'1                                       ', N'2                                       ', NULL, 50000, 200, N'gakfc.jpg', N'xu?t', CAST(N'2022-11-19' AS Date), CAST(N'2022-12-19' AS Date), NULL)
INSERT [dbo].[san_pham] ([id], [name], [id_loai_sp], [id_ncc], [mota_sp], [unit_price], [so_luong], [image], [don_vi_tinh], [ngay_sanxuat], [han_sudung], [ngay_them]) VALUES (N'71                                      ', N'Lạp xuởng', N'1                                       ', N'63beea00-fa50-4adf-9                    ', N'
', 30000, 100, N'lapxuong.jpg', N'dia', CAST(N'2022-11-19' AS Date), CAST(N'2022-12-19' AS Date), NULL)
INSERT [dbo].[san_pham] ([id], [name], [id_loai_sp], [id_ncc], [mota_sp], [unit_price], [so_luong], [image], [don_vi_tinh], [ngay_sanxuat], [han_sudung], [ngay_them]) VALUES (N'72                                      ', N'Bí dao', N'6                                       ', N'2                                       ', NULL, 20000, 200, N'bidao.jpg', N'lon', CAST(N'2022-11-19' AS Date), CAST(N'2022-12-19' AS Date), NULL)
INSERT [dbo].[san_pham] ([id], [name], [id_loai_sp], [id_ncc], [mota_sp], [unit_price], [so_luong], [image], [don_vi_tinh], [ngay_sanxuat], [han_sudung], [ngay_them]) VALUES (N'74                                      ', N'Cá viên', N'1                                       ', N'2                                       ', NULL, 20000, 200, N'cavien.jpg', N'dia', CAST(N'2022-11-19' AS Date), CAST(N'2022-12-19' AS Date), CAST(N'2022-12-20' AS Date))
INSERT [dbo].[san_pham] ([id], [name], [id_loai_sp], [id_ncc], [mota_sp], [unit_price], [so_luong], [image], [don_vi_tinh], [ngay_sanxuat], [han_sudung], [ngay_them]) VALUES (N'75                                      ', N'Bún đậu', N'8                                       ', N'63beea00-fa50-4adf-9                    ', N'
', 100000, 150000, N'bundau.jpg', N'm?t', CAST(N'2022-11-19' AS Date), CAST(N'2022-12-19' AS Date), NULL)
INSERT [dbo].[san_pham] ([id], [name], [id_loai_sp], [id_ncc], [mota_sp], [unit_price], [so_luong], [image], [don_vi_tinh], [ngay_sanxuat], [han_sudung], [ngay_them]) VALUES (N'76                                      ', N'Bánh plan', N'323                                     ', N'2                                       ', NULL, 100000, 1000, N'plane.jpg', N'cái', CAST(N'2022-11-19' AS Date), CAST(N'2022-12-19' AS Date), NULL)
INSERT [dbo].[san_pham] ([id], [name], [id_loai_sp], [id_ncc], [mota_sp], [unit_price], [so_luong], [image], [don_vi_tinh], [ngay_sanxuat], [han_sudung], [ngay_them]) VALUES (N'77                                      ', N'Chôm chôm', N'2                                       ', N'1                                       ', NULL, 15000, 100, N'chomchom.jpg', N'kg', CAST(N'2022-11-19' AS Date), CAST(N'2022-12-19' AS Date), NULL)
INSERT [dbo].[san_pham] ([id], [name], [id_loai_sp], [id_ncc], [mota_sp], [unit_price], [so_luong], [image], [don_vi_tinh], [ngay_sanxuat], [han_sudung], [ngay_them]) VALUES (N'78                                      ', N'bánh kem trà xanh', N'323                                     ', N'1                                       ', NULL, 20000, 13, N'cake.jpg', N'cái', CAST(N'2022-11-19' AS Date), CAST(N'2022-12-19' AS Date), NULL)
INSERT [dbo].[san_pham] ([id], [name], [id_loai_sp], [id_ncc], [mota_sp], [unit_price], [so_luong], [image], [don_vi_tinh], [ngay_sanxuat], [han_sudung], [ngay_them]) VALUES (N'79                                      ', N'Dưa Hấu', N'2                                       ', N'63beea00-fa50-4adf-9                    ', N'
', 50000, 2000, N'duahau.jpg', N'kg', CAST(N'2022-11-19' AS Date), CAST(N'2022-12-19' AS Date), CAST(N'2022-12-20' AS Date))
INSERT [dbo].[san_pham] ([id], [name], [id_loai_sp], [id_ncc], [mota_sp], [unit_price], [so_luong], [image], [don_vi_tinh], [ngay_sanxuat], [han_sudung], [ngay_them]) VALUES (N'80                                      ', N'Dua gang', N'2                                       ', N'1                                       ', NULL, 20000, 100, N'duagang.jpg', N'kg', CAST(N'2022-11-19' AS Date), CAST(N'2022-12-19' AS Date), CAST(N'2022-12-21' AS Date))
INSERT [dbo].[san_pham] ([id], [name], [id_loai_sp], [id_ncc], [mota_sp], [unit_price], [so_luong], [image], [don_vi_tinh], [ngay_sanxuat], [han_sudung], [ngay_them]) VALUES (N'81                                      ', N'Kiwi', N'2                                       ', N'1                                       ', NULL, 20000, 200, N'kiwi.jpg', N'kg', CAST(N'2022-11-19' AS Date), CAST(N'2022-12-19' AS Date), NULL)
INSERT [dbo].[san_pham] ([id], [name], [id_loai_sp], [id_ncc], [mota_sp], [unit_price], [so_luong], [image], [don_vi_tinh], [ngay_sanxuat], [han_sudung], [ngay_them]) VALUES (N'82                                      ', N'Táo', N'2                                       ', N'1                                       ', NULL, 20000, 200, N'táo.jpg', N'kg', CAST(N'2022-11-19' AS Date), CAST(N'2022-12-19' AS Date), NULL)
INSERT [dbo].[san_pham] ([id], [name], [id_loai_sp], [id_ncc], [mota_sp], [unit_price], [so_luong], [image], [don_vi_tinh], [ngay_sanxuat], [han_sudung], [ngay_them]) VALUES (N'84                                      ', N'Bánh kem 7 màu', N'323                                     ', N'2                                       ', NULL, 20000, 200, N'banhkem.jpg', N'dia', CAST(N'2022-11-19' AS Date), CAST(N'2022-12-19' AS Date), NULL)
INSERT [dbo].[san_pham] ([id], [name], [id_loai_sp], [id_ncc], [mota_sp], [unit_price], [so_luong], [image], [don_vi_tinh], [ngay_sanxuat], [han_sudung], [ngay_them]) VALUES (N'85                                      ', N'Xúc xích', N'1                                       ', N'1                                       ', NULL, 20000, 200, N'xucxich.jpg', N'túi', CAST(N'2022-11-19' AS Date), CAST(N'2022-12-19' AS Date), NULL)
INSERT [dbo].[san_pham] ([id], [name], [id_loai_sp], [id_ncc], [mota_sp], [unit_price], [so_luong], [image], [don_vi_tinh], [ngay_sanxuat], [han_sudung], [ngay_them]) VALUES (N'86                                      ', N'Chuối', N'2                                       ', N'63beea00-fa50-4adf-9                    ', N'
', 20000, 200, N'chuoi.jpg', N'kg', CAST(N'2022-11-19' AS Date), CAST(N'2022-12-19' AS Date), NULL)
INSERT [dbo].[san_pham] ([id], [name], [id_loai_sp], [id_ncc], [mota_sp], [unit_price], [so_luong], [image], [don_vi_tinh], [ngay_sanxuat], [han_sudung], [ngay_them]) VALUES (N'87                                      ', N'Táo mi', N'2                                       ', N'2                                       ', NULL, 200000, 30, N'tao2.jpg', N'kg', CAST(N'2022-11-19' AS Date), CAST(N'2022-12-19' AS Date), NULL)
INSERT [dbo].[san_pham] ([id], [name], [id_loai_sp], [id_ncc], [mota_sp], [unit_price], [so_luong], [image], [don_vi_tinh], [ngay_sanxuat], [han_sudung], [ngay_them]) VALUES (N'88                                      ', NULL, N'7                                       ', N'3                                       ', NULL, 40000, 200, N'susu.jpg', N'kg', CAST(N'2022-11-19' AS Date), CAST(N'2022-12-19' AS Date), NULL)
INSERT [dbo].[san_pham] ([id], [name], [id_loai_sp], [id_ncc], [mota_sp], [unit_price], [so_luong], [image], [don_vi_tinh], [ngay_sanxuat], [han_sudung], [ngay_them]) VALUES (N'89                                      ', N'Thịt Mông', N'4                                       ', N'41a9d744-ee02-4342-8                    ', N'
', 150000, 200, N'thitmong.jpg', N'kg', CAST(N'2022-11-19' AS Date), CAST(N'2022-12-19' AS Date), NULL)
INSERT [dbo].[san_pham] ([id], [name], [id_loai_sp], [id_ncc], [mota_sp], [unit_price], [so_luong], [image], [don_vi_tinh], [ngay_sanxuat], [han_sudung], [ngay_them]) VALUES (N'91                                      ', N'Thịt thăn', N'4                                       ', N'63beea00-fa50-4adf-9                    ', N'
', 20000, 200, N'thitthan.jpg', N'kg', CAST(N'2022-11-19' AS Date), CAST(N'2022-12-19' AS Date), NULL)
INSERT [dbo].[san_pham] ([id], [name], [id_loai_sp], [id_ncc], [mota_sp], [unit_price], [so_luong], [image], [don_vi_tinh], [ngay_sanxuat], [han_sudung], [ngay_them]) VALUES (N'SP329544052                             ', N'Manh', N'2                                       ', N'2                                       ', N'<p>quả</p>', 100000, 1000, N'LSTy_bo.jpg', N'qua', CAST(N'2022-12-04' AS Date), CAST(N'2022-12-24' AS Date), CAST(N'2022-12-22' AS Date))
INSERT [dbo].[san_pham] ([id], [name], [id_loai_sp], [id_ncc], [mota_sp], [unit_price], [so_luong], [image], [don_vi_tinh], [ngay_sanxuat], [han_sudung], [ngay_them]) VALUES (N'SP698695005                             ', N'ManhA', N'2                                       ', N'2                                       ', N'<p>quả</p>', 100000, 1000, N'LSTy_bo.jpg', N'qua', CAST(N'2022-12-04' AS Date), CAST(N'2022-12-24' AS Date), CAST(N'2022-12-22' AS Date))
GO
INSERT [dbo].[users] ([id], [full_name], [address], [email], [password], [phone]) VALUES (N'1                   ', N'Ðoàn Linh', N'DoanLinh', N'doanlinh@gmail.com', N'$2y$10$qwkACRebVrq1PxDhpFQTUeof.5.Qr1lVayiJrXx8NgfLYdoWQH4m6', N'01628470872')
INSERT [dbo].[users] ([id], [full_name], [address], [email], [password], [phone]) VALUES (N'43871759-baa4-493c-a', N'Ðào van an', N'daovanan', N'vanan@gmail.com', N'123456', N'05662113            ')
INSERT [dbo].[users] ([id], [full_name], [address], [email], [password], [phone]) VALUES (N'5                   ', N'DoanThiLinh', N'LinhD', N'vinh@gmail.com', N'$2y$10$9nFyWml4BRW1seMuzicLqOz9/EP5BeHSi9j.TxR.vdR.GEVB6VaIi', N'983715373')
INSERT [dbo].[users] ([id], [full_name], [address], [email], [password], [phone]) VALUES (N'7                   ', N'Ðoàn Th? Thùy Linh', N'LinhDoan', N'doanlinh101998@gmail.com', N'$2y$10$TE8Q0ak2lz3W7.pWUQMW7.Li5O7KkGFwlI/ci8McxtPtKpLkWybbK', N'0983017992')
INSERT [dbo].[users] ([id], [full_name], [address], [email], [password], [phone]) VALUES (N'8                   ', N'Ðoàn Th? Linh', N'Linh', N'doanlinh1098@gmail.com', N'$2y$10$E2tUqHVotdoL8T9d2DhBlepbHod5zuTTVYVafvLl1caMG2t67NYrS', N'0983017991')
GO
ALTER TABLE [dbo].[bills_ban] ADD  CONSTRAINT [DF__bills_ban__id_kh__35BCFE0A]  DEFAULT (NULL) FOR [id_kh]
GO
ALTER TABLE [dbo].[bills_ban] ADD  CONSTRAINT [DF__bills_ban__date___36B12243]  DEFAULT (NULL) FOR [ngay_ban]
GO
ALTER TABLE [dbo].[bills_ban] ADD  CONSTRAINT [DF__bills_ban__note__398D8EEE]  DEFAULT (NULL) FOR [so_hoadon]
GO
ALTER TABLE [dbo].[bills_nhap] ADD  DEFAULT (NULL) FOR [id_ncc]
GO
ALTER TABLE [dbo].[bills_nhap] ADD  DEFAULT (NULL) FOR [date_order]
GO
ALTER TABLE [dbo].[bills_nhap] ADD  DEFAULT (NULL) FOR [tong_tien]
GO
ALTER TABLE [dbo].[bills_nhap] ADD  DEFAULT (NULL) FOR [thanh_toan]
GO
ALTER TABLE [dbo].[bills_nhap] ADD  DEFAULT (NULL) FOR [note]
GO
ALTER TABLE [dbo].[khach_hang] ADD  CONSTRAINT [DF__khach_hang__note__44FF419A]  DEFAULT (NULL) FOR [note]
GO
ALTER TABLE [dbo].[loai_sp] ADD  CONSTRAINT [DF__loai_sp__tenloai__46E78A0C]  DEFAULT (NULL) FOR [tenloai]
GO
ALTER TABLE [dbo].[san_pham] ADD  CONSTRAINT [DF__san_pham__name__4D94879B]  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[san_pham] ADD  CONSTRAINT [DF__san_pham__id_loa__4E88ABD4]  DEFAULT (NULL) FOR [id_loai_sp]
GO
ALTER TABLE [dbo].[san_pham] ADD  CONSTRAINT [DF__san_pham__mota_s__4F7CD00D]  DEFAULT (NULL) FOR [mota_sp]
GO
ALTER TABLE [dbo].[san_pham] ADD  CONSTRAINT [DF__san_pham__unit_p__5070F446]  DEFAULT (NULL) FOR [unit_price]
GO
ALTER TABLE [dbo].[san_pham] ADD  CONSTRAINT [DF__san_pham__image__52593CB8]  DEFAULT (NULL) FOR [image]
GO
ALTER TABLE [dbo].[san_pham] ADD  CONSTRAINT [DF__san_pham__don_vi__534D60F1]  DEFAULT (NULL) FOR [don_vi_tinh]
GO
ALTER TABLE [dbo].[account]  WITH CHECK ADD  CONSTRAINT [FK_account_users] FOREIGN KEY([MaNguoiDung])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[account] CHECK CONSTRAINT [FK_account_users]
GO
ALTER TABLE [dbo].[bill_detail_nhap]  WITH CHECK ADD  CONSTRAINT [FK_bill_detail_nhap_bills_nhap] FOREIGN KEY([id_bill_nhap])
REFERENCES [dbo].[bills_nhap] ([id])
GO
ALTER TABLE [dbo].[bill_detail_nhap] CHECK CONSTRAINT [FK_bill_detail_nhap_bills_nhap]
GO
ALTER TABLE [dbo].[san_pham]  WITH CHECK ADD  CONSTRAINT [FK_san_pham_loai_sp] FOREIGN KEY([id_loai_sp])
REFERENCES [dbo].[loai_sp] ([id])
GO
ALTER TABLE [dbo].[san_pham] CHECK CONSTRAINT [FK_san_pham_loai_sp]
GO
