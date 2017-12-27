--新建商品表
create table Ware
(
        --商品编号,数据类型，为不为空
        Wid int primary key identity(1001,1),
        Wname nvarchar(20)not null unique ,
        SalesPrice float not null check(len(SalesPrice)>0)  
         )--新建商品类型表create table Category(       --商品类型编号,数据类型，为不为空
       --primary key主键       Cid int primary key identity(10010,1) ,       --商品类型名称,数据类型，为不为空
       Cname nvarchar(11) not null unique , )--新建订单表create table Orders(       Sid int primary key identity(10011,1),       Wid int not null foreign key references Ware(wid),       Amount int not null check(len(Amount)>0),       SalesDate nvarchar(20) not null check(len(SalesDate)>=10))--删除数据表drop table Waredrop table Categorydrop table Orders