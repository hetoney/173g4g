--查询商品类别表
select*from Category
--查询商品信息表
select*from ware
--查询员工表
select*from Employee
--查询销售记录表
select*from SalesInfo
--查询显示每件商品的编号、名称以及利润，按利润从高到低进行排序
select wid,wname,SalesPrice-PurchasePrice as 利润 from Ware order by 利润 desc
--统计每件商品的销售量，显示商品名称及销售量，按销售量从高到低排序
select Wname,sum(SalesAmount)as 销售量 from Ware a,SalesInfo b where a.wid=b.wid
group by Wname order by sum(SalesAmount) desc
--统计每类商品的销售量，显示商品类别及销售量
--分析：该问题涉及到Category、Ware、SalesInfo三个表，先连接再分组统计
select Cname,sum(SalesAmount) as 销售量 from Category c,Ware w,SalesInfo swhere c.Cid=w.Cid and w.Wid=s.Wid group by Cname order by sum(salesamount) desc
--统计每种商品到目前的盈利总额--分析：先连接Ware和SalesInfo表，从中得到商品名称、进价、售价及销售数量，结果中每条记录的销售额应表示为：select Wname,sum((SalesPrice-PurchasePrice)*SalesAmount) as 盈利总额from Ware w,SalesInfo swhere w.Wid=s.Wid group by Wname