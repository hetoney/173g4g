
--商品类别表
create table Category
(Cid int primary key identity(1,1),
Cname  nvarchar(20) not null unique,
Description nvarchar(200)
)


--商品信息表
create table Ware
(
Wid int primary key , 
Wname nvarchar(20) not null unique,
Cid int foreign key references Category (Cid) not null,                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
PurchasePrice float check(PurchasePrice>0),SalesPrice float check(SalesPrice>0),Amount float check (Amount>=0),
 )


--员工表
create table Employee
(Eid int  primary key identity(1001,1),
 Ename nvarchar(20)not null,
 Epassword nvarchar(20)check(len(Epassword)>5), Remark nvarchar(200),
)


--销售记录表
create table SalesInfo(
Sid int primary key identity(1,1),
Wid int foreign key references Ware(Wid) not null,
SalesDate datetime not null,SalesAmount int check(SalesAmount>0),Eid int  foreign key references Employee(Eid) not null,
)


--添加类别数据
--
--
--步骤
insert into Category values('家电类','')
insert into Category values('日用类','')
insert into Category values('食品类','')
insert into Category values('饮品类','')
insert into Category values('体育类','')



--添加商品数据
--
--
--步骤
insert into Ware values('10010','美的空调','1','3000','4000','10')
insert into Ware values('10011','美的电冰箱','1','5000','5500','9')
insert into Ware values('10012','热水壶','2','20','32','100')
insert into Ware values('10013','热水器','2','50','55','50')
insert into Ware values('10014','热狗','3','1','2','10000')
insert into Ware values('10015','卫龙','3','2.0','2.5','500')
insert into Ware values('10016','可乐','4','2.5','3.0','999')
insert into Ware values('10017','雪碧','4','2.5','3.0','999')
insert into Ware values('10018','乒乓球拍','5','50','60','99')
insert into Ware values('10019','羽毛球拍','5','100','111','50')



--员工信息表
--
--
--步骤
insert into Employee values('张少博','111111','本店销售员')
insert into Employee values('孙泽森','222222','本店销售员')


--销售记录
--
--
--步骤
--1.空调销售
Update Ware set Amount=Amount-8 where Wname='美的空调'
insert into SalesInfo values('10010','2017-12-15','8','1002')
--电冰箱销售
Update Ware set Amount=Amount-5 where Wname='美的电冰箱'
insert into SalesInfo values('10011','2017-12-20','5','1001')
--热水壶销售
Update Ware set Amount=Amount-89 where Wname='热水壶'
insert into SalesInfo values('10012','2017-12-13','89','1002')
--卫龙销售
Update Ware set Amount=Amount-50 where Wname='卫龙'
insert into SalesInfo values('10015','2017-12-19','50','1001')
--乒乓球拍销售
Update Ware set Amount=Amount-20 where Wname='乒乓球拍'
insert into SalesInfo values('10018','2017-12-12','20','1001')


--查询数据
--
select * from Category
select * from Ware
select * from Employee
select * from SalesInfo
--删除数据表
drop table Category                        
drop table Ware
drop table Employee
drop table SalesInfo
--删除表中数据
delete from SalesInfo where sid='1'
