Alter table HOADON
Add constraint FK_KHACHHANG foreign key (MaKH) references KHACHHANG(MaKH)

Alter table HOADON_CT
Add constraint FK_HOADON foreign key (MaHD) references HOADON(MaHD)

Alter table HOADON_CT
Add constraint FK_XE foreign key (MaXe) references Xe(MaXe)

Alter table XE
Add constraint FK_NHACUNGCAP foreign key (MaNCC) references NHACUNGCAP(MaNCC)