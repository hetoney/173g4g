--第一个表
insert into Category values('家电类','')
insert into Category values('食品类','')
insert into Category values('水果类','')
insert into Category values('饮品类','')
insert into Category values('日用品类','')

--第二个表
insert into Ware values('10010','西门子冰箱','1','5000','6998','50')
insert into Ware values('10011','TCL云电视','1','4000','5998','50')
insert into Ware values('10012','ipad witch','1','8000','1200','50')
insert into Ware values('10013','脆司令','2','0.8','1','1000')
insert into Ware values('10014','小当家','2','0.3','0.5','1000')
insert into Ware values('10015','喜之郎','2','5','8','500')
insert into Ware values('10016','榴莲','3','70','120','10')
insert into Ware values('10017','猕猴桃','3','2','3','50')
insert into Ware values('10018','香蕉','3','1','2','60')
insert into Ware values('10019','水溶C100','4','3.5','5','100')
insert into Ware values('10020','海之言','4','4','5','100')
insert into Ware values('10021','尖叫','4','3.5','4','100')
insert into Ware values('10022','海飞丝','5','20','35','50')
insert into Ware values('10023','御泥坊面膜','5','10','25','500')
insert into Ware values('10024','欧莱雅男士洗面奶','5','25','40','100')

--第三个表
insert into Employee values('宋亚鹏','435464','')
insert into Employee values('张少博','142536','')

--第四个表
insert into SalesInfo values('10024','2017-11-11','6','1001')
update ware set Amount = Amount - 6 where Wname = '欧莱雅男士洗面奶'
insert into SalesInfo values('10012','2016-11-11','1','1002')
update ware set Amount = Amount - 1 where Wname = 'ipad witch'
insert into SalesInfo values('10023','2015-12-12','60','1001')
update ware set Amount = Amount - 60 where Wname = '御泥坊面膜'
insert into SalesInfo values('10011','2017-12-12','1','1002')
update ware set Amount = Amount - 1 where Wname = 'TCL云电视'
insert into SalesInfo values('10010','2016-5-12','1','1001')
update ware set Amount = Amount - 1 where Wname = '西门子冰箱'
insert into SalesInfo values('10016','2017-2-13','5','1001')
update ware set Amount = Amount - 5 where Wname = '榴莲'
insert into SalesInfo values('10017','2017-11-29','30','1002')
update ware set Amount = Amount - 30 where Wname = '猕猴桃'
insert into SalesInfo values('10018','2017-12-25','5','1001')
update ware set Amount = Amount - 5 where Wname = '香蕉'
insert into SalesInfo values('10021','2017-6-13','1','1001')
update ware set Amount = Amount - 1 where Wname = '尖叫'
insert into SalesInfo values('10022','2017-7-7','3','1002')
update ware set Amount = Amount - 3 where Wname = '海飞丝'
select * from Category
select * from Ware
select * from Employee
select * from SalesInfo