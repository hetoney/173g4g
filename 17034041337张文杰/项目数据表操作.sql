--查询数据
select*from Category
select*from Employee
select*from SalesInfo
select*from Ware

insert into Category values('食品类','好吃健康')
insert into Category values('电器类','安全')
insert into Category values('家具类','舒适')
insert into Category values('生活用品类','用的')
insert into Category values('玩具类','玩的')

insert into Ware values('饼干',1,5,6,50)
insert into Ware values('辣条',1,5,6,50)
insert into Ware values('空调',2,250,300,3)
insert into Ware values('冰箱',2,300,400,5)
insert into Ware values('衣柜',3,100,150,10)
insert into Ware values('沙发',3,150,200,15)
insert into Ware values('牙膏',4,5,6,50)
insert into Ware values('卫生纸',4,5,7,30)
insert into Ware values('遥控汽车',5,20,32,50)
insert into Ware values('玩具枪',5,23,30,50)

insert into Employee values('张文杰',666666,'长得帅')
insert into Employee values('王腾飞',888888,'长得丑')




Update Ware set Amount=Amount-1 where Wname='饼干'Insert into SalesInfo values(10010,'2009-10-2',1,1001)             


