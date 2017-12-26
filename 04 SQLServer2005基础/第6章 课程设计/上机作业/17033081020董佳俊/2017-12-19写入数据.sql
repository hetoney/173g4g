--写入数据
select*from Supermarket
select*from product
select*from employee
select*from sales

 
insert into Supermarket(cname,description)values('食品','要多吃')
insert into Supermarket(cname,description)values('饮料','多喝热水')
insert into Supermarket(cname,description)values('玩具','开发智力')
insert into Supermarket(cname,description)values('服饰','人靠衣装')
insert into Supermarket(cname,description)values('水果','补充vc')

insert into product(wname,cid,purchaseprice,sales,amount) values('果粒橙',10002,3,4,10000)
insert into product(wname,cid,purchaseprice,sales,amount) values('卫龙辣条',10001,1,2,5000)
insert into product(wname,cid,purchaseprice,sales,amount) values('卫衣',10004,998,1024,500)
insert into product(wname,cid,purchaseprice,sales,amount) values('变形金刚',10003,99,110,110)
insert into product(wname,cid,purchaseprice,sales,amount) values('手枪',10003,50,100,100)
insert into product(wname,cid,purchaseprice,sales,amount) values('雪碧',10002,3,4,523)
insert into product(wname,cid,purchaseprice,sales,amount) values('瓜子',10001,3,4,223)
insert into product(wname,cid,purchaseprice,sales,amount) values('菠萝',10005,3,4,561)

insert into employee(ename,epassword,remark) values('张三',123456,'')
insert into employee(ename,epassword,remark) values('李四',123456,'')


insert into sales(wid,saelsdate,salesamount,eid) values(1,'2017-12-19',99,1001)
insert into sales(wid,saelsdate,salesamount,eid) values(3,'2017-12-19',16,1001)
insert into sales(wid,saelsdate,salesamount,eid) values(5,'2017-12-19',56,1001)
insert into sales(wid,saelsdate,salesamount,eid) values(6,'2017-12-19',33,1001)
insert into sales(wid,saelsdate,salesamount,eid) values(6,'2017-12-19',33,1001)
insert into sales(wid,saelsdate,salesamount,eid) values(6,'2017-01-01',33,1001)


update product set amount=amount-1 where wname='果粒橙'
insert into sales values(1,'2017-12-19',1,1001)








