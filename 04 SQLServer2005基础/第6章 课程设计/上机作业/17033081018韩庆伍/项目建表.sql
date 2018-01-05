drop table Category
drop table Ware
drop table Employee
drop table Saleslnfo
--建立商品类别表
create table Category
(
--Cid 主键  自动增长 从1开始
Cid int primary key identity(1,1),
--类型名称
Cname nvarchar(20) not null unique,
--类型描述
Description nvarchar(500)
)
--建立商品信息表
create table Ware(
--商品编号
Wid int primary key not null,
--商品名称
Wname nvarchar(20) not null unique,
--商品所属类别
Cid int not null foreign key references Category(Cid ),
--商品进价
PurchasePrice float not null check(len(PurchasePrice)>0),
--商品售价
SalesPrice float not null check(len(SalesPrice)>0),
--商品库存量
Amount int not null check(len(Amount)>0)
)
--新建员工表
create table Employee(
--员工编号
Eid int primary key identity(1001,1),
--员工姓名
Wname nvarchar(20) not null,
--员工密码
Epassword nvarchar(10) not null check(len(Epassword)>=6),
--备注
Remark nvarchar(50) null
)
--销售记录表
create table Saleslnfo
(
Sid int primary key identity(1,1),
--所销售的商品的编号
Wid int not null foreign key references Ware(Wid),
--商品销售的时间
SalesDate nvarchar(10) not null,
--商品销售数量
SalesAmount int not null check(len(SalesAmount)>0),
--收银员编号
Eid int not null foreign key references Employee(Eid)
)