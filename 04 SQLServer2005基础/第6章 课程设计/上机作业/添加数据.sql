--
select*from Category
select*from Ware
select*from Employee
select*from SalesInfo

--商品类别数据
insert into Category values('牙膏','用了会掉牙！')
insert into Category values('洗发水','用了会脱发！')
insert into Category values('马雕','小马哥亲自带言！')
insert into Category values('糖果','吃了中毒！')
insert into Category values('泡面','吃了绝壁死人！')
insert into Category values('皮鞋','浙江温州江南皮革厂倒闭了！')

--商品信息数据
insert into Ware values('高露洁牙膏','1','4.50','5.80','231')
insert into Ware values('田七牙膏','1','1.80','2.70','120')
insert into Ware values('黑莓牙膏','1','2.60','4.20','96')
insert into Ware values('海飞丝洗发水','2','12.70','15.90','56')
insert into Ware values('飘柔','2','8.10','12.30','103')
insert into Ware values('霸王','2','19.40','26.90','130')
insert into Ware values('马端雕','3','20.00','22.22','150')
insert into Ware values('老邓头糖果','4','1.00','11.11','666')
insert into Ware values('郭字牌泡面','5','1.58','2.02','222')
insert into Ware values('江南皮革鞋','6','60.00','66.66','888')

--员工数据
insert into Employee values('老邓头','666665','此乃高手高高手')
insert into Employee values('郭金改','666666','傻的可爱')
insert into Employee values('马秃头','666667','秃头天下无敌')

--销售记录数据
Update Ware set Amount=Amount-1 where Wname='高露洁牙膏'
insert into SalesInfo values(1,'2017-12-19',1,1001)
Update Ware set Amount=Amount-5 where Wname='郭字牌泡面'
insert into SalesInfo values(9,'2017-12-02',5,1002)
Update Ware set Amount=Amount-3 where Wname='老邓头糖果'
insert into SalesInfo values(8,'2017-12-07',3,1001)
Update Ware set Amount=Amount-1 where Wname='江南皮革鞋'
insert into SalesInfo values(10,'2009-12-02',1,1002)
Update Ware set Amount=Amount-1 where Wname='马端雕'
insert into SalesInfo values(7,'2009-12-19',1,1003)


