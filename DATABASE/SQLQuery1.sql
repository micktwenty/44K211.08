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
		('0345897611', N'Trương Thị Hồng Nga', N'45 Phan Châu Trinh-Thanh Khê','1987-05-12',194852367),
		('0935395333', N'Phạm Ngọc Khánh Vy', N'18 Hoàng Diệu-Hải Châu','1991-10-16',197386255),
		('0935302693',N'Phạm Thị Quỳnh Nhi', N'67 Tiểu La-Hải Châu','2000-02-19', 197856966),
		('0935639899', N'Nguyễn Hoàng Anh', N'50 Phan Thanh-Thanh Khê','2000-09-01', 197896366),
		('0378225633', N'Trương Quốc Nam', N'45 Phạm Nhữ Tăng-Thanh Khê','1999-05-12',194852257),
		('0369255544', N'Trần Thị Ngọc Trâm', N'25/23 Phạm Cự Lượng- Sơn Trà','1993-12-04',194852367),
		('0935668245', N'Nguyễn Văn Vũ', N'452 Nguyễn Tất Thành- Liên Chiểu','1990-2-25',199952367),
		('0125685245', N'Trương Thị Hồng', N'145 Phan Chu Trinh-Thanh Khê','1987-09-22',194823367),
		('0345892521', N'Trần Thị Ngọc Linh', N'45/2 Phan Thanh-Thanh Khê','1972-03-02',182423568),
		('037562586', N'Nguyễn Thị Như', N'25 Phan Hành Sơn- Ngũ Hành Sơn','1992-02-12',197002152),
		('033663654', N'Nguyễn Văn Chung', N'678 Nguyễn Tất Thành- Liên Chiểu','1996-02-25',196258945),
		('036987726', N'Nguyễn Đăng Thắng', N'187/16 Nguyễn Văn Thoại- Sơn Trà','1996-03-20',194852152),
		('0336877269', N'Nguyễn Ngọc Ngà', N'215 Nguyễn Văn Linh-Hải Châu','1993-03-26',198362367),
		('0326356269', N'Nguyễn Trần Nhanh', N'23/02 Châu Thị Vĩnh Tế- Ngũ Hành Sơn','1987-05-12',196322367),
		('0905656969', N'Trần Phương Ngọc', N'20 Hoàng Diệu-Hải Châu', '1991-09-08', 197856696),
		('0935556969', N'Phan Nguyên Hùng', N'208 Hoàng Diệu-Hải Châu', '1991-10-18', 197506690),
		('0914591610', N'Nguyễn Hoàng Tùng', N'20 Trưng Nữ Vương-Hải Châu', '1991-09-01', 197300696),
		('0905233777', N'Lê Huy Thành', N'20 Cao Thắng-Hải Châu', '1991-12-08', 197899600),
		('0905556899', N'Nguyễn Ngọc Vỹ', N'277 Yên Bái-Hải Châu', '1991-10-08', 197856196),
		('0905233000', N'Phạm Hải Đăng', N'09 Hải Hồ-Hải Châu', '1998-09-28', 197800096),
		('0905696369', N'Lê Uyên Vy', N'19 Duy Tân-Thanh Khê', '2001-09-08', 197121666),
		('0905773733', N'Lê Ngọc Anh', N'85/19 Duy Tân-Thanh Khê', '2000-10-08', 197121006),
		('0935232333','Nguyễn Thị Ngọc Ánh', N'22 Lê Lợi-Thanh Khê', '1998-09-01', 197121010),
		('0935596339', N'Lê Uyên Thi','19 Hải Phòng-Thanh Khê', '2001-02-18', 197612167),
		('0915606309', N'Dương Đức Tài', N'07 Tôn Đản-Cẩm Lệ', '1999-12-22', 197010666),
		('0905202303', N'Trần Mỹ Uyên', N'77/2 Ngô Quyền-Sơn Trà', '2000-09-22', 197125201)

