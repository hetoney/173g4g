--查询数据 
select*from Category
select*from Employee
select*from Saleslnfo
select*from Ware

insert into Category values('食品类','吃的')
insert into Category values('生活用品类','用的')
insert into Category values('家具类','看的')
insert into Category values('电器类','钢的')
insert into Category values('玩具类','玩的')

insert into	Ware values('面包',1,5,10,200)
insert into	Ware values('辣条',1,5,10,200)
insert into	Ware values('电脑',4,5,10,200)
insert into	Ware values('香肠',1,5,10,200)
insert into	Ware values('鸡蛋',1,5,10,200)
insert into	Ware values('香蕉',1,5,10,200)
insert into	Ware values('苹果',1,5,10,200)
insert into	Ware values('钢',1,4,10,200)
insert into	Ware values('巧克力',1,5,10,200)
insert into	Ware values('柚子',1,5,10,200)

insert into Employee values('张文杰',12012030,'哈哈')
insert into Employee values('王腾飞',11020030,'哈哈')



--添加销售记录表数据信息
--同时修改库存数据
Update Ware set Amount=Amount-1 where Wname='面包'Insert into Saleslnfo values(10010,'2009-10-2',1,1001)Update Ware set Amount=Amount-2 where Wname='辣条'Insert into Saleslnfo values(10011,'2009-11-2',2,1002) --查询每件商品的编号，名称，单品利润，并按照单品利润排序
select Wid,Wname,SalesPrice-PurchasePrice as 利润 from ware order by 利润 desc
--统计每件商品的销售量，显示商品名称及销售量，按销售量从高到低排序
select w.Wname,sum(s.SalesAmount)as 销售量 
from ware w,Saleslnfo s
where w.wid=s.wid 
group by wname order by 销售量 desc
--统计每类商品的销售量，显示商品类别及销售量
select Cname,sum(SalesAmount) as 销售量 from Category c,Ware w,Saleslnfo swhere c.Cid=w.Cid and w.Wid=s.Wid group by Cname--统计每种商品到目前的盈利总额select wname,sum((SalesPrice-PurchasePrice)*SalesAmount) as 盈利总额from ware w,Saleslnfo swhere w.wid=s.wid group by wname