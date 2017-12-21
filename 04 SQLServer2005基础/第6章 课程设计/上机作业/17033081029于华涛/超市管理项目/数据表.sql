drop table Category
--商品类别表（Category）
create table Category(
Cid int primary key identity(1,1),
Cname nvarchar(20) not null unique,
Dsecription nvarchar(50) not null
)
drop table Ware
--商品信息表（Ware）
create table Ware(
Wid	 int primary key ,--数字	商品的编号（即条形码），主键
Wname nvarchar(30) not null unique,	--字符	商品名称，必填且不能重复
Cid	int  not null foreign key references Category(cid) , --数字	商品所属的类别（外键），必填
PurchasePrice int not null check(len(PurchasePrice)>0),   	--数字	商品进价，必须大于0
SalesPrice	int not null check(len(SalesPrice)>0),   --数字	商品售价，必须大于0
Amount	int not null check(len(Amount)>0)  --数字	商品库存量，必须大于0
)
--员工表（Employee)
create table Employee(
         --数字	员工编号，主键，自动增长，从1001开始
Eid	int primary key identity(1001,1),
         --字符	员工姓名，必填
Ename	nvarchar(10) not null,
         --	字符	员工密码，不少于六位
Epassword nvarchar(20) check(len(Epassword)>6),
	     --字符	备注，可不填
Remark nvarchar(100)
)
--销售记录表（SalesInfo）
create table SalesInfo(
--数字	主键，自动增长，从1开始
Sid int primary key identity(1,1),
--  	数字	所销售的商品的编号（外键），必填
Widint int not null,
--  	日期	商品销售的时间，必填
SalesDate datetime not null ,
--   数字	商品销售的数量，必填且必须大于0
SalesAmount int not null check(len(SalesAmount)>0),
--	数字 收银员的编号（外键），必填
Eid	int foreign key references Employee(Eid) 
)
--查询
select*from Category
select*from ware
select*from Employee
select*from SalesInfo
