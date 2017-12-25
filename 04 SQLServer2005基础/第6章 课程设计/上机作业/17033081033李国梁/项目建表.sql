drop table Categor
drop table Ware
drop table Employee
drop table SalesInfo


--商品类别表
create table Categor
(
--自动增长 从一开始 主键
Cid int primary key identity(1,1),
--类型名称 不能为空且不能重复
Cname nvarchar(20) not null unique,
--类别描述可以为空
Description nvarchar(50) null
)
--商品信息表
create table Ware(
Wid int not null primary key ,
Wname nvarchar(50)not null,
Cid int not null foreign key references Category(Cid),
PurchasePrice int check(PurchasePrice>0),
SalesPrice int check(SalesPrice>0),
Amount int check(Amount>0)
)
--员工表
create table Employee(
Eid int primary key identity(10001,1),
Ename nvarchar(20) not null,
Epassword nvarchar(20) check(len(Epassword)>5),
Remark nvarchar(200) null
)
--销售记录表
create table SalesInfo(
Sid int primary key identity(1,1),
Wid int not null foreign key references Ware(Wid),
SalesDate datetime not null,
SalesAmount int check(len(SalesAmount)>0),
Eid int not null foreign key references Employee(Eid)
)
