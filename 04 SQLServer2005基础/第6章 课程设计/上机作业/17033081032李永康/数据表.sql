--商品类别表
create table Category(
--商品类别,数据类型,主键,自动增长
Cid int primary key identity (1,1),
--类型名称,数据类型,不能为空且不能重复
Cname nvarchar(30)not null unique,
--类型描述,数据类型,可为空
Description nvarchar(100)null
)
--信息表
create table ware(
--商品编号，数据类型，主键，不能为空
Wid int primary key not null,
--商品名称，数据类型，不能为空
Wname nvarchar(30)not null,
--商品所属类别，数据类型，不能为空
Cid int not null foreign key references Category(Cid),
--商品进价,数据类型,大于零
PurchasePrice money check(PurchasePrice>0),
--商品售价,数据类型,大于零
SalesPrice money check(SalesPrice>0),
--商品库存,数据类型,必须大于零
Amount int check(Amount>0)
)
--员工表
create table Employee(
--员工编号,数据类型,主键,自动增长从1001开始
Eid int primary key identity(1001,1),
--员工名称,数据类型,不能为空
Ename nvarchar(30)not null,
--员工密码,数据类型,不能少于六位
Epassword nvarchar(10)check(len(Epassword)>5),
--备注,数据类型,可为空
Remark nvarchar(100)
)
--销售记录表
create table SalesInfo(
--,数据类型,主键,自动增长
Sid int primary key identity(1,1),
--所销售的商品的编号（外键），必填
Wid int foreign key references ware(Wid),
--商品销售的时间，必填
SalesDate datetime not null,
--商品销售的数量，必填且必须大于0
SalesAmount int check (SalesAmount>0),
--收银员的编号（外键），必填
Eid int foreign key references Employee(Eid)
)
--删除商品类别表
drop table Category
--删除信息表
drop table ware
--删除员工表
drop table Employee
--删除销售记录表
drop table SalesInfo