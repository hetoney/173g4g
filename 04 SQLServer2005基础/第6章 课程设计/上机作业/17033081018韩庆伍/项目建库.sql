--新建数据库
create database SuperMarket on
(
--数据库名
name = 'SuperMarket',
--数据库存储位置
filename = 'C:\SuperMarket.mdf',
--数据库初始大小
size = 3MB,
--最大量
maxsize = 5000MB,
--增长量
filegrowth = 1MB
)
log on(
--日志名
name = 'SuperMarket_log',
--日志存储位置
filename = 'C:\SuperMarket_log.ldf',
--初始大小
size = 2MB,
--最大量
maxsize = 5000MB,
--增长值
filegrowth = 10%
)
--删除
drop database SuperMarket