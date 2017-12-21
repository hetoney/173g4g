--插商品数据
insert into Category(Cname,Description)values('食品类','')
insert into Category(Cname,Description)values('生活类','')
insert into Category(Cname,Description)values('学习类','')
insert into Category(Cname,Description)values('体育类','')
insert into Category(Cname,Description)values('电器类','')
--插入商品信息
insert into Ware(Wname,Cid,PurchasePrice,SalesPrice,Amount)values('双汇火腿肠',1,60,90,500)
insert into Ware(Wname,Cid,PurchasePrice,SalesPrice,Amount)values('优乐美',1,30,60,700)
insert into Ware(Wname,Cid,PurchasePrice,SalesPrice,Amount)values('毛巾',2,6,15,100)
insert into Ware(Wname,Cid,PurchasePrice,SalesPrice,Amount)values('黑人牙膏',2,20,30,300)
insert into Ware(Wname,Cid,PurchasePrice,SalesPrice,Amount)values('笔记本',3,6,14,200)
insert into Ware(Wname,Cid,PurchasePrice,SalesPrice,Amount)values('钢笔',3,30,127,500)
insert into Ware(Wname,Cid,PurchasePrice,SalesPrice,Amount)values('篮球',4,90,230,400)
insert into Ware(Wname,Cid,PurchasePrice,SalesPrice,Amount)values('羽毛球',4,23,40,900)
insert into Ware(Wname,Cid,PurchasePrice,SalesPrice,Amount)values('美的空调',5,5789,7890,20)
insert into Ware(Wname,Cid,PurchasePrice,SalesPrice,Amount)values('液晶电视',5,2346,5678,40)
--插入员工信息
insert into Employee(Ename,Epassword,Remark)values('吴亦凡','666666','员工')
insert into Employee(Ename,Epassword,Remark)values('张一山','234567','员工')
--插入销售记录
insert into SalesInfo values('1','2017-3-07','60','1001')
insert into SalesInfo values('2','2017-2-07','56','1002')
insert into SalesInfo values('3','2017-9-07','60','1001')
insert into SalesInfo values('4','2017-4-07','46','1002')
insert into SalesInfo values('5','2017-7-07','12','1001')
--查询
select*from Category
select*from Ware
select*from Employee
select*from SalesInfo

--删除

