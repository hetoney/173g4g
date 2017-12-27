--新建数据表
--商品类别表
create table Category(
--自动增长
--为主键`1
Cid int primary key identity(1,1),
--类型名称，不能为空且不能重复
Cname nchar(20) not null unique,
--类别描述，可以为空
Description nvarchar(50)null,
)
--商品信息表
create table Ware(
--商品的编号（即条形码），主键
Wid int primary key not null,
--商品名称，必填且不能重复
Wname nchar(30)not null unique,
--商品所属的类别（外键），必填
Cid int foreign key references Category(Cid),--商品进价，必须大于0PurchasePrice decimal check(PurchasePrice>0),--商品售价，必须大于0SalesPrice decimal check(SalesPrice>0),--商品库存量，必须大于0Amaount decimal check(Amaount>0)
)
--员工表
create table Employee(
--员工编号，主键，自动增长，从1001开始
Eid int primary key identity(1001,1),
--员工姓名，必填Ename varchar(20)not null,
--员工密码，不少于六位Epassword nchar(10) not null check(len(Epassword)>6),
--备注，可不填
Remark nvarchar null
)
--销售记录表
create table SalesInfo(
--主键，自动增长，从1开始Sid int primary key identity(1,1),
--所销售的商品的编号（外键），必填Wid int not null foreign key references Ware(Wid),
--商品销售的时间，必填SalesDate datetime not null,--商品销售的数量，必填且必须大于0SalesAmount int not null check(SalesAmount>0),--收银员的编号（外键），必填Eid int not null foreign key references Employee(Eid)
)
--删除商品类别表
drop table Category
--删除商品信息表
drop table Ware
--删除员工表
drop table Employee
--删除销售记录表
drop table SalesInfo