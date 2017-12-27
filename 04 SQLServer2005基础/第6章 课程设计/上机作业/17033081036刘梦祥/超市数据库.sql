--第一章--新建数据库
--新建数据库
create database SuperMarket
on(
--指定数据库名
name ='SuperMarket',
--指定路径以及文件后缀
filename ='C:\SuperMarket.mdf',
--指定数据库初始容量
size =3MB,
--指定数据库最大容量
maxsize =50MB,
--指定数据库自动增长容量
filegrowth =1MB
)
--新建数据库日志
log on(
--指定数据库名
name ='SuperMarket_log',
--指定路径以及文件后缀
filename ='C:\SuperMarket_log.mdf',
--指定数据库初始容量
size =3MB,
--指定数据库最大容量
maxsize =50MB,
--指定数据库自动增长容量
filegrowth =10%
)
--删除数据库
drop database SuperMarket


--第二章--新建数据表
--新建数据表
--商品类别表
create table Category
(
--列名，数据类型，为不为空
--primary key主键
--identity自动增长
Cid int primary key identity(1,1),
--列名，数据类型，为不为空
--not null不为空
Cname nvarchar(20) not null  unique,
--列名，数据类型，为不为空
--default''为空，默认为
Description nvarchar(20) 
)


--新建数据表
--商品信息表
create table Ware
(
--列名，数据类型，为不为空
--primary key主键
--identity自动增长
Wid int primary key identity(1,1),
--列名，数据类型，为不为空
--not null不为空
Wname nvarchar(20) not null,
--列名，数据类型，为不为空
--not null不为空
--foreign key 外键
Cid int not null foreign key references Category(Cid),
--列名，数据类型，为不为空
--check约束
PurchasePrice int check(PurchasePrice>=0 ),
--列名，数据类型，为不为空
--check约束
SalesPrice int check ( SalesPrice>=0 ),
--列名，数据类型，为不为空
--check约束
Amount int check(Amount>=0 )
)


--新建数据表
--员工表
create table Employee
(
--列名，数据类型，为不为空
--primary key主键
--identity自动增长
Eid int primary key identity(1001,1),
--列名，数据类型，为不为空
--not null不为空
Ename nvarchar(20) not null,
--列名，数据类型，为不为空
--not null不为空
--foreign key 外键
Cid int not null foreign key references Category(Cid),
--列名，数据类型，为不为空
--check约束
Epassword bigint check(Epassword>=100000 ),
Remark nvarchar(20) 
)


--新建数据表
--销售记录表
create table SalesInfo
(
--列名，数据类型，为不为空
--primary key主键
--identity自动增长
Sid int primary key identity(1,1),
--列名，数据类型，为不为空
--not null不为空
--foreign key 外键
Wid int not null foreign key references Ware(Wid),
--列名，数据类型，为不为空
--not null不为空
--foreign key 外键
Eid int not null foreign key references Category(Cid),
--列名，数据类型，为不为空
--not null不为空
SalesDate nvarchar(30) not null ,
--列名，数据类型，为不为空
--check约束
SalesAmount int check(SalesAmount>=0 )
)

--删除数据表
drop table Category
drop table Ware
drop table Employee
drop table SalesInfo



--第三章--插入数据，新建数据
--插入数据
insert into Category(Cname,Description)values('食品类','好吃不上火!')
insert into Category(Cname,Description)values('电器类','看老子电不死你!')
insert into Category(Cname,Description)values('家具类','买完自己搬!')
 
insert into Ware (Wname,Cid,PurchasePrice,SalesPrice,Amount)values ('黑人饼干',1,2,5,100)
insert into Ware (Wname,Cid,PurchasePrice,SalesPrice,Amount)values ('黑人鸡腿',1,22,55,100)
insert into Ware (Wname,Cid,PurchasePrice,SalesPrice,Amount)values ('黑人牛奶',1,20,50,100)
insert into Ware (Wname,Cid,PurchasePrice,SalesPrice,Amount)values ('黑人火腿',1,20,50,100)
insert into Ware (Wname,Cid,PurchasePrice,SalesPrice,Amount)values ('黑人牙膏',1,12,25,100)
insert into Ware (Wname,Cid,PurchasePrice,SalesPrice,Amount)values ('黑人袜子',1,12,15,100)
insert into Ware (Wname,Cid,PurchasePrice,SalesPrice,Amount)values ('黑人牙刷',1,12,25,100)
insert into Ware (Wname,Cid,PurchasePrice,SalesPrice,Amount)values ('黑人眼睛',1,200,500,100)
insert into Ware (Wname,Cid,PurchasePrice,SalesPrice,Amount)values ('黑人口罩',1,20,50,100)
insert into Ware (Wname,Cid,PurchasePrice,SalesPrice,Amount)values ('黑人帽子',1,20,50,100)
insert into Ware (Wname,Cid,PurchasePrice,SalesPrice,Amount)values ('电视',2,2000,5000,100)
insert into Ware (Wname,Cid,PurchasePrice,SalesPrice,Amount)values ('电冰箱',2,2000,5000,100)
insert into Ware (Wname,Cid,PurchasePrice,SalesPrice,Amount)values ('电风扇',2,120,500,100)
insert into Ware (Wname,Cid,PurchasePrice,SalesPrice,Amount)values ('空调',2,2000,5000,100)
insert into Ware (Wname,Cid,PurchasePrice,SalesPrice,Amount)values ('原子弹',2,2000,5000,100)
insert into Ware (Wname,Cid,PurchasePrice,SalesPrice,Amount)values ('床',3,2000,5000,100)
insert into Ware (Wname,Cid,PurchasePrice,SalesPrice,Amount)values ('窗帘',3,200,500,100)
insert into Ware (Wname,Cid,PurchasePrice,SalesPrice,Amount)values ('桌子',3,200,500,100)
insert into Ware (Wname,Cid,PurchasePrice,SalesPrice,Amount)values ('电竞椅',3,200,500,100)
insert into Ware (Wname,Cid,PurchasePrice,SalesPrice,Amount)values ('拖把',3,20,50,100)
insert into Ware (Wname,Cid,PurchasePrice,SalesPrice,Amount)values ('吊灯',3,2000,5000,100)

