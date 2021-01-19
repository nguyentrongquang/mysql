create database assJva3
go
if OBJECT_ID('student') is not null
drop table student
go
create table student
(
id INT IDENTITY(1,1),
MN int not null,
masv varchar(5) not null,
name nvarchar(30) not null,
sex bit not null,
email nvarchar(50)  not null,
image nvarchar(100) not null,
constraint pk_student primary key(id),
constraint fk_student_majors foreign key(MN) references majors
)
if OBJECT_ID('relatives') is not null
drop table relatives
go
create table relatives
(
MNT int identity(123,123) not null,
Name Nvarchar(30) not null,
YearOld int not null,
Adress nvarchar(120) not null,
constraint pk_relatives primary key(MNT)
)
if OBJECT_ID('Student_relatives') is not null
drop table Student_relatives
go
create table Student_relatives
(
id int not null,
MNT int not null
constraint pk_Student_relatives primary key(id,MNT),
constraint fk_Student_relatives_STD foreign key(id) references student,
constraint fk_Student_relatives_MNT foreign key(MNT) references relatives
)
 if OBJECT_ID('majors') is not null
 drop table majors
 go
 create table majors
 (
 MN INT IDENTITY(1,1)PRIMARY KEY,
 name nvarchar(30) not null,
 )
