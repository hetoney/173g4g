--新建数据库
create database SuperMarket 
on
(
name = 'SuperMarket',
filename = 'c:\SuperMarket.mdf',
size = 5mb,
maxsize = 50mb,
filegrowth = 2mb)

--新建数据库日志
  log  on
(
name = 'SuperMarket',
filename = 'c:\SuperMarket_log.ldf',
size = 3mb,
maxsize = 50mb,
filegrowth = 20%)

drop database SuperMarket 