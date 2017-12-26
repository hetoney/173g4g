--收银员2号销售5件1号商品
Update Ware set Amount=Amount-110 where Wname='黑人牙膏'
insert into SalesInfo values(100015,'2011-07-11',110,1001)
select*from Ware
select*from SalesInfo

--按照销售总额对收银员排序
select e.Ename,sum((SalesPrice-PurchasePrice)*SalesAmount) as 销售总额
from SalesInfo s,Employee e,Ware w
where e.Eid = s.Eid and w.Wid = s.Wid group by e.Ename

--查询商品销售量排名在前五名的商品名称及销量
select top 5 w.Wname,sum(s.SalesAmount) as 销量
from SalesInfo s,Ware w
where w.Wid = s.Wid group by Wname order by 销量 desc

--统计2011年商品销售量拍在前五名的商品名称及销量
select top 5 w.Wname,sum(s.SalesAmount) as 销量
from SalesInfo s,Ware w
where w.Wid = s.Wid and s.SalesDate between '2011-01-01'and '2011-12-31' group by Wname order by 销量 desc

--统计每个员工在2011年的销量，显示员工名称及销售数量
select  e.Ename,sum(s.SalesAmount) as 销量
from SalesInfo s,Employee e
where s.Eid = e.Eid and s.SalesDate between '2011-01-01'and '2011-12-31' group by Ename order by 销量 desc

--统计2011年的总利润
select sum((SalesPrice-PurchasePrice)*SalesAmount) as '2011销售利润'
from SalesInfo s,Employee e,Ware w
where e.Eid = s.Eid and s.SalesDate between '2011-01-01'and '2011-12-31'