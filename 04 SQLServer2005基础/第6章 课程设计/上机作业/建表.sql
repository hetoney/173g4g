--商品类别表
create table Category(
Cid int primary key identity(1,1),
Cname nvarchar(20) not null unique,
Description nvarchar(250)
)
--商品信息表
create table Ware(
wid int primary key identity(1,1),
Wname nvarchar(20) not null unique,
Cid int not null foreign key references Category(Cid),
PurchasePrice float check(len(PurchasePrice)>0),SalesPrice float check(len(SalesPrice)>0),Amount int check(len(Amount)>0)
)
--员工表
create table Employee(
Eid int primary key identity(1001,1),
Ename nvarchar(20) not null unique,
Epassword nvarchar(30) check(len(Epassword)>=6),Remark nvarchar(20))--销售记录表create table SalesInfo(Sid int primary key identity(1,1),Wid int not null foreign key references Ware(Wid),SalesDate  varchar(30),SalesAmount int check(SalesAmount>0),Eid int not null foreign key references Employee(Eid))--删除表drop table Categorydrop table Waredrop table Employeedrop table SalesInfo