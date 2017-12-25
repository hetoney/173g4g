--新建数据库
create database SuperMarket
on(
--数据库名
name='SuperMarket',
--路径
filename='D:\SuperMarket.mdf',
--数据库初始值
size=3MB,
--数据库最大容量
maxsize=500MB,
--数据库自动增长容量
filegrowth=1MB
)
log on
(--数据库名
name='SuperMarket_log',
--路径
filename='D:\SuperMarket_log.lmf',
--数据库初始值
size=3MB,
--数据库最大容量
maxsize=500MB,
--指定自动增长值
filegrowth= 10%
)
drop database SuperMarket