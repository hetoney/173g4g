select * from Category
select * from Ware
select* from Employee
select* from SalesInfo

--在Category中添加数据
insert into Category values('生活用品类','')
insert into Category values('家电类','')
insert into Category values('食品类','')
insert into Category values('饮品类','')
insert into Category values('家具类','')


--在Ware中添加数据
insert into Ware values('10010','高露洁牙膏','1','4.50','5.80','231')
insert into Ware values('10011','霸王洗发水','1','19.40','26.90','65')
insert into Ware values('10012','田七牙膏','1','8.10','12.30','103')
insert into Ware values('10013','微波炉','2','388.60','506.30','50')
insert into Ware values('10014','热狗面包','3','2.60','4.20','96')
insert into Ware values('10015','小当家方便面','3','2.60','4.20','250')
insert into Ware values('10016','脉动','4','3.60','5.90','125')
insert into Ware values('10017','安慕希','4','12.70','15.90','200')
insert into Ware values('10018','椅子','5','58.10','86.30','103')
insert into Ware values('10019','美的空调','5','1008.60','1450.30','65')


--在Employee中添加数据
insert into Employee values('张莉','123456','')
insert into Employee values('李晓霜','456789','')

 

----在SalesInfo中添加数据
Update Ware set Amount=Amount-1 where Wname='高露洁牙膏'Insert into SalesInfo values(10010,'2009-10-2',1,1001)Update Ware set Amount=Amount-2 where Wname='霸王洗发水'Insert into SalesInfo values(10011,'2010-10-2',2,1002)     Update Ware set Amount=Amount-1 where Wname='微波炉'Insert into SalesInfo values(10013,'2009-11-2',1,1001)Update Ware set Amount=Amount-5 where Wname='脉动'Insert into SalesInfo values(10016,'2009-10-27',5,1002)Update Ware set Amount=Amount-1 where Wname='美的空调'Insert into SalesInfo values(10019,'2009-12-13',1,1001)