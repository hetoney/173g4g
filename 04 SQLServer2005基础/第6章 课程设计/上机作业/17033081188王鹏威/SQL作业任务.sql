--1.查询利润,单品利润=售价-进价
select Wid,Wname,SalesPrice-PurchasePrice as 利润
 from Ware order by 利润 desc
--2.查询销售量
select w.wname,sum(s.SalesAmount) as 销售量 from Ware w,SalesInfo s where w.Wid=s.Wid group by Wname order by 销售量 desc
--3.问题涉及到types\ware\salesinfo
select c.Cname,sum(s.SalesAmount)as 销售量 from Category c,Ware w,SalesInfo s where c.Cid=w.Cid and w.Wid=s.Wid group by Cname
--4.每种商品到目前的盈利总额
select w.Wname,sum((SalesPrice-PurchasePrice)*s.SalesAmount)as 盈利总额 from Ware w,SalesInfo s where w.Wid=s.Wid group by Wname
--5.收银员1001销售了5件1号商品(分两步走)
update Ware set Amaount=Amaount -5 where Wid='40001'insert into SalesInfo(Wid,Eid,SalesDate,SalesAmount)values('40001','1001','2016-2-27','5')
--6.按销售总额对收银员排序
select e.Ename,sum((SalesPrice-PurchasePrice)*s.SalesAmount) as
销售总额 from Employee e ,SalesInfo s,Ware w where e.Eid=s.Eid and
w.Wid=s.Wid group by e.Ename order by 销售总额 desc
--7.查询排名前三名的商品名称及销量
select top 3 w.Wname,sum(s.SalesAmount)销量 from Ware w,SalesInfo s where w.Wid=s.Wid group by w.Wname order by 销量desc
--8.统计2016年的前二名的商品名称及销量
select top 2 w.Wname,sum(SalesAmount)销量 from Ware w,
SalesInfo s where w.Wid=s.Wid and s.SalesDate between '2016-1-1'
and '2016-12-31' group by w.Wname order by 销量 desc 
--9.统计每个员工在2016年的销量，显示员工名称
select e.Ename,sum(s.SalesAmount)销量 from Employee e,SalesInfo
s where e.Eid=s.Eid and s.SalesDate between '2016-1-1'and'2016-12-31'group by e.Ename
order by 销量 desc
--10.统计2016年的总利润
select sum((w.SalesPrice-w.PurchasePrice)*s.SalesAmount) from
Ware w,SalesInfo s where w.Wid=s.Wid and s.SalesDate between '2016-1-1'and '2016-12-31'