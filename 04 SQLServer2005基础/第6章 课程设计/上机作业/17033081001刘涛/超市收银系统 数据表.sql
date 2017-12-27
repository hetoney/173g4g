--建立数据表
--建立商品类别表
create table Category
(
--cid 主键 自动增长 从 1 开始 商品编号
cid int primary key identity(1,1),
--类型名称不能为空，且不能重复
name nvarchar(20) not null unique,
--
description nvarchar(200) 
)
--新建商品信息表
create table Ware
(
--商品编号 -主键 自动增长 从 1 开始
Wid int primary key identity(1,1),
--商品名称
Wname nvarchar(20) not null unique,
--类别外键
cid int not null foreign key references Category (Cid),
--商品进价必须大于0
PurchasePrice int not null check (PurchasePrice>0),
--商品售价必须大于0
SalesPrice int not null check (SalesPrice>0),
--商品库存必须大于0
Amount int not null check (Amount>0)
)
--新建员工表
create table Employee
(
--员工编号，主键 自动增长 从1001开始
Eid int primary key identity(1001,1),
--员工姓名
Ename  nvarchar(20)not null,
--员工密码 不少于六位
Epassword nvarchar(10)not null check(len(Epassword)>6),
--备注
Remark nvarchar(100) 
) 
--新建销售数据表
create table Saleslnfo
(
--主键
Sid int primary key identity(1,1),
--所销售的商品编号 外键 必填
Wid int not null foreign key references Ware (Wid),
--商品所销售的时间 必填
SalesDate nvarchar(10) not null,
--商品销售数量
SalesAmount int not null check (SalesAmount>0),
--收银员的编号 外键 必填
Eid int not null foreign key references Employee (Eid)

)
--删除数据表
drop table Saleslnfo
drop table Employee
drop table Ware
drop table Category