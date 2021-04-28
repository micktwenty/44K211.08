CREATE TABLE [dbo].[NHACUNGCAP] (
    [MaNCC]      VARCHAR (50)   NOT NULL,
    [TenNCC]     NVARCHAR (150) NOT NULL,
    [DiaChi_NCC] NVARCHAR (150) NOT NULL,
    [SDT_NCC]    INT            NOT NULL,
    [MatKhau] NCHAR(20) NOT NULL, 
    PRIMARY KEY CLUSTERED ([TaiKhoan],[MaNCC])
);

