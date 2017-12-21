 --查询显示每件商品的编号、名称以及利润，按利SalesInfo润从高到低进行排序
select wid,wname,SalesPrice-PurchasePrice as 利润 from ware order by SalesPrice-PurchasePrice desc
--统计每件商品的销售量，显示商品名称及销售量，按销售量从高到低排序
select wname,sum(SalesAmount)as 销售量 from ware w, SalesInfo s 
where w.wid=s.wid group by wname order by sum(SalesAmount) desc
--统计每类商品的销售量，显示商品类别及销售量
select cname,sum(SalesAmount)as 销售量 from Category c,ware w,SalesInfo s
where c.cid=w.cid and w.wid=s.wid group by cname
--统计每种商品到目前的盈利总额
select wname,sum((SalesPrice-PurchasePrice)*SalesAmount)as 利润
from ware w,SalesInfo s
where w.wid=s.wid group by wname
--收银员1002号销售5件34945号商品
update ware set Amount=Amount-5 where wid=34945
insert into SalesInfo values('34945','2017-12-20','5','1002')
--按照销售总额对收银员排序
select ename,sum((SalesPrice-PurchasePrice)*SalesAmount)as 销售总额
from Employee e,SalesInfo s,ware w
where e.eid=s.eid and w.wid=s.wid
group by ename order by sum((SalesPrice-PurchasePrice)*SalesAmount)
--查询商品销售量排行在前五名的商品名称及销售量
select top 5 wname,sum(SalesAmount)as 销售量
from ware w,SalesInfo s
where w.wid=s.wid
group by wname order by sum(SalesAmount)desc
--统计2017-12-15~2017-12-18年销售量排行前五的商品名称及销售数量
select top 5 wname,sum(SalesAmount)as 销售量
from ware w,SalesInfo s
where w.wid=s.wid and s.SalesDate between'2017-12-15'and'2017-12-18'
group by wname order by sum(SalesAmount)desc
--统计每个员工的在2017的销售量,显示员工名称和销售数量
select ename,sum(SalesAmount)as 销售量
from Employee e,SalesInfo s
where e.eid=s.eid and s.SalesDate between'2017-01-01'and'2017-12-31'
group by ename order by 销售量
--统计2017年的利润
select sum((SalesPrice-PurchasePrice)*SalesAmount)as 总利润
from ware w,SalesInfo s
where w.wid=s.wid and SalesDate between'2017-01-01'and'2017-12-31'