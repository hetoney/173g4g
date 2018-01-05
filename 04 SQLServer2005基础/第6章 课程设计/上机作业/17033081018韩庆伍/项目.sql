select*from Category
select*from Ware
select*from Employee
select*from Saleslnfo
--给Category添加数据
insert into Category values('食品类','吃的')
insert into Category values('文具类','学习')
insert into Category values('生活用品','洗漱')
insert into Category values('玩具类','玩的')
insert into Category values('蔬菜类','吃的')


--给Ware添加数据
insert into Ware values('0001','饼干','1','2.50','3.40','500')
insert into Ware values('0002','巧克力','1','5','10','5000')
insert into Ware values('0003','黑人牙膏','3','20.1','25','500')
insert into Ware values('0004','小汽车','4','70','140','500')
insert into Ware values('0005','白菜','5','2','3','100')
insert into Ware values('0006','三角板','2','1','2','500')
insert into Ware values('0007','五子棋','4','4','5','500')
insert into Ware values('0008','胡萝卜','5','1','2','500')
insert into Ware values('0009','洗头膏','3','50','60','500')
insert into Ware values('0010','鱼','1','40','50','50')

--给Employee添加数据
insert into Employee values('李国梁','111111','黑，来自山西，不会打代码')
insert into Employee values('郭金改','222222','女，来自河南，腿短真好')

--给Saleslnfo添加数据
Update Ware set Amount=Amount-1 where Wname='饼干'Insert into Saleslnfo values(0001,'2009-10-2',1,1001)Update Ware set Amount=Amount-1 where Wname='巧克力'Insert into Saleslnfo values(0002,'2009-10-2',20,1001)Update Ware set Amount=Amount-1 where Wname='鱼'Insert into Saleslnfo values(0010,'2008-10-2',10,1002)Update Ware set Amount=Amount-1 where Wname='洗头膏'Insert into Saleslnfo values(0009,'2015-10-2',5,1001)Update Ware set Amount=Amount-1 where Wname='三角板'Insert into Saleslnfo values(0006,'2007-10-2',9,1002)


--查询利润
select Wid,Wname,SalesPrice-PurchasePrice as 利润 from Ware order by 利润 desc
--查询销售量
select Wname,sum(SalesAmount) as 销售量 from Ware W,Saleslnfo S
where W.Wid = S.Wid group by Wname order by 销售量 desc

--统计每类商品的销售量，显示商品类别及销售量
select Cname,sum(SalesAmount) as 销售量
from Category C,Ware W,Saleslnfo S
where C.Cid = W.Cid and W.Wid = S.Wid group by Cname
--统计到目前的盈利总额
select Wname,sum()