Create database BOOKINGMOTORBIKE
Use BOOKINGMOTORBIKE

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
  SDT_NCC int not null
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

Alter table HOADON
Add constraint FK_KHACHHANG foreign key (MaKH) references KHACHHANG(MaKH)

Alter table HOADON_CT
Add constraint FK_HOADON foreign key (MaHD) references HOADON(MaHD)

Alter table HOADON_CT
Add constraint FK_XE foreign key (MaXe) references Xe(MaXe)

Alter table XE
Add constraint FK_NHACUNGCAP foreign key (MaNCC) references NHACUNGCAP(MaNCC)

