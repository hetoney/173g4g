--新建商品类别表
create table Category(
--编号   定位主键    自动增长   
Cid int primary key identity(1,1),
--名字
Cname nvarchar(30) not null unique, 
--商品描述
Description nvarchar(30)null,
) 
--新建商品信息表
create table Ware(
--商品信息编号 定位主键
Wid int primary key identity(1,1),
--商品名称               不能重复
Wname nvarchar(50) not null unique,
--商品所属类别
Cid int foreign key references Category(Cid),
--商品进价
PurchasePrice decimal(10,2) not null check(len(PurchasePrice)>0),--商品售价SalesPrice decimal (10,2) not null check(len(SalesPrice)>0),--商品库存Amount decimal (10,2) not null check(len(Amount)>0),
)
--新建员工表
create table Employee(
--员工编号，主键，自动增长，从1001开始Eid decimal primary key identity(1001,1),--员工姓名Ename nvarchar(30) not null,--员工密码，不能少于六位Epassword nvarchar(30) not null check(len(Epassword)>=6),--备注，可不填Remark nvarchar(20) null,
)
--新建销售记录表
create table SalesInfo(
--主键，自动增长，从1开始
Sid int primary key identity(1,1),
--所销售的商品的编号（外键），必填
Wid int foreign key references Ware(wid),
--商品销售时间
SalesDate datetime null,
--商品销售的数量，必填且必须大于0SalesAmount float check(len(SalesAmount)>0),--收银员的编号（外键），必填Eid decimal foreign key references Employee(Eid),
)

--删除销售记录表
drop table SalesInfo
--删除员工表
drop table Employee
--删除商品信息表
drop table Ware
--删除商品表
drop table Category