INSERT INTO NHACUNGCAP
VALUES	('NCC001', N'Cửa hàng thuê xe máy Tân Cương', '34 Nguyễn Công Trứ-Sơn Trà-Đà Nẵng','0123584692','123'),
        ('NCC002', N'Cửa hàng thuê xe máy Anh Khoa', '84 Phan Chu Trinh-Hội An-Quảng Nam','0935439306','123'),
		('NCC003', N'Cửa hàng thuê xe máy Hidibike', '24/11 Lý Thường Kiệt-Huế','0945418111','123'),
		('NCC004', N'Cửa hàng thuê xe máy Gia Huy', '126/6 Trần Cao Vân-Thanh Khê-Đà Nẵng','0903529586','123'),
		('NCC005', N'Cửa hàng thuê xe máy Bảo Tín', '70 Lê Hữu Trác- Đà Nẵng','0914039300','123'),
		('NCC006', N'Cửa hàng thuê xe máy Minh Đồng', '111 Lý Thái Tổ-Hội An-Quảng Nam','0785854252','123'),
		('NCC007', N'Dịch vụ thuê xe máy Hạnh Thảo','29c/103 Nhật Lệ-Huế','0985005113','123')	

INSERT INTO XE(MaXe, LoaiXe, TenXe, BienSo, GiaXe, TrangThai,HinhAnh, MaNCC)
VALUES	('MX0001', 'Honda', 'Vision', '43D1-25554', 150,1,'HondaVision.png','NCC001'),
		('MX0002', 'Yamaha', 'Latte', '43D1-25854', 150,1,'YamahaLatte.png','NCC001'),
		('MX0003', 'Yamaha', 'Sirius', '43D1-15589', 100,0,'YamahaSirius.png','NCC001'),
		('MX0004', 'Honda', 'AirBlade', '43D1-167258', 180,1,'HondaAirBlade.png','NCC001'),
		('MX0005', 'Honda', 'Vision', '43P1-002345', 150,0,'HondaVision.png','NCC001'),
		('MX0006', 'Honda', 'Lead', '43D1-102357', 180,0,'HondaLead.png','NCC001'),
		('MX0007', 'Honda', 'Blade', '43D1-10203', 120,0,'HondaBlade.png','NCC001'),
		('MX0008', 'Honda', 'Winner', '43D1-20157', 180,0,'HondaWinner.png','NCC001'),
		('MX0009', 'Yamaha', 'Janus', '43K1-19621', 180,0,'YamahaJanus.png','NCC001'),
		('MX0010', 'Honda', 'Vision', '43D1-25554', 150,1,'HondaVision.png','NCC001'),
		('MX0011', 'Yamaha', 'Latte', '43D1-25854', 150,1,'YamahaLatte.png','NCC001'),
