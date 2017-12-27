--添加数据
select*from Category
select*from Ware
--商品类别
insert into Category values('牙膏类','')
insert into Category values('人类','')
insert into Category values('西瓜霜类','')
insert into Category values('治嗓子类','')
insert into Category values('为什么追我','')
insert into Category values('坚持四项基本原则','')
insert into Category values('everybody陪我一起嗨嗨嗨','')
insert into Category values('小姐，请问，','')
insert into Category values('您，今晚，','')
insert into Category values('有空吗？','')
--商品信息
insert into Ware values('100011','黑人牙膏',1,500,1000,1000)
insert into Ware values('100012','肾宝','2',500,1000,1000)
insert into Ware values('100013','坚持党的领导',3,500,1000,1000)
insert into Ware values('100014','贯彻党的思想',4,500,1000,1000)
insert into Ware values('100015','不如趁早',5,500,1000,1000)
insert into Ware values('100016','面包',6,500,1000,1000)
insert into Ware values('100017','交个朋友吧',7,500,1000,1000)
insert into Ware values('100018','纵享丝滑',8,500,1000,1000)
insert into Ware values('100019','你的头发还好吗',9,500,1000,1000)
insert into Ware values('100020','我想和你一起起床',10,500,1000,1000)
select*from Ware
--插入员工数据
insert into Employee values('黄胜利','666666','')
insert into Employee values('红胜利','777777','')
insert into Employee values('绿胜利','555555','')
select*from Employee
--插入销售记录Update Ware set Amount=Amount-1 where Wname='黑人牙膏'
insert into SalesInfo values(100011,'2011-05-06',10,1001)
Update Ware set Amount=Amount-1 where Wname='肾宝'insert into SalesInfo values(100012,'2012-06-07',10,1001)
Update Ware set Amount=Amount-1 where Wname='坚持党的领导'
insert into SalesInfo values(100013,'2011-07-08',10,1001)
Update Ware set Amount=Amount-1 where Wname='贯彻党的思想'
insert into SalesInfo values(100014,'2011-12-20',10,1001)
Update Ware set Amount=Amount-1 where Wname='不如趁早'
insert into SalesInfo values(100015,'2011-05-11',10,1001)
select*from SalesInfo


