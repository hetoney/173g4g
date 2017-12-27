--
--添加商品类
insert into Category values('食品类','品种多样 好吃不贵')
insert into Category values('生活用品类','品种多样 只要9.99就能带回家')
insert into Category values('电器类','品质可靠,三天包换')
insert into Category values('保健类','用了还想用')
insert into Category values('服饰类','穿出你的人生！')



--添加商品信息
insert into Ware (Wname,cid,PurchasePrice,SalesPrice,Amount)values('双汇火腿','1','20','500','120')
insert into Ware (Wname,cid,PurchasePrice,SalesPrice,Amount)values('高露洁牙膏','2','15','260','700')
insert into Ware (Wname,cid,PurchasePrice,SalesPrice,Amount)values('德州牛肉','1','40','750','100')
insert into Ware (Wname,cid,PurchasePrice,SalesPrice,Amount)values('迷你电锅','3','12','195','80')
insert into Ware (Wname,cid,PurchasePrice,SalesPrice,Amount)values('32G U盘','3','15','350','350')
insert into Ware (Wname,cid,PurchasePrice,SalesPrice,Amount)values('脑黄金','4','85','888','220')
insert into Ware (Wname,cid,PurchasePrice,SalesPrice,Amount)values('耐克运动鞋','5','400','120','450')
insert into Ware (Wname,cid,PurchasePrice,SalesPrice,Amount)values('一根柴','4','5','555','520')
insert into Ware (Wname,cid,PurchasePrice,SalesPrice,Amount)values('滑板','2','50','210','150')
insert into Ware (Wname,cid,PurchasePrice,SalesPrice,Amount)values('优乐美奶茶','4','18','1','3500')



--添加员工信息
insert into Employee(Ename ,Epassword,Remark)values('康云飞','12134567','大唐经理')
insert into Employee(Ename ,Epassword,Remark)values('刘梦祥','7654321','优秀员工')
insert into Employee(Ename ,Epassword,Remark)values('刘虎','5556663','优秀员工')
insert into Employee(Ename ,Epassword,Remark)values('王亚飞','6665553','优秀员工')
insert into Employee(Ename ,Epassword,Remark)values('王鹏威','1111111','优秀员工')
insert into Employee(Ename ,Epassword,Remark)values('李永奇','1111112','普通员工')
insert into Employee(Ename ,Epassword,Remark)values('李大嘴','1111113','优秀厨师')
insert into Employee(Ename ,Epassword,Remark)values('王大','1111111','普通厨师')


--添加销售记录信息
insert into Saleslnfo(Wid, Eid, SalesDate, SalesAmount)values(1,1001,'2017-12-19',260)
insert into Saleslnfo(Wid, Eid, SalesDate, SalesAmount)values(2,1002,'2017-12-19',150)
insert into Saleslnfo(Wid, Eid, SalesDate, SalesAmount)values(3,1003,'2017-12-19',260)
insert into Saleslnfo(Wid, Eid, SalesDate, SalesAmount)values(4,1004,'2017-12-19',100)
insert into Saleslnfo(Wid, Eid, SalesDate, SalesAmount)values(5,1005,'2017-12-19',170)
insert into Saleslnfo(Wid, Eid, SalesDate, SalesAmount)values(6,1006,'2017-12-19',240)


update Ware set Amount=Amount-400 where wname='优乐美奶茶'
update Ware set Amount=Amount-70 where wname='德州牛肉'
update Ware set Amount=Amount-100 where wname='滑板'
update Ware set Amount=Amount-60 where wname='迷你电锅'
update Ware set Amount=Amount-180 where wname='脑黄金'
update Ware set Amount=Amount-210 where wname='32G U盘'

--修改信息
update Employee set Ename='' where Ename='康云飞'and Eid='1001'
--删除数据
delete from Ware where Wname='德州牛肉' 


--数据查询
select*from Category
select*from Ware
select*from Employee
select*from Saleslnfo