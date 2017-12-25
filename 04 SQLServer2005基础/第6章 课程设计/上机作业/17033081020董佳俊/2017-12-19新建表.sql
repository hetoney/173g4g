
--新建商品类别表
create table Supermarket(
--编号，主键，自动增长
cid int primary key identity(10001,1),
cname nvarchar(10) not null unique,
description nvarchar(20) null,
)
--新建商品信息表
create table product(
wid int primary key identity(1,1),
wname nvarchar(20) not null unique,
cid int not null foreign key references Supermarket(cid),
purchaseprice int not null  check(len(purchaseprice)>0),
sales int not null check(len(sales)>0),
amount int not null check(len(amount)>0)
)
--新建员工表
create table employee(
eid int not null primary key identity(1001,1),
ename nvarchar(4) not null, 
epassword nvarchar(12)not null check(len(epassword)>5),
remark nvarchar(100)
)
--销售记录表
create table sales(
sid int not null primary key identity(1,1),
wid int not null  foreign key references product(wid),
saelsdate datetime null,
salesamount int check(len(salesamount)>0),
eid int not null foreign key references employee(eid)
)
--查询和删除
select*from Supermarket
select*from product
select*from employee
select*from sales

drop table Supermarket
drop table product
drop table employee
drop table sales