<<<<<<< HEAD
<<<<<<< HEAD
		('MX0012', 'Yamaha', 'Sirius', '92D1-15589', 100,0,'YamahaSirius.png','NCC001'),
		('MX0013', 'Honda', 'AirBlade', '92D1-167258', 180,1,'HondaAirBlade.png','NCC001'),
		('MX0014', 'Honda', 'Vision', '92P1-002345', 150,0,'HondaVision.png','NCC001'),
		('MX0015', 'Honda', 'Lead', '92D1-102357', 180,0,'HondaLead.png','NCC001'),
		('MX0016', 'Honda', 'Blade', '92D1-10203', 120,0,'HondaBlade.png','NCC001'),
		('MX0017', 'Honda', 'Winner', '92D1-20157', 180,0,'HondaWinner.png','NCC001'),
		('MX0018', 'Yamaha', 'Janus', '92K1-19621', 180,0,'YamahaJanus.png','NCC001'),
		('MX0019', 'Honda', 'AirBlade', '92D1-167258', 180,1,'HondaAirBlade.png','NCC001'),
		('MX0020', 'Honda', 'Vision', '92P1-002345', 150,0,'HondaVision.png','NCC001'),
		('MX0021', 'Honda', 'Lead', '92D1-102357', 180,0,'HondaLead.png','NCC001'),
		('MX0022', 'Honda', 'Blade', '92D1-10203', 120,0,'HondaBlade.png','NCC001'),
		('MX0023', 'Honda', 'Winner', '92D1-20157', 180,0,'HondaWinner.png','NCC001'),
		('MX0024', 'Yamaha', 'Janus', '92K1-19621', 180,0,'YamahaJanus.png','NCC001'),
		('MX0025', 'Honda', 'Vision', '75D1-25554', 150,1,'HondaVision.png','NCC001'),
		('MX0026', 'Yamaha', 'Latte', '75D1-25854', 150,1,'YamahaLatte.png','NCC001'),
		('MX0027', 'Yamaha', 'Sirius', '75D1-15589', 100,0,'YamahaSirius.png','NCC001'),
		('MX0028', 'Honda', 'AirBlade', '75D1-167258', 180,1,'HondaAirBlade.png','NCC001'),
		('MX0029', 'Honda', 'Vision', '75P1-002345', 150,0,'HondaVision.png','NCC001'),
		('MX0030', 'Honda', 'Lead', '75D1-102357', 180,0,'HondaLead.png','NCC001'),
		('MX0031', 'Honda', 'Blade', '75D1-10203', 120,0,'HondaBlade.png','NCC001'),
		('MX0032', 'Honda', 'Winner', '75D1-20157', 180,0,'HondaWinner.png','NCC001'),
		('MX0033', 'Yamaha', 'Janus', '75K1-19621', 180,0,'YamahaJanus.png','NCC001'),
		('MX0034', 'Honda', 'Vision', '75D1-25554', 150,1,'HondaVision.png','NCC001'),
		('MX0035', 'Yamaha', 'Latte', '75D1-25854', 150,1,'YamahaLatte.png','NCC001'),
		('MX0036', 'Yamaha', 'Sirius', '75D1-15589', 100,0,'YamahaSirius.png','NCC001'),
		('MX0037', 'Honda', 'AirBlade', '75D1-167258', 180,1,'HondaAirBlade.png','NCC001'),
		('MX0038', 'Honda', 'Vision', '75P1-002345', 150,0,'HondaVision.png','NCC001'),
		('MX0039', 'Honda', 'Lead', '75D1-102357', 180,0,'HondaLead.png','NCC001'),
		('MX0040', 'Honda', 'Blade', '75D1-10203', 120,0,'HondaBlade.png','NCC001'),
		('MX0041', 'Honda', 'Winner', '75D1-20157', 180,0,'HondaWinner.png','NCC001'),
		('MX0042', 'Yamaha', 'Janus', '75K1-19621', 180,0,'YamahaJanus.png','NCC001'),
        ('MX0043', 'Honda', 'Vision', '43D1-25554', 150,1,'HondaVision.png','NCC001'),
		('MX0044', 'Yamaha', 'Latte', '43D1-25854', 150,1,'YamahaLatte.png','NCC001'),
		('MX0045', 'Yamaha', 'Sirius', '43D1-15589', 100,0,'YamahaSirius.png','NCC001'),
		('MX0046', 'Honda', 'AirBlade', '43D1-167258', 180,1,'HondaAirBlade.png','NCC001'),
		('MX0047', 'Honda', 'Vision', '43P1-002345', 150,0,'HondaVision.png','NCC001'),
		('MX0048', 'Honda', 'Lead', '43D1-102357', 180,0,'HondaLead.png','NCC001'),
		('MX0049', 'Honda', 'Blade', '43D1-10203', 120,0,'HondaBlade.png','NCC001'),
		('MX0050', 'Honda', 'Winner', '43D1-20157', 180,0,'HondaWinner.png','NCC001'),
		('MX0051', 'Yamaha', 'Janus', '43K1-19621', 180,0,'YamahaJanus.png','NCC001'),
		('MX0052', 'Honda', 'Vision', '43D1-25554', 150,1,'HondaVision.png','NCC001'),
		('MX0053', 'Yamaha', 'Latte', '43D1-25854', 150,1,'YamahaLatte.png','NCC001'),
		('MX0054', 'Yamaha', 'Sirius', '43D1-15589', 100,0,'YamahaSirius.png','NCC001'),
		('MX0055', 'Piaggio', 'Vespa', '43C1-03838', 180,0,'YamahaJanus.png','NCC001'),
		('MX0056', 'Piaggio', 'Liberty', '43C1-72116', 180,0,'PiaggioLiberty.png','NCC001'),
		('MX0057', 'Honda', 'AirBlade', '43C1-46419', 180,0,'HondaAirblade.png','NCC001'),
		('MX0058', 'Honda', 'SH', '43C1-05220', 180,0,'HondaSH.png','NCC001'),
		('MX0059', 'Honda', 'Future', '43C1-00111', 100,0,'HondaFuture.png','NCC001'),
		('MX0060', 'Yamaha', 'Janus', '43D1-12161', 160,0,'YamahaJanus.png','NCC001'),
		('MX0061', 'Yamaha', 'Sirius', '43D1-30323', 100,0,'YamahaSirius.png','NCC001'),
		('MX0062', 'Yamaha', 'Jupiter', '43F1-07917', 100,0,'YamahaJupiter.png','NCC001'),
		('MX0063', 'Yamaha', 'Exciter', '43K1-5655', 170,0,'YamahaExciter.png','NCC001'),
		('MX0064', 'Yamaha', 'Janus', '43C1-46445', 150,0,'YamahaJanus.png','NCC001'),
		('MX0065', 'Yamaha', 'Janus', '92K1-11021', 170,0,'YamahaJanus.png','NCC001'),
		('MX0066', 'Piaggio', 'Vespa', '92C1-03848', 180,0,'PiaggioVespa.png','NCC001'),
		('MX0067', 'Honda', 'SHmode', '92K1-04665', 180,0,'HondaSHmode.png','NCC001'),
		('MX0068', 'Honda', 'Vision', '92D1-1345', 170,0,'HondaVision.png','NCC001'),
		('MX0069', 'Piaggio', 'Liberty', '92C1-70116', 180,0,'PiaggioLiberty.png','NCC001'),
		('MX0070', 'Yamaha', 'Sirius', '91D1-17789', 100,0,'YamahaSirius.png','NCC001'),
		('MX0071', 'Honda', 'AirBlade', '92D1-05226', 180,1,'HondaAirBlade.png','NCC001'),
		('MX0072', 'Honda', 'Blade', '92D1-0203', 100,0,'HondaBlade.png','NCC001'),
		('MX0073', 'Honda', 'Winner', '92D1-24357', 180,0,'HondaWinner.png','NCC001'),
		('MX0074', 'Honda', 'Dream', '75D1-01022', 100,0,'HondaDream.png','NCC001'),
		('MX0075', 'Honda', 'Vision', '75C1-1000', 150,0,'HondaVision.png','NCC001'),
		('MX0076', 'Piaggio', 'Vespa', '75C1-13138', 180,0,'PiaggioVespa.png','NCC001'),
		('MX0077', 'Piaggio', 'Liberty', '75C1-12148', 180,0,'PiaggioVespa.png','NCC001'),
		('MX0078', 'Honda', 'Lead', '75C1-70223', 150,0,'HondaLead.png','NCC001'),
		('MX0079', 'Yamaha', 'Sirius', '75C1-07575', 100,0,'YamahaSirius.png','NCC001'),
		('MX0080', 'Honda', 'Winner', '75C1-45990', 180,0,'HondaWinner.png','NCC001'),
		('MX0081', 'Honda', 'Wave', '75K1-21690', 180,0,'HondaWave.png','NCC001'),
		('MX0082', 'Honda', 'AirBlade', '75D1-4100', 180,0,'HondaAirBlade.png','NCC001'),
		('MX0083', 'Honda', 'SH', '75C1-03019', 180,0,'HondaSH.png','NCC001'),
		('MX0084', 'Honda', 'Future', '75C1-12530', 110,0,'HondaFuture.png','NCC001')
