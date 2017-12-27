--添加商品类别
insert into Category values('食品','')
insert into Category values('电器','')
insert into Category values('日用品','')
--添加商品信息
insert into ware values('香辣豆干',1,9,14,50)
insert into ware values('格力空调',2,1200,2400,30)
insert into ware values('飘柔',3,1000,1800,70)
insert into ware values('瓜子',1,2,6,102)
insert into ware values('牙膏',3,8,12,50)
insert into ware values('香蕉',1,4,8,50)
insert into ware values('电磁炉',2,120,318,50)
insert into ware values('洗衣机',2,500,1000,50)
insert into ware values('冰箱',2,800,1600,50)
insert into ware values('苹果',1,6,10,50)

--添加收银员信息
insert into Employee values('tom','1111111','')
insert into Employee values('jack','2222222','')
--添加销售记录信息
Update Ware set Amount=Amount-1 where Wname='香辣豆干'
insert into SalesInfo values(1,'2010-03-09',1,1001)
Update Ware set Amount=Amount-1 where Wname='格力空调'
insert into SalesInfo values(2,'2010-11-29',1,1002)
Update Ware set Amount=Amount-1 where Wname='飘柔'
insert into SalesInfo values(3,'2010-05-20',1,1002)
Update Ware set Amount=Amount-1 where Wname='瓜子'
insert into SalesInfo values(4,'2010-04-12',1,1001)
Update Ware set Amount=Amount-1 where Wname='牙膏'
insert into SalesInfo values(5,'2010-07-18',1,1001)
Update Ware set Amount=Amount-1 where Wname='香辣豆干'
insert into SalesInfo values(1,'2010-10-08',1,1002)
Update Ware set Amount=Amount-1 where Wname='飘柔'
insert into SalesInfo values(3,'2010-12-09',1,1002)
