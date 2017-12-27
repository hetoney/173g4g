--商品类别表
create table Category(
--列名，数据类型，主键，自动增长
cid int primary key identity(1,1),
--列名，数据类型，唯一约束
cname nvarchar(20)not null unique,
--列名，数据类型，为不为空
description nvarchar(30)null,
)

--商品信息表
create table Ware(
--列名，数据类型，主键，
wid int primary key ,
--列名，数据类型，唯一约束
wname nvarchar (20) not null unique,
--列名，数据类型，外键
cid int not null foreign key references Category(cid),
--列名，数据类型，定义约束
PurchasePrice int check(PurchasePrice>0),--列名，数据类型，定义约束SalesPrice int check(SalesPrice>0),--列名，数据类型，定义约束Amount int check(Amount>0))--员工表create table Employee(--列名，数据类型，主键，自动增长Eid int  primary key identity (1001,1),--列名，数据类型，唯一约束Ename nvarchar(20) not null unique,--列名，数据类型，定义约束Epassword nvarchar(10)not null check(Epassword>6),--列名，数据类型，为不为空Remark nvarchar(50) null,)--销售记录表create table SalesInfo(--列名，数据类型，主键，自动增长Sid int primary key identity(1,1),--列名，数据类型，外键wid int not null foreign key references Ware(Wid),--列名，数据类型，为不为空SalesDate datetime not null,--列名，数据类型，定义约束SalesAmount int check(SalesAmount>0),--列名，数据类型，外键Eid int not null foreign key references Employee(Eid),)--删除drop table Categorydrop table Ware drop table  Employeedrop table SalesInfo