create database employee
go
if OBJECT_ID('employee') is not null
drop table employee
go
create table employee
(
id int identity(1,1) primary key,
fist_name nvarchar(20) not null,
last_name nvarchar(20) not null,
email varchar(50) not null,
)
insert into employee values (N'Nguyễn Trọng','Quang','quangntph09176@fpt.edu.vn');
insert into employee values (N'Nguyễn Trọng',N'Hoàng','hoangntph01924@fpt.edu.vn');
