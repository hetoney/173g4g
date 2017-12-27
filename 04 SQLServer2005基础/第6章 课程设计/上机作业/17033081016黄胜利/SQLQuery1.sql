--新建数据库
create database SuperMarket on(
--指定数据库名
name='SuperMarket',
--指定路径以及后缀
filename='C:\SuperMarket.mdf',
--指定数据库初始容量
size=3MB,
--最大容量
maxsize=50MB,
--指定数据库自动增长容量
filegrowth=1MB
)
log on(
--指定数据库名
name='SuperMarketlog',
--指定路径以及后缀
filename='C:\SuperMarket_log.mdf',
--指定数据库初始容量
size=3MB,
--最大容量
maxsize=50MB,
--指定数据库自动增长容量
filegrowth=10%
)
--删除数据库
drop database SuperMarket