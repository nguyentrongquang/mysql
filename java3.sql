create database java3
go
if OBJECT_ID('product') is not null
drop table product
go
create table product
(
id INT IDENTITY(1,1)PRIMARY KEY,
name nvarchar(100) not null,
status1 bit not null,
price int not null,
)
IF OBJECT_ID('category') IS NOT NULL
  DROP TABLE category
GO
CREATE TABLE category
(
id INT IDENTITY(1,1),
TENTL NVARCHAR(50) NULL,
hinh  NVARCHAR(50) NULL, 
MOTA  NVARCHAR(50) NULL, 
CONSTRAINT PK_THELOAI PRIMARY KEY(id)
)
