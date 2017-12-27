--添加商品类
insert into category(tnam,Description) values ('食品类','好吃不贵')
insert into category(tnam,Description) values ('电器类','好用不贵')
insert into category(tnam,Description) values ('生活用品类','好用不贵')
insert into category(tnam,Description) values ('玩具类','好玩不贵')
insert into category(tnam,Description) values ('服装类','好看不贵')
--添加商品信息
insert into ware(wnam,cid,purchaseprice,salesprice,amount) values('红烧肉',1,88.00,110,99)
insert into ware(wnam,cid,purchaseprice,salesprice,amount) values('猪肘子',1,79.00,97,99)
insert into ware(wnam,cid,purchaseprice,salesprice,amount) values('大鸡腿',1,8.80,81,99)
insert into ware(wnam,cid,purchaseprice,salesprice,amount) values('鸭脖',1,4.50,54,99)
insert into ware(wnam,cid,purchaseprice,salesprice,amount) values('牛肉',1,9.90,43,99)
insert into ware(wnam,cid,purchaseprice,salesprice,amount) values('面包',1,4.5,30,99)
insert into ware(wnam,cid,purchaseprice,salesprice,amount) values('无敌牌冰箱',2,25,4599,99)
insert into ware(wnam,cid,purchaseprice,salesprice,amount) values('海尔洗衣机',2,55,3600,99)
insert into ware(wnam,cid,purchaseprice,salesprice,amount) values('黑人牙膏',3,3.5,26,99)
insert into ware(wnam,cid,purchaseprice,salesprice,amount) values('超人内裤',5,1.5,99,99)
insert into ware(wnam,cid,purchaseprice,salesprice,amount) values('小饼干',1,5.5,36,99)

--添加员工信息
insert into employee(enam,epassword,remark) values('刘涛',666666,'优秀员工')
insert into employee(enam,epassword,remark) values('刘备',88888888,'优秀员工')

--添加销售记录信息
update ware set amount=amount-1	 where wnam='红烧肉'
insert into salesinfo(wid,eid,salesdate,salesamount) values(1,1001,'2017-12-19',7)
update ware set amount=amount-1	 where wnam='猪肘子'
insert into salesinfo(wid,eid,salesdate,salesamount) values(2,1002,'2017-12-19',6)
update ware set amount=amount-1	 where wnam='大鸡腿'
insert into salesinfo(wid,eid,salesdate,salesamount) values(3,1001,'2017-12-19',4)
update ware set amount=amount-1	 where wnam='鸭脖'
insert into salesinfo(wid,eid,salesdate,salesamount) values(4,1001,'2017-12-19',5)
update ware set amount=amount-1	 where wnam='面包'
insert into salesinfo(wid,eid,salesdate,salesamount) values(6,1002,'2017-12-19',3)
--修改信息
update employee set enam='孙尚香' where enam='刘备'  
--删除数据
delete from  ware where wnam='小饼干'

--数据查询
select*from category
select*from ware
select*from employee
select*from salesinfo
