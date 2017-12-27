--查看数据表
select * from Category
 select*from Ware
select * from  Employee
select  *from  SalesInfo

--新建数据表
 create  table  Category
(  --自动增长,从1开始
  Cid  int    primary  key  identity(1,1),
  --数据类型,为不为空
  Cname  nvarchar (30) not null  unique,
--类别描述   可以为空
  Description  nvarchar  (500)  null,
)
--新建数据表
create  table  Ware(
-- Wid 为主键，自动增长
  Wid  int  primary  key   identity(1,1),
--Wname  必须填且不能重复
    Wname  nvarchar  (10)  not  null  unique,
--Cid 商品类别,外键,必填
Cid  int  not  null   foreign key  references  Category(Cid),
--PurchasePrice商品进价必须大于
 PurchasePrice  smallint  check(len(PurchasePrice)>0),
--SalesPrice商品售价必须大于0
SalesPrice  smallint  check(len(SalesPrice)>0),
--Amount商品库存量必须大于0
 Amount   smallint   check  (len(Amount)>0),
)

   --新建数据表
   create  table  Employee(
  --Eid自动增长，从1001开始  主键
 Eid  int primary  key  identity(1001,1),
  --Ename员工姓名  必填
 Ename  nvarchar   (10) not  null,
  --Epassword  员工密码   不少于6位
  Epassword   nvarchar (10) not null  check(len(Epassword)>6),
  -- Remark  备注  可不填
   Remark   nvarchar  null,

)
 --新建数据表
create  table   SalesInfo(
 --Sid   主键,自动增长  从1开始
  Sid   int  primary  key  identity (1,1),
 --Wid  外键  必填
 Wid  int  not  null   foreign key  references  Ware(Wid),
--SalesDate  销售商品时间,必填
SalesDate  datetime  not  null,
--SalesAmount  销售商品数量,必填且必须大于0
SalesAmount   int  not   null  check (len(SalesAmount)>0),
--Eid   外键   必填
  Eid  int  not  null   foreign  key  references  Employee(Eid),
)
  --删除数据表
  drop  table   