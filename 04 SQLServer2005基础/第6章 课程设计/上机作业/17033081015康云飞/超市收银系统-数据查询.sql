--商品数据查询

--查询商品利润
select wid 商品编号,wnam 商品名称,salesprice-purchaseprice 利润 from ware order by 利润 desc

--查询员工销售商品情况
select enam 员工姓名,wnam 商品名称,salesdate 销售日期,salesamount 销售数量,(salesprice-purchaseprice)*salesamount 盈利 
from salesinfo inner join ware on salesinfo.wid=ware.wid inner join employee on employee.eid=salesinfo.eid order by 盈利 desc

--统计每件商品的销售量，显示商品名称及销售量，按销售量从高到低排序
select wnam 商品名称,salesamount 销售数量 from ware inner join salesinfo on salesinfo.wid=ware.wid order by salesamount desc

--统计每件商品的销售量,显示商品类别及销售量
select tnam 商品类别,salesamount 销售数量 from salesinfo inner join ware on salesinfo.wid=ware.wid inner join category on ware.cid=category.cid

--统计每种商品到目前的盈利总额
select wnam 商品名称,(salesprice-purchaseprice)*salesamount 盈利 from ware inner join salesinfo on salesinfo.wid=ware.wid order by 盈利 desc

--查询销售量排在前三的商品
select top 3 wnam 商品名称,salesamount 销售数量 from ware inner join salesinfo on salesinfo.wid=ware.wid order by 销售数量 desc

--查询2017年的商品销售量排在前五的商品
select top 5 wnam 商品名称,sum(salesamount) 销售数量 from ware inner join salesinfo on salesinfo.wid=ware.wid 
where salesdate between '2017-01-01' and '2017-12-31' group by wnam order by 销售数量 desc
--等同于
select top 5 w.wnam 商品名称,sum(s.salesamount) 销售数量 from ware w,salesinfo s  
where s.wid=w.wid and s.salesdate between '2017-01-01' and '2017-12-31' group by w.wnam order by 销售数量 desc

--统计每个员工在2017年的销量
select e.enam 员工,sum(s.salesamount) 销售数量 from employee e,salesinfo s
where s.eid=e.eid and s.salesdate between '2017-01-01' and '2017-12-31' group by e.enam order by 销售数量 desc

--统计2017年的总利润
select sum((salesprice-purchaseprice)*salesamount) 总利润 from ware w,salesinfo s 
where s.wid=w.wid and s.salesdate between '2017-01-01' and '2017-12-31' 

--查询商品的商品类
select tnam 商品类别,wnam 商品名称 from ware inner join category on ware.cid=category.cid