<<<<<<< Updated upstream
=======
=======
>>>>>>> parent of e7cbda8 (update)
		('MX0012', 'Yamaha', 'Sirius', '92D1-15589', 100,0,'YamahaSirius.png','NCC002'),
		('MX0013', 'Honda', 'AirBlade', '92D1-167258', 180,1,'HondaAirBlade.png','NCC002'),
		('MX0014', 'Honda', 'Vision', '92P1-002345', 150,0,'HondaVision.png','NCC002'),
		('MX0015', 'Honda', 'Lead', '92D1-102357', 180,0,'HondaLead.png','NCC002'),
		('MX0016', 'Honda', 'Blade', '92D1-10203', 120,0,'HondaBlade.png','NCC002'),
		('MX0017', 'Honda', 'Winner', '92D1-20157', 180,0,'HondaWinner.png','NCC002'),
		('MX0018', 'Yamaha', 'Janus', '92K1-19621', 180,0,'YamahaJanus.png','NCC002'),
		('MX0019', 'Honda', 'AirBlade', '92D1-167258', 180,1,'HondaAirBlade.png','NCC002'),
		('MX0020', 'Honda', 'Vision', '92P1-002345', 150,0,'HondaVision.png','NCC002'),
		('MX0021', 'Honda', 'Lead', '92D1-102357', 180,0,'HondaLead.png','NCC002'),
		('MX0022', 'Honda', 'Blade', '92D1-10203', 120,0,'HondaBlade.png','NCC002'),
		('MX0023', 'Honda', 'Winner', '92D1-20157', 180,0,'HondaWinner.png','NCC002'),
		('MX0024', 'Yamaha', 'Janus', '92K1-19621', 180,0,'YamahaJanus.png','NCC002'),
		('MX0025', 'Honda', 'Vision', '75D1-25554', 150,1,'HondaVision.png','NCC003'),
		('MX0026', 'Yamaha', 'Latte', '75D1-25854', 150,1,'YamahaLatte.png','NCC003'),
		('MX0027', 'Yamaha', 'Sirius', '75D1-15589', 100,0,'YamahaSirius.png','NCC003'),
		('MX0028', 'Honda', 'AirBlade', '75D1-167258', 180,1,'HondaAirBlade.png','NCC003'),
		('MX0029', 'Honda', 'Vision', '75P1-002345', 150,0,'HondaVision.png','NCC003'),
		('MX0030', 'Honda', 'Lead', '75D1-102357', 180,0,'HondaLead.png','NCC003'),
		('MX0031', 'Honda', 'Blade', '75D1-10203', 120,0,'HondaBlade.png','NCC003'),
		('MX0032', 'Honda', 'Winner', '75D1-20157', 180,0,'HondaWinner.png','NCC003'),
		('MX0033', 'Yamaha', 'Janus', '75K1-19621', 180,0,'YamahaJanus.png','NCC003'),
		('MX0034', 'Honda', 'Vision', '75D1-25554', 150,1,'HondaVision.png','NCC003'),
		('MX0035', 'Yamaha', 'Latte', '75D1-25854', 150,1,'YamahaLatte.png','NCC003'),
		('MX0036', 'Yamaha', 'Sirius', '75D1-15589', 100,0,'YamahaSirius.png','NCC003'),
		('MX0037', 'Honda', 'AirBlade', '75D1-167258', 180,1,'HondaAirBlade.png','NCC003'),
		('MX0038', 'Honda', 'Vision', '75P1-002345', 150,0,'HondaVision.png','NCC003'),
		('MX0039', 'Honda', 'Lead', '75D1-102357', 180,0,'HondaLead.png','NCC003'),
		('MX0040', 'Honda', 'Blade', '75D1-10203', 120,0,'HondaBlade.png','NCC003'),
		('MX0041', 'Honda', 'Winner', '75D1-20157', 180,0,'HondaWinner.png','NCC003'),
		('MX0042', 'Yamaha', 'Janus', '75K1-19621', 180,0,'YamahaJanus.png','NCC003'),
        ('MX0043', 'Honda', 'Vision', '43D1-25554', 150,1,'HondaVision.png','NCC004'),
		('MX0044', 'Yamaha', 'Latte', '43D1-25854', 150,1,'YamahaLatte.png','NCC004'),
		('MX0045', 'Yamaha', 'Sirius', '43D1-15589', 100,0,'YamahaSirius.png','NCC004'),
		('MX0046', 'Honda', 'AirBlade', '43D1-167258', 180,1,'HondaAirBlade.png','NCC004'),
		('MX0047', 'Honda', 'Vision', '43P1-002345', 150,0,'HondaVision.png','NCC004'),
		('MX0048', 'Honda', 'Lead', '43D1-102357', 180,0,'HondaLead.png','NCC004'),
		('MX0049', 'Honda', 'Blade', '43D1-10203', 120,0,'HondaBlade.png','NCC004'),
		('MX0050', 'Honda', 'Winner', '43D1-20157', 180,0,'HondaWinner.png','NCC004'),
		('MX0051', 'Yamaha', 'Janus', '43K1-19621', 180,0,'YamahaJanus.png','NCC004'),
		('MX0052', 'Honda', 'Vision', '43D1-25554', 150,1,'HondaVision.png','NCC004'),
		('MX0053', 'Yamaha', 'Latte', '43D1-25854', 150,1,'YamahaLatte.png','NCC004'),
		('MX0054', 'Yamaha', 'Sirius', '43D1-15589', 100,0,'YamahaSirius.png','NCC004'),
		('MX0055', 'Piaggio', 'Vespa', '43C1-03838', 180,0,'YamahaJanus.png','NCC005'),
		('MX0056', 'Piaggio', 'Liberty', '43C1-72116', 180,0,'PiaggioLiberty.png','NCC005'),
		('MX0057', 'Honda', 'AirBlade', '43C1-46419', 180,0,'HondaAirblade.png','NCC005'),
		('MX0058', 'Honda', 'SH', '43C1-05220', 180,0,'HondaSH.png','NCC003'),
		('MX0059', 'Honda', 'Future', '43C1-00111', 100,0,'HondaFuture.png','NCC005'),
		('MX0060', 'Yamaha', 'Janus', '43D1-12161', 160,0,'YamahaJanus.png','NCC005'),
		('MX0061', 'Yamaha', 'Sirius', '43D1-30323', 100,0,'YamahaSirius.png','NCC005'),
		('MX0062', 'Yamaha', 'Jupiter', '43F1-07917', 100,0,'YamahaJupiter.png','NCC005'),
		('MX0063', 'Yamaha', 'Exciter', '43K1-5655', 170,0,'YamahaExciter.png','NCC005'),
		('MX0064', 'Yamaha', 'Janus', '43C1-46445', 150,0,'YamahaJanus.png','NCC005'),
		('MX0065', 'Yamaha', 'Janus', '92K1-11021', 170,0,'YamahaJanus.png','NCC006'),
		('MX0066', 'Piaggio', 'Vespa', '92C1-03848', 180,0,'PiaggioVespa.png','NCC006'),
		('MX0067', 'Honda', 'SHmode', '92K1-04665', 180,0,'HondaSHmode.png','NCC006'),
		('MX0068', 'Honda', 'Vision', '92D1-1345', 170,0,'HondaVision.png','NCC006'),
		('MX0069', 'Piaggio', 'Liberty', '92C1-70116', 180,0,'PiaggioLiberty.png','NCC006'),
		('MX0070', 'Yamaha', 'Sirius', '91D1-17789', 100,0,'YamahaSirius.png','NCC006'),
		('MX0071', 'Honda', 'AirBlade', '92D1-05226', 180,1,'HondaAirBlade.png','NCC006'),
		('MX0072', 'Honda', 'Blade', '92D1-0203', 100,0,'HondaBlade.png','NCC006'),
		('MX0073', 'Honda', 'Winner', '92D1-24357', 180,0,'HondaWinner.png','NCC006'),
		('MX0074', 'Honda', 'Dream', '75D1-01022', 100,0,'HondaDream.png','NCC007'),
		('MX0075', 'Honda', 'Vision', '75C1-1000', 150,0,'HondaVision.png','NCC007'),
		('MX0076', 'Piaggio', 'Vespa', '75C1-13138', 180,0,'PiaggioVespa.png','NCC007'),
		('MX0077', 'Piaggio', 'Liberty', '75C1-12148', 180,0,'PiaggioVespa.png','NCC007'),
		('MX0078', 'Honda', 'Lead', '75C1-70223', 150,0,'HondaLead.png','NCC007'),
		('MX0079', 'Yamaha', 'Sirius', '75C1-07575', 100,0,'YamahaSirius.png','NCC007'),
		('MX0080', 'Honda', 'Winner', '75C1-45990', 180,0,'HondaWinner.png','NCC007'),
		('MX0081', 'Honda', 'Wave', '75K1-21690', 180,0,'HondaWave.png','NCC007'),
		('MX0082', 'Honda', 'AirBlade', '75D1-4100', 180,0,'HondaAirBlade.png','NCC007'),
		('MX0083', 'Honda', 'SH', '75C1-03019', 180,0,'HondaSH.png','NCC007'),
		('MX0084', 'Honda', 'Future', '75C1-12530', 110,0,'HondaFuture.png','NCC007')
