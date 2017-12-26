--查询
select wid,Wname,SalesPrice-purchaseprice  as 利润  from ware order by 利润 desc 
---查询销售量
select w.Wname,sum(s.SalesAmount)as'销售量'
from Ware w,Salesinfo s
where w.wid = s.wid  group by Wname order by  '销售量'     desc

--统计每类商品的销售量，显示商品类别及销售量
select c.Cname,sum(s.SalesAmount) as  销售量
from Category c, Salesinfo s,Ware w
where c.Cid=w.Cid and w.Wid=s.Wid   
group by Cname

--		统计每种商品到目前的盈利总额
select Wname ,sum((SalesPrice-purchaseprice)*SalesAmount) as 盈利总额
from Ware w, Salesinfo s
where s.wid=w.wid group by Wname
--按照销售总额对收银员排序
select Ename ,sum((SalesPrice-PurchasePrice)*SalesAmount)as 销售总额
from Employee e,Salesinfo s,Ware w
where e.Eid= s.Eid and s.Wid= w.Wid
group by   Ename  order by 销售总额 desc
--查询商品销售量排在前五名的商品名称及销量
select top 5 Wname,sum(SalesAmount) as 销量
from Ware w,Salesinfo s
where w.wid=s.wid group by Wname
order by 销量 
--统计2017年的商品销售量排在前五名的商品名称及销量
select top 5 Wname,sum(SalesAmount) as 销量
from Ware w,Salesinfo s
where w.wid=s.wid and s.Salesdate between '2017-01-01' and'2017-12-31'
group by Wname order by 销量 desc
---统计每个员工在2017年的销量，显示员工名称及销售数量
select Ename,sum(SalesAmount) as 销量
from Ware w,Salesinfo s,Employee e
where s.Eid=e.Eid and s.Salesdate between '2017-01-01' and'2017-12-31'
group by Ename order by 销量 desc
--统计2017年的总利润
select sum((SalesPrice-purchaseprice)*SalesAmount) from Salesinfo s ,Ware w
where s.Wid=w.Wid and s.Salesdate between '2017-01-01' and'2017-12-31'








