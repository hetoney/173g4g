--添加商品类
insert into Category values('食品类','')
insert into Category values('生活类','')
insert into Category values('零食类','')
insert into Category values('服饰类','')
insert into Category values('电器类','')

--添加商品信息
insert into ware values('高露洁牙膏','2','4.50','5.58','231')
insert into ware values('田七牙膏','2','1.80','2.27','120')
insert into ware values('黑妹牙膏','2','2.60','4.20','96')
insert into ware values('海飞丝洗发水','2','8.10','12.30','103')
insert into ware values('飘柔洗发水','2','12.70','15.90','56')
insert into ware values('霸王洗发水','2','19.40','26.90','65')
insert into ware values('卫生纸','2','4.50','5.58','231')
insert into ware values('牙刷','2','4.50','5.58','150')
insert into ware values('辣条','1','4.50','5.58','100')
insert into ware values('短袖','4','50','70','50')

--添加员工信息
insert into Employee values('张少博','123456','')
insert into Employee values('韩庆武','654321','')
insert into Employee values('李晓楠','456123','')

--添加销售记录表
Insert into SalesInfo values('1','2017-12-19','1','1001')
Update Ware set Amount=Amount-1 where Wid='1'
insert into Salesinfo values('2','2017-12-18','5','1002')
Update Ware set Amount=Amount-5 where Wid='2'
insert into Salesinfo values('10','2017-12-18','2','1002')
Update Ware set Amount=Amount-2 where Wid='10'
insert into Salesinfo values('7','2017-12-18','3','1002')
Update Ware set Amount=Amount-3 where Wid='7'
insert into Salesinfo values('9','2017-12-18','4','1002')
Update Ware set Amount=Amount-4 where Wid='9'







select*from Category
select*from ware
select*from SalesInfo
select*from Employee
