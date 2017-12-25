--查询商品编号，名称，单品，利润，并对单品进行排序
select wid 商品编号,Wname 名称 , SalesPrice-PurchasePrice 利润 
from Ware order by 利润 desc
--统计每件商品的销售量，显示商品名称和销售量 并从高到低排序
select w.Wname 商品名称,
sum(s.SalesAmount) as 销售量 from ware w,SalesInfo s
where w.wid=s.wid group by wname order by 销售量 desc
--统计每类商品的销售量,显示商品类别及销售量
select c.cname 类别, sum(s.SalesAmount) as 销售量
from Category c,ware w,SalesInfo s
where c.cid=w.cid and w.wid = s.wid group by cname
--统计每种商品到目前的盈利总额
select w.wname 商品名称,sum((w.SalesPrice-w.PurchasePrice)*salesamount) 
as 盈利总额 from ware w , SalesInfo s
where w.wid=s.wid group by Wname
--收银员2号销售5件1号商品
update ware set amount = amount-5 where wid='10011'
insert into SalesInfo values ('10011','2016-11-11','5','1002')
--按照销售总额对收银员排序
select e.ename 收银员名称,sum((w.SalesPrice-w.PurchasePrice)*salesamount) 
as 销售总额 from  Employee e ,SalesInfo s,ware w 
where e.eid=s.eid and w.wid= s.wid
group by e.ename order by 销售总额 desc
--查询商品销售量排在前五名的商品名称及销量
select top 5 w.wname 商品名称,sum(s.SalesAmount) 销量
from ware w,SalesInfo s 
where w.wid=s.wid
group by w.wname order by 销量 desc
--统计2017年的商品销量排在前五名的商品名称及销量'
select top 5 w.wname 商品名称,sum(s.SalesAmount) 销量
from ware w,SalesInfo s 
where w.wid=s.wid 
and s.salesdate between '2017-1-1' and '2017-12-31'
group by w.wname order by 销量 desc
--统计2017年 的商品销售量排在前五的商品名称及销量
select e.ename 员工名称,sum(s.SalesAmount) 销量
from Employee e,SalesInfo s
where e.eid=s.eid
and s.salesdate between '2017-1-1' and '2017-12-31'
group by e.ename order by 销量 desc
--统计2017年的总利润
select sum((w.SalesPrice-w.PurchasePrice)*salesamount) 总利润
from ware w,SalesInfo s 
where w.wid=s.wid and s.salesdate between '2017-1-1' and '2017-12-31'
select * from Category
select * from Ware
select * from Employee
select * from SalesInfo