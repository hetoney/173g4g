--新建数据库

create database SuperMarket
on(
--库名
name='SuperMarket',
--文件名和路径
filename='C:\SuperMarket.mdf',
--初始容量
size=3MB,
--最大容量
maxsize=50MB,
--自动增长值
filegrowth=1MB
)

--新建数据库日志

log on(
--库名
name='SuperMarket_log',
--文件名和路径
filename='C:\SuperMarket_log.ldf',
--初始容量
size=3MB,
--最大容量
maxsize=50MB,
--自动增长值
filegrowth=10%
)

--删除数据库
drop database SuperMarket