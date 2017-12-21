--查询显示每件商品的编号、名称以及利润，按利润从高到低进行排序
select Wid as'编号',Wname as '商品名',SalesPrice-PurchasePrice as '利润'
from ware order by SalesPrice-PurchasePrice  desc
--统计每件商品的销售量，显示商品名称及销售量，按销售量从高到低排序
select  a.Wname as '商品名',sum(b.SalesAmount) as '销售量' from ware a, SalesInfo b
where a.wid=b.Widint  group by a.Wname   order by sum(b.SalesAmount) desc
--
select Wname,sum(SalesAmount) as '销售量'from ware w,SalesInfo swhere w.Wid=s.Widint group by Wname order by sum(SalesAmount) desc
--统计每类商品的销售量，显示商品类别及销售量
select Cname as '类别',sum(SalesAmount) as '销售量' from Category a,SalesInfo b, Ware c
where Widint=Wid and c.Cid=a.Cid group by Cname
--统计每种商品到目前的盈利总额
select Wname as '商品',sum((SalesPrice-PurchasePrice)*SalesAmount) as '盈利总额'
from ware ,SalesInfo where Wid=Widint group by Wname  

--收银员2号销售5见10号商品
update ware set Amount=Amount-5 where wid=19
insert into SalesInfo values(19,'2017-12-20',5,1002)
--按照销售总额对收银员排序
select Ename as '收银员',sum((SalesPrice-PurchasePrice)*SalesAmount) as '销售总额' from Employee,ware,Salesinfo 
where SalesInfo.Eid=Employee.Eid and Wid=Widint group by Ename  order by sum((SalesPrice-PurchasePrice)*SalesAmount) desc

--查询商品销售排前五的商品及售量
select top 50 percent Wname as '商品', sum(SalesAmount) as '售量' from ware,SalesInfo
where Wid=Widint group by Wname  order by sum(SalesAmount) desc
select top 5 Wname as '商品', sum(SalesAmount) as '售量' from ware,SalesInfo
where Wid=Widint group by Wname  order by sum(SalesAmount) desc
--统计2010年的销售量排前五的商品及售量
select top 5 Wname as '商品', sum(SalesAmount) as '售量' from ware,SalesInfo
where Wid=Widint group by Wname  order by sum(SalesAmount) desc