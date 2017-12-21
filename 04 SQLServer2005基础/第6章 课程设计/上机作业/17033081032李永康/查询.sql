--利润
select wid, wname,salesprice-purchaseprice as '利润'from Ware order by '利润'desc  
--统计每件商品的销售量，显示商品名称及销售量，按销售量从高到低排序
select W.wname,sum(S.SalesAmount)as'销售量'from ware W,salesinfo S where W.wid=S.wid group by wname order by '销售量' desc
--统计每件商品的销售量，显示商品类别及销售量
select c.cname,sum(s.SalesAmount)as'销售量' from Category c,ware w,SalesInfo s where w.cid=c.cid and s.wid=w.wid group by cname
--统计每种商品到目前的盈利总额
select w.wname,sum((w.salesprice-w.purchaseprice)*s.SalesAmount)as'盈利总额'from ware w,SalesInfo s where w.wid=s.wid group by wname
--收银员二号销售5件1号商品
update ware set Amount=Amount-5 where wid=1
insert into SalesInfo values(1,'2017-9-07',5,1002)
--按照销售总额对收银员排序
select e.ename,sum((w.salesprice-w.purchaseprice)*s.SalesAmount)as'销售总额'from Employee e,SalesInfo s ,ware w where e.eid=s.eid and w.wid=s.wid group by
e.ename order by '销售总额'desc
--查询商品销售量排在前五名的商品名称及销售
select top 5 w.wname,sum(s.SalesAmount)as'销量'
from ware w,SalesInfo s where w.wid=s.wid
group by  w.wname order by '销量'desc
--统计2010年的商品销售量排在前5名的商品名称及销量
select top 5 w.wname,sum(s.SalesAmount)as'销量'
from ware w,SalesInfo s
where w.wid=s.wid and s.salesdate between '2017-03-07'and'2017-09-07'group by w.wname order by '销量'desc
--统计每个员工在2017年的销量，显示员工名称及销售数量
select e.Ename,sum(s.SalesAmount)as'销量'
from Employee e,SalesInfo s where e.eid=s.eid and s.salesdate between'2017-01-01'and'2017-12-31'group by e.ename order by '销量'desc
--2017年的总利润
select sum((w.salesprice-w.purchaseprice)*s.SalesAmount)as'总利润'
from ware w,SalesInfo s
where w.wid=s.wid and s.salesdate between'2017-01-01'and'2017-12-31'