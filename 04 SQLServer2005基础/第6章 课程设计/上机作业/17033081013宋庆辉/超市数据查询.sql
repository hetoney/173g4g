--数据查询 一
--查询每件商品的编号，名称，单品利润，并按照利润排序
--降序
select Wid,Wname,SalesPrice-PurchasePrice AS 利润 from Ware order by 利润 desc
--升序
select Wid,Wname,SalesPrice-PurchasePrice AS 利润 from Ware order by 利润 
--统计每件商品的销售量，显示商品名称以及销售量，按销售量重高到底排序
--商品名称在Ware表里，销售量在Saleslnfo表里，
--group by   分组
select w.Wname,sum(s.SalesAmount) AS 销售量
 from ware  w ,SalesInfo s       
where  w.Wid=s.Wid group by Wname order by Wname desc

select w.Wname, sum(s.SalesAmount) as 销售量
from Ware w, SalesInfo s
where w.wid=s.wid group by wname order  by wname desc
--统计每类商品的销售量，显示商品类别及销售量
--从高到低排序
select w.Cname, sum(s.SalesAmount) as 销售量
from  Category w, Ware a, SalesInfo s
where w.Cid=a.Wid  and a.Wid=s.Wid group by Cname  
order by sum(s.SalesAmount) desc
--统计每件商品额盈利额，
--链接Ware 和 SalesInfo 表
--从中得到商品名称、进价、售价及销售数量，
--结果中每条记录的销售额应表示为：-- SalesPrice-PurchasePrice)*SalesAmount
select Wname,sum((SalesPrice-PurchasePrice)*SalesAmount) as 盈利额
from Ware w,SalesInfo s
where w.wid=s.wid group by wname  order by wname
--收银员1002销售5件1好商品
insert into SalesInfo values('1','2016-7-6','5','1002')
Update Ware set Amount=Amount-5 where wid='1'
--按照销售总额对销售员排序
select e.Ename,sum((w.SalesPrice-w.PurchasePrice)*s.SalesAmount) as 销售总额
from Employee e,  SalesInfo s,Ware w
where  e.Eid=s.Wid and w.Wid =s.Wid
group by e.Ename  order by 销售总额   desc
--查询商品销售排在前五名的商品名称及销量
--top  取前五
--select top 5
select  w.Wname,sum(s.SalesAmount)  销量
from Ware w, SalesInfo s
where w.Wid=s.Wid group by w.Wname order by 销量 desc
--统计2017年-05-06到2017-09-09商品销售量排在前五名的商品名称以及销量
select w.Wname,sum(s.SalesAmount) 销量
from Ware w,SalesInfo s
where w.Wid=s.Wid 
and s.SalesDate between '2017-05-06'and'2017-09-09'
group by w.Wname order by 销量 desc
--不排序
select Wname,SalesAmount
from Ware w,SalesInfo s
where w.Wid=s.Wid and s.SalesDate between'2017-05-06'and'2017-09-09'
--统计每个员工在2010年的销量,显示员工名称以及销售数量
--单个
select Ename,SalesAmount
from Employee e,SalesInfo s
where e.Eid=s.Eid
--总共销售
select e.Ename,sum(s.SalesAmount)  as 销量
from Employee e,SalesInfo s
where e.Eid=s.Eid group by e.Ename order by 销量 desc
--按时间段销售
select e.Ename,sum(s.SalesAmount)  as 销量
from Employee e,SalesInfo s
where e.Eid=s.Eid 
and s.SalesDate between
'2017-05-06'and'2017-09-09'group by e.Ename order by 销量 desc
--统计2010年的总利润
select sum((SalesPrice-PurchasePrice)*SalesAmount) as 盈利额
from ware w,SalesInfo s
where w.wid=s.Wid and s.SalesAmount between'2017-01-01'and'2017-12-31'






