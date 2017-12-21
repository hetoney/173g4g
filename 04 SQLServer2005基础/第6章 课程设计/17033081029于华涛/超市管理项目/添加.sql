--查询商品类别
select*from Category
--添加
insert into Category values('食品','吃的东西')
insert into Category values('饮料','喝的东西')
insert into Category values('生活用品','日常用品')
insert into Category values('护理','洗漱用品')
insert into Category values('电器','大小家电')
insert into Category values('礼品','送人礼物')

--查询商品信息表
  select*from   Ware 
--添加
insert into Ware values(7,'卫龙辣条',1,2,3,100)  
insert into Ware values(8,'巧克力',1,9,13,90) 
insert into Ware values(9,'萨琪玛',1,26,35,20) 
insert into Ware values(10,'达利园',1,40,54,15) 
insert into Ware values(11,'百事可乐',2,3,5,200)  
insert into Ware values(12,'营养快线',2,3,5,100) 
insert into Ware values(13,'加多宝',2,3,6,150) 
insert into Ware values(14,'伊利',2,43,60,20)
insert into Ware values(16,'黑人牙膏',3,6,15,120)
insert into Ware values(15,'清扬洗头膏',3,12,25,50)
insert into Ware values(17,'飘柔',3,8,12,100)  
insert into Ware values(18,'电饭锅',4,120,188,10) 
insert into Ware values(19,'热水壶',4,29,68,20)
insert into Ware values(20,'电风扇',4,36,73,30)                                      
--查询员工
select*from Employee
--添加 
insert into Employee values('灯泡','1234567','来自星星球')
insert into Employee values('刘备','1234567','以前是卖鞋的')
--查询 销售记录
select*from SalesInfo
--添加
Update Ware set Amount=Amount-1 where Wname='卫龙辣条'Insert into SalesInfo values(7,'2009-10-2',1,1002)Update Ware set Amount=Amount-1 where Wname='巧克力'Insert into SalesInfo values(8,'2009-10-11',1,1001)Update Ware set Amount=Amount-1 where Wname='营养快线'Insert into SalesInfo values(12,'2009-10-11',1,1001)Update Ware set Amount=Amount-1 where Wname='电风扇'Insert into SalesInfo values(20,'2009-10-11',1,1001)
--添加数据格式
insert into 表名（列名）values（数据）
insert into 表名 values（数据）
--销售格式
Update 表明 set 数量=数量-1 where 条件Insert into 表明 values(行信息)
