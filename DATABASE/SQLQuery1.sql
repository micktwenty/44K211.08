Create Database BM
go
use BM
go

Create table KHACHHANG
(
  MaKH varchar(50) not null primary key,
  TenKH nvarchar(150) not null,
  DiaChi nvarchar(150) not null,
  SDT char(10) not null,
  NgaySinh date not null,
  CMND int not null
)

Create table NHACUNGCAP
(
  MaNCC varchar(50) not null primary key,
  TenNCC nvarchar(150) not null,
  DiaChi_NCC Nvarchar(150) not null,
  SDT_NCC varchar(10) not null,
  MatKhau varchar(1000)not null
)

Create table XE
(
  MaXe varchar(50) not null primary key,
  LoaiXe varchar(50) not null,
  TenXe varchar(50) not null,
  BienSo varchar(50) not null,
  GiaXe int not null,
  TrangThai bit not null,
  HinhAnh varchar(200) null,
  ThongTin nvarchar(500) null,
  MaNCC varchar(50) not null
)

create table HOADON
(
	MaHD varchar(50) not null,
	MaKH varchar(50) not null,
	NgayDangKi date not null,
	NgayBD DATE not null,
	NgayKT date not null,
	DiaChi_NhanXe nvarchar(150) not null,
	DiaChi_TraXe nvarchar(150) not null,
	TongTien int not null,
	primary key (MaHD)
)
create table HOADON_CT
(
	MaHD varchar(50) not null,
	MaXe varchar(50) not null,
	MaNCC varchar(50) not null,
	Soluong int not null,
	ThanhTien int not null,
	primary key (MaHD, MaXe)
)
go
INSERT INTO KHACHHANG
VALUES	('KH0001', N'Nguyễn Quốc Thiện', N'147 Phan Thanh-Thanh Khê',0366489257,'2000-05-24',197405367),
		('KH0002', N'Nguyễn Thị Thúy', N'23 Hoàng DIệu-Thanh Khê',0935877152,'2000-01-04',197401977),
		('KH0003', N'Phạm Thị Thanh Quý', N'21/3 Phan Tứ-Ngũ Hành Sơn',0357258963,'1995-12-24',19687945),
		('KH0004', N'Nguyễn Thị Đoan Hạnh', N'147 Phan Thanh-Thanh Khê',0367327578,'1999-05-27',197258167),
		('KH0005', N'Nguyễn Quang Thành', N'Bạch Đằng-Thanh Khê',0369159753,'1991-07-12',197259123),
		('KH0006', N'Trương Thị Hồng Nga', N'45 Phan Châu Trinh-Thanh Khê',0369587426,'1987-05-12',194852367)
INSERT INTO XE(MaXe, LoaiXe, TenXe, BienSo, GiaXe, TrangThai,HinhAnh, MaNCC)
VALUES	('MX0001', 'Honda', 'Vision', '43D1-25554', 150,1,'HondaVision.png','NCC001'),
		('MX0002', 'Yamaha', 'Latte', '43D1-25854', 150,1,'YamahaLatte.png','NCC001'),
		('MX0003', 'Yamaha', 'Sirius', '43D1-15589', 100,0,'YamahaSirius.png','NCC003'),
		('MX0004', 'Honda', 'AirBlade', '43D1-167258', 180,1,'HondaAirBlade.png','NCC001'),
		('MX0005', 'Honda', 'Vision', '43P1-002345', 150,0,'HondaVision.png','NCC002'),
		('MX0006', 'Honda', 'Lead', '43D1-102357', 180,0,'HondaLead.png','NCC002')
INSERT INTO NHACUNGCAP
VALUES	('NCC001', N'Cửa hàng thuê xe Tân Cương', '34 Nguyễn Công Trứ-Sơn Trà','0123584692','123')

