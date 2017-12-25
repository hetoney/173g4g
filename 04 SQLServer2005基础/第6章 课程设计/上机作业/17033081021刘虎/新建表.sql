--查看表
select *from Category
select *from Ware
select *from Employee
select *from SalesInfo


--创建商品类别表
create table Category(
Cid int primary key identity(1,1),
Cname nvarchar(10) not null unique,
Description nvarchar(50) null
)



--创建商品信息表
create table Ware(
Wid int primary key identity(1,1),
Wname nvarchar(10) not null unique,
Cid int not null foreign key references Category(Cid),
PurchasePrice int check(len(PurchasePrice)>0),
SalesPrice int check(len(SalesPrice)>0),
Amount int check(len(Amount)>0)
)


--创建员工表
create table Employee(
Eid int primary key identity(1001,1),
Ename nchar(10)not null,
Epassword nchar(20)check(len(Epassword)>6),
Remark nchar(10) null 
)


--创建销售记录表
create table SalesInfo(
Sid int primary key identity(1,1),
Wid int not null foreign key references Ware(Wid),
SalesDate datetime not null,
SalesAmount int not null check(len(SalesAmount)>0),
Eid int not null foreign key references Employee(Eid)
)




--create table：创建表的语法，其后跟表的名称
--primary key：定义该字段为主键
--identity(1,1)：定义为标识列，初始值为1，递增值为1
--null/not null：定义该列是否为null，如果不写，默认为null
--check(len(该列名)>0):定义约束，规定该列的值的长度必须大于0
--default：定义默认值，其后给默认的值
--unique：定义唯一约束，规定该列的值不可发生重复
--foreign key：定义该列为外键
--references：定义该外键列引用了某主键表的某主键列表中除了最后一
--列的定义外，其他列的定义后跟“,”结束