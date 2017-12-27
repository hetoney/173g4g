--查看数据表
select*from Category
select*from Ware
select*from Employee
select*from SalesInfo
--商品类别
insert into Category(Cname,Description) values('生活类','生活用品就找我')
insert into Category (Cname,Description)values('食品类','食物用品就找我')
insert into Category(Cname,Description) values('四大名著类','书籍用品就找我')
insert into Category (Cname,Description)values('服装类','衣服用品就找我')
--商品信息
insert into Ware(Wid,Wname,Cid,PurchasePrice,SalesPrice,Amaount) values('40001','黑人牙膏','1','45','55','50')
insert into Ware(Wid,Wname,Cid,PurchasePrice,SalesPrice,Amaount) values('40002','大米饭盖饭','2','3','5','60')
insert into Ware(Wid,Wname,Cid,PurchasePrice,SalesPrice,Amaount) values('40003','《水浒传》','3','1','2','70')
insert into Ware(Wid,Wname,Cid,PurchasePrice,SalesPrice,Amaount) values('40004','《红楼梦》','3','45','55','80')
insert into Ware(Wid,Wname,Cid,PurchasePrice,SalesPrice,Amaount) values('40005','《三国演义》','3','45','55','90')
insert into Ware(Wid,Wname,Cid,PurchasePrice,SalesPrice,Amaount) values('40006','发胶','1','25','32','45')
insert into Ware(Wid,Wname,Cid,PurchasePrice,SalesPrice,Amaount) values('40007','耐克鞋','4','45','55','60')
insert into Ware(Wid,Wname,Cid,PurchasePrice,SalesPrice,Amaount) values('40008','风衣','4','405','425','70')
insert into Ware(Wid,Wname,Cid,PurchasePrice,SalesPrice,Amaount) values('40009','OPPO R11','1','4321','5565','80')
insert into Ware(Wid,Wname,Cid,PurchasePrice,SalesPrice,Amaount) values('40010','炫彩羽绒服','1','225','245','90')
insert into Ware(Wid,Wname,Cid,PurchasePrice,SalesPrice,Amaount) values('40011','牛肉顿羊汤','2','8','10','100')
--员工信息
insert into Employee(Ename,Epassword)values('张杰','woainid')
insert into Employee(Ename,Epassword)values('邓紫棋','diniiaow')
insert into Employee(Ename,Epassword)values('孙燕姿','woaidni')
insert into Employee(Ename,Epassword)values('陈旭','woaidnis')
insert into Employee(Ename,Epassword)values('薛之谦','wwadjwa')
--销售记录
insert into SalesInfo(Wid,SalesDate,SalesAmount,Eid)values('40001','2016-9-10','10','1002')
insert into SalesInfo(Wid,SalesDate,SalesAmount,Eid)values('40011','2015-12-11','30','1003')
insert into SalesInfo(Wid,SalesDate,SalesAmount,Eid)values('40006','2016-4-22','8','1004')