<<<<<<< HEAD
>>>>>>> parent of e7cbda8 (update)
=======
>>>>>>> parent of e7cbda8 (update)

=======
>>>>>>> Stashed changes

	
			
<<<<<<< HEAD
<<<<<<< HEAD
=======
INSERT INTO NHACUNGCAP
VALUES	('NCC001', N'Cửa hàng thuê xe máy Tân Cương', '34 Nguyễn Công Trứ-Sơn Trà-Đà Nẵng','0123584692','123'),
        ('NCC001', N'Cửa hàng thuê xe máy Anh Khoa', '84 Phan Chu Trinh-Hội An-Quảng Nam','0935439306','123'),
		('NCC001', N'Cửa hàng thuê xe máy Hidibike', '24/11 Lý Thường Kiệt-Huế','0945418111','123'),
		('NCC001', N'Cửa hàng thuê xe máy Gia Huy', '126/6 Trần Cao Vân-Thanh Khê-Đà Nẵng','0903529586','123'),
		('NCC001', N'Cửa hàng thuê xe máy Bảo Tín', '70 Lê Hữu Trác- Đà Nẵng','0914039300','123'),
		('NCC001', N'Cửa hàng thuê xe máy Minh Đồng', '111 Lý Thái Tổ-Hội An-Quảng Nam','0785854252','123'),
		('NCC001', N'Dịch vụ thuê xe máy Hạnh Thảo','29c/103 Nhật Lệ-Huế','0985005113','123')				
<<<<<<< Updated upstream
>>>>>>> Stashed changes
=======
>>>>>>> Stashed changes
=======
>>>>>>> parent of e7cbda8 (update)
=======
>>>>>>> parent of e7cbda8 (update)
