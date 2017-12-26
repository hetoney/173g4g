--查看数据
select *from Category



--插入商品类别
--零食
insert into Category(Cname,Description)
values('零食','')
--水果
insert into Category(Cname,Description)
values('水果','好吃，解渴')
--日用品
insert into Category(Cname,Description)
values('日用品','')
--电器
insert into Category(Cname,Description)
values('电器','')
--手机
insert into Category(Cname,Description)
values('手机','')




select *from Ware
--插入商品信息
insert into Ware values('牛肉干',1,2,5,100)
insert into Ware values('鸡爪',1,1,2,100)
insert into Ware values('苹果',2,2,4,100)
insert into Ware values('梨',2,1,3,100)
insert into Ware values('黑人牙膏',3,10,15,100)
insert into Ware values('牙刷',3,2,3,100)
insert into Ware values('冰箱',4,3000,4000,100)
insert into Ware values('空调',4,4000,5000,100)
insert into Ware values('华为',5,1000,1500,100)
insert into Ware values('vivo',5,1000,2000,100)




select *from Employee
--插入员工
insert into Employee values('张三',1234567,'员工')
insert into Employee values('李四',2234567,'员工')

select *from SalesInfo
--插入销售记录表
update Ware set Amount=Amount-5 where Wname='牛肉干'
insert into SalesInfo values(1,'2011-1-12',5,1001)
update Ware set Amount=Amount-20 where Wname='苹果'
insert into SalesInfo values(3,'2011-1-12',20,1002)
update Ware set Amount=Amount-10 where Wname='黑人牙膏'
insert into SalesInfo values(5,'2011-1-13',10,1002)
update Ware set Amount=Amount-10 where Wname='冰箱'
insert into SalesInfo values(7,'2011-1-13',10,1001)
update Ware set Amount=Amount-30 where Wname='华为'
insert into SalesInfo values(9,'2011-1-14',30,1002)