--查看表
select *from Category
select *from Ware
select *from Employee
select *from SalesInfo



--查询每件商品的编号、名称、单品利润，并按照单品利润排序
select wid,wname,SalesPrice-PurchasePrice 
as '利润'from ware order by '利润' desc
--统计每件商品的销售量，显示商品名称及销售量，按销售量从高到低排序
select w.wname,sum(s.SalesAmount) as '销售量'from ware w,Salesinfo s where w.wid=s.wid
group by wname order by '销售量' desc
--统计每类商品的销售量，显示商品类别及销售量
select c.Cname,sum(s.SalesAmount) as'销售量' from category c,ware w,salesinfo s where
 c.cid=w.cid and w.wid=s.wid group by cname
--统计每种商品到目前的盈利总额
select w.wname,sum((w.SalesPrice-w.PurchasePrice)*s.SalesAmount)as'盈利总额'
from ware w,salesinfo s where w.wid=s.wid group by wname
--收银员2号销售5件1号商品
update ware set Amount=Amount-5 where wid=1
insert into salesinfo values(1,'2011-2-12',5,1002)
--按照销售总额对收银员排序
select e.ename,sum((w.SalesPrice-w.PurchasePrice)*s.SalesAmount)as '销售总额'
from Employee e,ware w,salesinfo s where e.eid=s.eid and w.wid=s.wid
group by ename order by '销售总额' desc
--查询商品销售量排在前五名的商品名称及销售量
select top 5 w.wname,sum(s.SalesAmount) as'销售量' from ware w,salesinfo s 
where w.wid=s.wid group by wname order by'销售量' desc
--统计2011年的商品销售量拍在前五名的商品名称及销量
select top 5 w.wname,sum(s.SalesAmount) as'销售量' from ware w,salesinfo s 
where w.wid=s.wid and salesdate between'2011-1-1'and '2011-12-31' 
group by wname order by'销售量' desc
--统计每个员工在2011年的销量，显示员工名称及销售数量
select e.ename,sum(s.SalesAmount) as'销售数量' from salesinfo s,Employee e 
where e.eid=s.eid and s.salesdate between'2011-1-1'and '2011-12-31' 
group by e.ename order by '销售数量' desc
--统计2011年的总利润
select sum((w.SalesPrice-w.PurchasePrice)*s.SalesAmount)as'盈利总额'
from ware w,salesinfo s where w.wid=s.wid and s.salesdate between'2011-1-1'and '2011-12-31' 




