--添加商品类别
insert into Category(Cname)values('生活用品')
insert into Category(Cname)values('电器类')
insert into Category(Cname)values('食品类')
insert into Category(Cname)values('智能产品类')
insert into Category(Cname)values('服饰类')
insert into Category values('小吃类','')
--添加商品信息
insert into ware values('田七牙膏','1','5.8','6.8','230')
insert into Ware( Wname,Cid,PurchasePrice ,SalesPrice ,Amount )values('高露洁牙膏','1','4.5','5.80','231')
insert into Ware values('戴尔电脑','2','4500','5500','225')
insert into Ware values('三星手机','2','1900','2600','223')
insert into Ware values('联想电脑','2','4400','5300','221')
insert into Ware values('薯片','3','2','3','2460')
insert into Ware values('棒棒糖','3','0.5','3','2464')
insert into Ware values('红烧牛肉','3','25','35','2454')
insert into Ware values('干吃方便面','3','2','3','2455')
insert into Ware values('火鸡方便面','3','2','3','2455')

--添加员工信息
insert into Employee values('宋庆辉','990803','河南')
insert into Employee values('小明','990714','河南')


--添加销售记录
insert into SalesInfo values('1','2017-05-06','6','1001')
Update Ware set Amount=Amount-5 where Wid='1'

insert into  SalesInfo values('3','2017-9-9','6','1001')
Update Ware set Amount=Amount-6 where Wid='3'


insert into SalesInfo values('1','2017-05-06','6','1001')
Update Ware set Amount=Amount-5 where Wid='1'

insert into  SalesInfo values('5','2017-9-9','4','1001')
Update Ware set Amount=Amount-2 where Wid='5'

insert into  SalesInfo values('5','2017-9-9','4','1002')
Update Ware set Amount=Amount-2 where Wid='5'

insert into  SalesInfo values('6','2017-9-10','4','1002')
Update Ware set Amount=Amount-2 where Wid='6'

insert into  SalesInfo values('3','2017-9-10','4','1001')
Update Ware set Amount=Amount-4 where Wid='3'
--商品类别
select*from Category
--商品信息
select*from Ware
--员工
select*from Employee
--销售记录
select*from SalesInfo


