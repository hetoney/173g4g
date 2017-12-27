--新建商品类别表
create table Category(
--编号，主键，自动增长
cid int primary key identity(1,1),
cname nvarchar(30)not null unique,
Description nvarchar(30)null,)--新建商品信息表create table Ware(Wid int primary key identity(1,1),Wname nvarchar(30)not null unique,cid int not null  foreign key references Category(cid),PurchasePrice float  check(len(PurchasePrice)>0),SalesPrice float check(len(SalesPrice)>0),Amount float  check(len(Amount)>0),)--员工表create table Employee(Eid int primary key identity(1001,1),Ename nvarchar(20) not null,Epassword nvarchar(30) not null check(len(Epassword)>=6),Remark nvarchar(30)null,)--销售记录表create table SalesInfo(sid int primary key identity(1,1),Wid int  foreign key references ware(wid),SalesDate datetime not null,SalesAmount int  check(len(SalesAmount)>0),Eid int foreign key references Employee(eid),)----删除数据表(注意先删除外键表，再删除主键表)drop table Categorydrop table Waredrop table Employeedrop table SalesInfo