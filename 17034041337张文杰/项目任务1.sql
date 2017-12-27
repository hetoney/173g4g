Update Ware set Amount=Amount-1 where Wname='饼干'Insert into SalesInfo values(10010,'2009-10-2',1,1001)
Update Ware set Amount=Amount-1 where Wname='辣条'Insert into SalesInfo values(10011,'2009-12-2',3,1002)
Update Ware set Amount=Amount-1 where Wname='空调'Insert into SalesInfo values(10012,'2009-10-2',1,1001)
--查询每件商品的编号,名称,单品利润,并按照单品利润排序
select wid,wname,SalesPrice-PurchasePrice as 利润 from ware order by 利润 desc
--统计每件商品的销售量，显示商品名称及销售量，按销售量从高到低排序
select  w.wname,sum(s.SalesAmount) as 销售量 
from ware w,SalesInfo s
where w.wid=s.wid 
group by wname order by 销售量 desc

--统计每类商品的销售量，显示商品类别及销售量
select Cname,sum(SalesAmount) as 销售量 from Category c,Ware w,SalesInfo swhere c.Cid=w.Cid and w.Wid=s.Wid group by Cname--统计每种商品到目前的盈利总额select wname,sum((SalesPrice-PurchasePrice)*SalesAmount) as 盈利总额from ware w,SalesInfo swhere w.Wid=s.Wid group by Wname