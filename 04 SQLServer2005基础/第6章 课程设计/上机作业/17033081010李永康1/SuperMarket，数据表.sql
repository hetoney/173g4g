--商品类别表
create table Category(
Cid int primary key identity(1,1),--类别主键
Cname nvarchar(20) not null unique,--类别名称
Description nvarchar(30) not null--类别描述
)
--商品信息表
create table Ware(
Wid int primary key identity(1,1),--商品主键
Wname nvarchar(50) not null unique,--商品名称
Cid int foreign key references Category(Cid),--商品类别外键
PurchasePrice decimal(10,2) not null check (PurchasePrice>0),--商品进价SalesPrice decimal(10,2) not null check (SalesPrice>0),--商品售价Amount int not null check (Amount>0)--商品库存
)
--员工表
create table Employee(
Eid int primary key identity(1001,1),--员工主键
Ename nvarchar(20) not null,--员工姓名
Epassword nvarchar(20) not null check (len(Epassword)>6),--员工密码
Remark nvarchar(30) not null--备注
)
--销售记录表
create table SalesInfo(
Sid int primary key identity(1,1),--销售记录主键
Wid int foreign key references Ware(Wid),--销售商品编号外键
SalesDate datetime not null,--销售时间
SalesAmount int not null default 1,--销售数量
Eid int foreign key references Employee(Eid)--收银员外键
)
--删除商品类别表
drop table Category
--删除商品信息表
drop table Ware
--删除员工表
drop table Employee
--删除销售记录表
drop table SalesInfo