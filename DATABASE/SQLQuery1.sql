Create Database BM
go
use BM
go

Create table KHACHHANG
(
  SDT varchar(10) not null primary key,
  TenKH nvarchar(150) not null,
  DiaChi nvarchar(150) not null,
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

create table THUEXE
(
	MaHD varchar(50) not null,
	SDT varchar(10) not null,
	NgayDangKi date not null,
	NgayBD DATE not null,
	NgayKT date,
	primary key (MaHD)
)

CREATE TABLE FEEDBACK
(
	MaHD varchar(50) not null,
	MaXe varchar(50) not null,
	SDT varchar(10) not null,
	FBack nvarchar(1000) not null
	primary key(MaXe,SDT)

)
go
Alter table FeedBack
Add Constraint FK_FB foreign key (MaXe) references XE(MaXe)
go
Alter table FeedBack
Add Constraint FK_FBB foreign key (MaHD) references ThueXe(MaHD)
go
Alter table THUEXE
Add Constraint FK_TX foreign key (SDT) references KHACHHANG(SDT)
go
Alter table XE
Add Constraint FK_XE foreign key (MaNCC) references NHACUNGCAP(MaNCC)
go
INSERT INTO KHACHHANG
VALUES	('0398745212', N'Nguyễn Quốc Thiện', N'147 Phan Thanh-Thanh Khê','2000-05-24',197405367),
		('0963528741', N'Nguyễn Thị Thúy', N'23 Hoàng DIệu-Thanh Khê','2000-01-04',197401977),
		('0365214798', N'Phạm Thị Thanh Quý', N'21/3 Phan Tứ-Ngũ Hành Sơn','1995-12-24',19687945),
		('0804065898', N'Nguyễn Thị Đoan Hạnh', N'147 Phan Thanh-Thanh Khê','1999-05-27',197258167),
		('0398426852', N'Nguyễn Quang Thành', N'Bạch Đằng-Thanh Khê','1991-07-12',197259123),
		('0345897611', N'Trương Thị Hồng Nga', N'45 Phan Châu Trinh-Thanh Khê','1987-05-12',194852367)
INSERT INTO XE(MaXe, LoaiXe, TenXe, BienSo, GiaXe, TrangThai,HinhAnh, MaNCC)
VALUES	('MX0001', 'Honda', 'Vision', '43D1-25554', 150,1,'HondaVision.png','NCC001'),
		('MX0002', 'Yamaha', 'Latte', '43D1-25854', 150,1,'YamahaLatte.png','NCC001'),
		('MX0003', 'Yamaha', 'Sirius', '43D1-15589', 100,0,'YamahaSirius.png','NCC001'),
		('MX0004', 'Honda', 'AirBlade', '43D1-167258', 180,1,'HondaAirBlade.png','NCC001'),
		('MX0005', 'Honda', 'Vision', '43P1-002345', 150,0,'HondaVision.png','NCC001'),
		('MX0006', 'Honda', 'Lead', '43D1-102357', 180,0,'HondaLead.png','NCC001')
INSERT INTO NHACUNGCAP
VALUES	('NCC001', N'Cửa hàng thuê xe Tân Cương', '34 Nguyễn Công Trứ-Sơn Trà','0123584692','123')

