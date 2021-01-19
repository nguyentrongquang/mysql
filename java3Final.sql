create database java3Final
go
if OBJECT_ID('student') is not null
drop table student
go
create table student
(
masv nvarchar(5) not null,
name nvarchar(100) not null,
email nvarchar(50)not null,
sdt int null,
gioitinh bit not null,
hinh nvarchar(100) null,
diachi nvarchar(100) null,
constraint pk_student primary key(masv)
)
if OBJECT_ID('Grade') is not null
drop table Grade
go
create table Grade
(
id int not null,
masv nvarchar(5) not null,
toan int not null,
van int not null,
anh int not null,
constraint pk_grade primary key(id),
constraint fk_grade_studen foreign key(masv) references student
)
if OBJECT_ID('user1') is not null
drop table user1
go
create table user1
(

userName nvarchar(100) primary key,
pass nvarchar(10) not null,
roler bit
)