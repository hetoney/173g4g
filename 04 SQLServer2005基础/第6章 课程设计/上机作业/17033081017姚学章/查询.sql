
--查询每件商品的编号、名称、单品利润，并按照单品利润排序
select wid,Wname,SalesPrice-PurchasePrice as 利润 from Ware order by 利润 desc

--统计每件商品的销售量，显示商品的名称及销售量，并按照销售量从高到低排序
select w.Wname,sum(s.SalesAmount) as 销售量 from Ware w,SalesInfo s
where w.wid=s.wid group by Wname order by 销售量 desc

---统计每类商品的销售量，显示商品的名称及销售量
select t.Cname,sum(s.SalesAmount) as 销售量 from Category t,Ware w,SalesInfo s
where t.Cid =w.Cid and w.wid=s.Wid group by Cname

--统计每种商品到目前的盈利总额
select w.Wname,sum((w.SalesPrice-w.PurchasePrice)*s.SalesAmount) as 盈利总额
from Ware w,SalesInfo s where w.Wid=s.Sid group by Wname

--收银员2号销售5件1号商品
update Ware set Amount=Amount-5 where Wid=1
insert into SalesInfo values(1,'2012-06-30',5,1001)

select*from SalesInfo

--按照销售总额对收银员排序
select e.Ename,sum((w.SalesPrice-w.PurchasePrice)*s.SalesAmount) as 销售总额
from Employee e, Ware w,SalesInfo s where e.Eid=s.Eid and w.Wid=s.Sid
group by e.Ename order by 销售总额 desc

--查询商品销售量排在前五名的商品名称及销量
select top 5 w.Wname,sum(s.SalesAmount) 销量 from Ware w,SalesInfo s where w.Wid=s.Wid
group by w.Wname order by 销量 desc

--统计2017年的商品销售量排在前五名的商品名称及销量
select top 5 w.Wname,sum(s.SalesAmount) 销量 from Ware w,SalesInfo s where w.Wid=s.Wid and s.SalesDate between'2017-01-01'and'2017-12-31'
group by w.Wname order by 销量 desc

--统计每个员工在2017年的销量，显示员工名称及销售量
select top 5 e.Ename,sum(s.SalesAmount) 销量 from Employee e, Ware w,SalesInfo s where e.Eid=s.Eid and s.SalesDate between'2017-01-01'and'2017-12-31'
group by e.Ename order by 销量 desc

--统计2017年的总利润
select sum((w.SalesPrice-w.PurchasePrice)*s.SalesAmount) from Ware w,SalesInfo s where w.Wid=s.Wid and s.SalesDate between'2017-01-01'and'2017-12-31'