insert into Employee (Cid,Ename,Epassword,Remark)values(1,'刘涛',123456,'员工')
insert into Employee (Cid,Ename,Epassword,Remark)values(1,'刘虎',123456,'员工')
insert into Employee (Cid,Ename,Epassword,Remark)values(1,'肖迪',123456,'员工')
insert into Employee (Cid,Ename,Epassword,Remark)values(1,'刘禅',123456,'员工')
insert into Employee (Cid,Ename,Epassword,Remark)values(2,'王亚飞',123456,'员工')
insert into Employee (Cid,Ename,Epassword,Remark)values(2,'康云飞',123456,'员工')
insert into Employee (Cid,Ename,Epassword,Remark)values(3,'王鹏威',123456,'员工')
insert into Employee (Cid,Ename,Epassword,Remark)values(3,'小毛',123456,'员工')

insert into SalesInfo(Wid,Eid,SalesDate,SalesAmount)values(1,1,'2017-12-20',50)
insert into SalesInfo(Wid,Eid,SalesDate,SalesAmount)values(2,1,'2017-11-23',51)
insert into SalesInfo(Wid,Eid,SalesDate,SalesAmount)values(3,1,'2017-11-22',58)
insert into SalesInfo(Wid,Eid,SalesDate,SalesAmount)values(4,1,'2017-11-21',59)
insert into SalesInfo(Wid,Eid,SalesDate,SalesAmount)values(5,1,'2017-11-20',100)
insert into SalesInfo(Wid,Eid,SalesDate,SalesAmount)values(6,1,'2017-11-19',100)
insert into SalesInfo(Wid,Eid,SalesDate,SalesAmount)values(7,1,'2017-10-20',100)
insert into SalesInfo(Wid,Eid,SalesDate,SalesAmount)values(8,1,'2017-10-19',100)
insert into SalesInfo(Wid,Eid,SalesDate,SalesAmount)values(9,1,'2017-10-18',100)
insert into SalesInfo(Wid,Eid,SalesDate,SalesAmount)values(12,2,'2017-9-19',100)
insert into SalesInfo(Wid,Eid,SalesDate,SalesAmount)values(15,2,'2017-9-20',100)


--第四章--数据的查询
--删除数据库 
drop database SuperMarket
--删除数据表
drop table Category
drop table Ware
drop table Employee
drop table SalesInfo
--删除数据
delete from Category 
delete from Ware 
delete from Employee 
delete from SalesInfo 
--删除指定的数据
delete from 表名 where 列名='  '
--修改全部数据
update SalesInfo  set  SalesDate='2017-12-20'
--修改指定数据
update SalesInfo set SalesAmount=10 where Wid=15 and Eid=2
--查询数据
select * from Category
select * from Ware
select * from Employee
select * from SalesInfo
--使用AS来命名直接查询结果列
select Cname 类名, Description  介绍  from  Category
select  Wid 商品编号,Wname 商品名称,Cid 库号,PurchasePrice  进价,SalesPrice  售价,Amount  库存  from Ware
select Cid 库号,Ename 姓名,Epassword  密码,Remark  职位 from Employee
select Wid 编号,Eid 库号,SalesDate 日期,SalesAmount 售出个数 from SalesInfo
--单表查询（商品名称，出售个数，利润）
select Wname 商品名称,Amount 出售个数,SalesPrice -PurchasePrice  利润      from   Ware  order by  SalesPrice -PurchasePrice    desc
--降序排序（对商品表进行售价降序）
select Wid 商品编号,Wname 商品名称,Cid 库号,PurchasePrice  进价,SalesPrice  售价,Amount  库存   from  Ware  order by  SalesPrice desc
--盈利总额
--内连接--1.确定列--2.确定表--确定条件--内连接关键字（inner join）
select   Ware.Wid 商品编号,  Wname 商品名称,   SalesAmount 售出个数,   SalesPrice -PurchasePrice  单个利润,  Eid 库名,
(SalesPrice -PurchasePrice)*SalesAmount   总盈利    from Ware          inner join SalesInfo  on SalesInfo.Wid=Ware.Wid  
 order by  (SalesPrice -PurchasePrice)*SalesAmount  desc   
--对前五盈利进行降序排列
select top 5  Ware.Wid 商品编号,  Wname 商品名称,   SalesAmount 售出个数,   SalesPrice -PurchasePrice  单个利润,  Eid 库名,
(SalesPrice -PurchasePrice)*SalesAmount   总盈利    from Ware          inner join SalesInfo  on SalesInfo.Wid=Ware.Wid  
 order by  (SalesPrice -PurchasePrice)*SalesAmount  desc   
