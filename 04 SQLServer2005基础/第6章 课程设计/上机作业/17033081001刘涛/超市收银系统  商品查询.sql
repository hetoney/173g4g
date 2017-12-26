--查询每件商品的编号，名称，单品利润，并按照单品利润排序
select Wid,Wname,SalesPrice-PurchasePrice as 利润 from Ware order by 利润 desc

--统计每件商品的销售量，显示商品名称和销售量，按销售量从高到低排序
select Wname 商品名称,SalesAmount 销售量 
from Ware inner join Saleslnfo on Ware.Wid=Saleslnfo.wid order by SalesAmount desc
--统计每类商品的销售量，显示商品类别和销售量
select  name 商品类别,SalesAmount  销售量 
from Category inner join Ware on Category.cid =Ware.cid inner join Saleslnfo on 
Ware.Wid=Saleslnfo.wid order by SalesAmount desc
--统计每种商品到目前的盈利总额
select Wname 商品名称, PurchasePrice 商品进价, SalesPrice 商品售价 , SalesAmount 销售量, 
(SalesPrice-PurchasePrice)*(SalesAmount)  总利润 from Ware inner join  Saleslnfo on
Ware.Wid=Saleslnfo.Wid order by Wname desc
 --收银员2号销售5件1号商品 
update Ware set Amount=Amount-5 where Wid =1
insert into Saleslnfo(Wid, Eid, SalesDate, SalesAmount)values(1,1002,'2017-12-19',5)

--按照销售总额对收银员排序
select  Ename 员工, PurchasePrice 商品进价, SalesPrice 商品售价 , SalesAmount 销售量, 
(SalesPrice-PurchasePrice)*(SalesAmount)  总利润 from  Saleslnfo inner join Ware on Ware.Wid=Saleslnfo.Wid inner join 
   Employee on  Saleslnfo.Eid=Employee.Eid order by 总利润 desc

--查询商品销售量排在前五名的商品名称及销量

select top 5 Wname 商品名称,SalesAmount 销售量 from Ware inner join  Saleslnfo on
Ware.Wid=Saleslnfo.Wid order by 销售量 desc
--统计2010年的商品销售量排在前五名的商品名称及销量
select  top 5 Wname 商品名称,sum(SalesAmount) 销售量 from Ware inner join  Saleslnfo on
Saleslnfo.Wid=Ware.Wid where SalesDate between '2017-01-19' and '2017-12-19' group by Wname  order by 销售量 desc
--统计每个员工在2010年的销售量，显示员工名称及销售量
select Ename 员工姓名, SalesAmount 销售量 from Employee inner join Saleslnfo on Employee.Eid=Saleslnfo.Eid  
where  SalesDate between '2017-01-19' and '2017-12-19'  order by  销售量 desc

--统计2010年的总利润
select sum((SalesPrice-PurchasePrice)*SalesAmount) 总利润 from Ware inner join Saleslnfo on  Saleslnfo.Wid=Ware.Wid 
where SalesDate between '2017-01-19' and '2017-12-19'   
