--查询每件商品的编号，名称，单品利润，并按照单品利润排序
select Wid,Wname, SalesPrice-PurchasePrice as 利润 from Ware order by SalesPrice-PurchasePrice desc
--统计每件商品的销售量，显示商品名称及销售量，按照销售量从高到低排序
select Wname,sum(SalesAmount)as 销售量 from Ware w,SalesInfo s
where w.Wid=s.Wid group by Wname order by sum(SalesAmount)desc
--统计每类商品的销售量，显示商品类别及销售量
select Cname,sum(SalesAmount)as 销售量 from Category c,Ware w,SalesInfo s
where c.Cid=w.Cid and w.Wid=s.Wid group by Cname
--统计每种商品到目前的盈利总额select Wname,sum((SalesPrice-PurchasePrice)*SalesAmount) as 盈利总额from Ware w,SalesInfo swhere w.Wid=s.Wid group by Wname
