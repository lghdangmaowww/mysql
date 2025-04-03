create database qlcsdl
use qlcsdl

create table NHAPT(
MANPT char(4) primary key,
TENNPT varchar(50),
NGDK date,
SOUD int(4)
)

create table NGUOIDUNG(
MAND char(5) primary key,
TENND varchar(50),
NGDKTV date,
GIOITINH varchar(10),
NGSINH date
)
alter table NGUOIDUNG change MAND MAND char(5)

create table UNGDUNG(
MAUD char(5) primary key,
TENUD varchar(50),
MANPT char(4),
NGPH date,
DLUONG decimal(10,2),
LOAIUD varchar(10)
)

create table GHINHAN(
MAUD char(5),
MAND char(5),
DANHGIA int(5),
DANGSD int(3),
primary key(MAUD,MAND) 
)

alter table GHINHAN add constraint FK_GHINHAN_MAUD foreign key (MAUD) references UNGDUNG(MAUD)
alter table GHINHAN add constraint FK_GHINHAN_MAND foreign key (MAND) references NGUOIDUNG(MAND)
alter table UNGDUNG add constraint FK_UNGDUNG_MANPT foreign key (MANPT) references NHAPT(MANPT)

insert into NHAPT values ('N001','Gameloft','2006-06-20','100')
insert into nhapt values ('N002','Ketchapp','2010-07-18',20);
insert into nhapt values ('N003','Facebook','2006-02-27',20);

insert into nguoidung values ('ND001','Huynh Cong Khanh','2009/06/17','Nam','1994/05/25');
insert into nguoidung values ('ND002','Nguyen Minh Dat','2010/06/19','Nam','1993/03/22');
insert into nguoidung values ('ND003','Ho Quy Han','2012/10/15','Nu','1994/02/14');

insert into ungdung values ('UD001','Messenger','N003','2007/02/01',6.5, 'Chat');
insert into ungdung values ('UD002','Stack','N002','2017/06/02',42, 'Game');
insert into ungdung values ('UD003','Asphalt 8','N001','2018/08/12',1700, 'Game');

insert into ghinhan values ('UD001','ND001',5,1);
insert into ghinhan values ('UD002','ND002',4,1);
insert into ghinhan values ('UD003','ND003',4,1);