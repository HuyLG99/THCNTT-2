USE [master]
GO

CREATE DATABASE DoAn
GO
USE DoAn
GO

create table KhachHang
(
	Phong nvarchar(10) primary key,
	MatKhau nvarchar(50) null,
	TaiKhoan nvarchar (50) null,
	Email nvarchar (50) null,
	Sodienthoai varchar(10) null,
	Ho nvarchar(10) null,
	Ten nvarchar(10) null,
	CMND varchar(50) null,
	GioiTinh char(3) null,
)
go

create table ThietBi
(
	MaThietBi char(50) primary key,
	TenThietBi nvarchar(50) null,
	TrangThai varchar(10) null,
	ThangDo varchar(50) null,
	Phong_ThietBi nvarchar(10) null,
	
	Foreign key(Phong_ThietBi) references dbo.KhachHang(Phong)
)
go

create table NhanVien
(
	MaNhanVien char(50) primary key,
	MatKhauNV nvarchar(50) null,
	TaiKhoanNv nvarchar (50) null,
	TenNV nvarchar(10) null,
	CMND_NV varchar(50) null,
	SDT_NV varchar(10) null,
	Email nvarchar (50) null,
)
go

create table NhanVien_ThietBi
(
	MaNV char(50) null,
	MaTB char(50) null,
	
	Foreign key(MaNV) references dbo.NhanVien(MaNhanVien),
	Foreign key(MaTB) references dbo.ThietBi(MaThietBi)
)


	
	
	
	
	
	
	
	
	
