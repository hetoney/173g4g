--查询显示每件商品的编号、名称以及利润，按利润从高到低进行排序
select Wid,Wname,SalesPrice-PurchasePrice as 利润 
from Ware
order by SalesPrice-PurchasePrice desc
select Wid,Wname,SalesPrice-PurchasePrice as 利润 
from Ware
order by SalesPrice-PurchasePrice desc

--统计每件商品的销售量，显示商品名称及销售量，按销售量从高到低排序
select Wname,sum(SalesAmount) AS '销售量'
from Ware w,SalesInfo s
where w.Wid=s.Wid group by Wname order by 销售量 desc

select w.Wname,sum(s.SalesAmount) AS '销售量'
from SalesInfo s
inner  join Ware w on w.Wid=s.Wid group by Wname order by 销售量 desc 

--统计每类商品的销售量，显示商品类别及销售
select c.Cname,sum(s.SalesAmount) AS '销售量'
from Ware w,SalesInfo s,Category c
where w.Wid=s.Wid and w.cid = c.cid group by Cname order by 销售量 desc

select c.Cname,sum(s.SalesAmount) AS '销售量'
from Ware w,SalesInfo s,Category c
where w.Wid=s.Wid and w.cid = c.cid group by Cname order by 销售量 desc
--统计每种商品到目前的盈利总额
select w.Wname,sum((SalesPrice-PurchasePrice)*SalesAmount) AS '盈利'
from Ware w,SalesInfo s
where w.Wid=s.Wid group by Wname order by 盈利 desc

