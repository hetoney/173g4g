Select  *from Employee
Select  *from Category
Select  *from Ware
select* from SalesInfo
--添加数据
--商品类别
insert  into  Category(Cname,Description)  values  ('生活类','非常好')
insert  into  Category(Cname,Description)  values  ('食品类','非常好')
insert  into  Category(Cname,Description)  values  ('服饰类','非常好')
insert  into  Category(Cname,Description)  values  ('洗化类','非常好')
insert  into  Category(Cname,Description)  values  ('零食类','非常好')
--商品添加
insert  into Ware  values('可口可乐','1','2','3','100')
insert  into Ware  values('薯片','1','3','4','50')
insert  into Ware  values('Nike','2','100','500','30')
insert  into Ware  values('阿道夫洗发水','3','50','80','50')
insert  into Ware  values('黑人牙膏','2','4','8','35')
insert  into Ware  values('咸菜','5','1','3','10')
insert  into Ware  values('oppo手机','5','2000','2900','10')
insert  into Ware  values('上好佳','2','2','3','75')
insert  into Ware  values('卫生纸','1','10','13','21')
insert  into Ware  values('卫衣','3','18','81','17')

--添加员工表
insert   into  Employee(Ename,Epassword,Remark) values ('黄胜利','huangsheng','')
insert   into  Employee(Ename,Epassword,Remark) values ('张少博','zhangshao','')
insert   into  Employee(Ename,Epassword,Remark) values ('马慧政','mahuizheng','')

--销售商品
insert  into  SalesInfo(Wid,SalesDate,SalesAmount,Eid) values('1','2017-12-19','2','1002')
insert  into  SalesInfo(Wid,SalesDate,SalesAmount,Eid) values('4','2017-12-18','1','1003')
insert  into  SalesInfo(Wid,SalesDate,SalesAmount,Eid) values('8','2017-12-17','5','1001')
insert  into  SalesInfo(Wid,SalesDate,SalesAmount,Eid) values('10','2017-12-16','4','1003')
insert  into  SalesInfo(Wid,SalesDate,SalesAmount,Eid) values('7','2017-12-15','7','1002')


