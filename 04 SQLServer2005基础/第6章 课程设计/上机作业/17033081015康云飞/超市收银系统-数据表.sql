--建立数据表

--商品类别表：category
create table category(
--商品编号主键
cid int primary key identity(1,1),
--类别名称
tnam nvarchar(20) not null unique,
Description nvarchar(200)
)
--商品信息表：ware
create table ware(
--商品编号（条形码），主键
wid int primary key identity(1,1),
--类别外键
cid int foreign key references category(cid),
--商品名称
wnam nvarchar(50) not null unique,
--商品进价
purchaseprice decimal(10,2) not null,
--商品售价
salesprice decimal(10,2) not null,
--库存量
amount int not null
)
--员工表
create table employee(
--员工编号,主键
eid int primary key identity(1001,1),
--员工姓名
enam nvarchar(20) not null,
--员工登录密码epassword varchar(20) check(len(epassword)>=6),
--备注
remark nvarchar(20) 
)
--销售记录表
create table salesinfo(
--销售记录主键
sid int primary key identity(1,1),
--商品外键
wid int foreign key references ware(wid),
--收银员外键
eid int foreign key references employee(eid),
--销售时间
salesdate nvarchar(30) not null,
--销售数量
salesamount int not null default 1
)
--删除数据表
drop table category
drop table ware
drop table employee
drop table salesinfo
