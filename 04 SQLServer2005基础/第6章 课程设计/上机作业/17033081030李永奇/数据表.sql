--新建Category数据表
create table Category (
cid int primary key identity(1,1),--自动增长，从1开始，主键
Cname nvarchar(20) not null unique,--类型名称，不能为空且不能重复
Description nvarchar(20)--类别描述，可以为空
)



--新建商品信息表
create table Ware(
wid int primary key,--商品的编号（即条形码），主键
Wname nvarchar(30)not null unique,--商品名称，必填且不能重复
cid int not null foreign key references Category(cid),-- 商品所属的类别（外键），必填
PurchasePrice int check (PurchasePrice>0),--商品进价，必须大于0
SalesPrice int check(SalesPrice>0),--商品售价，必须大于0
Amount int check(Amount>0))--商品库存量，必须大于0



--新建员工表
create table Employee(
--员工编号，主键，自动增长，从1001开始
Eid int primary key identity(1001,1),
--员工姓名，必填
Ename nvarchar(5)not null unique,
--员工密码，不少于六位
Epassword nvarchar(20)check (len(Epassword)>=6),
--备注，可不填
Remark nvarchar(100))



--新建销售记录表
create table SalesInfo(
--主键，自动增长，从1开始
Sid int primary key identity(1,1),
--所销售的商品的编号（外键），必填
Wid int not null foreign key references Ware(wid),
--商品销售的时间，必填
SalesDate  nvarchar(20)not null,
--商品销售的数量，必填且必须大于0
SalesAmount int not null check (SalesAmount>0),
--收银员的编号（外键），必填
Eid int foreign key references Employee(Eid)
)
