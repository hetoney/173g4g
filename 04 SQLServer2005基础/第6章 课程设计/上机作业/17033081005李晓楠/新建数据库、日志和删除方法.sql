
--新建数据库
create database SuperMarkt 
on(
--指定数据库名
name = 'Student',
--指定路径及文件后缀
filename = 'C:\SuperMarkt.mdf',
--指定数据库初始容量
size = 3MB,
--指定数据库最大容量
maxsize = 50MB,
--指定数据库自动增长容量
filegrowth = 1MB)

--新建数据库日志
log 
on(
--指定数据库名
name = 'SuperMarkt_log',
--指定路径及文件后缀
filename = 'C:\SuperMarkt_log.ldf',
--指定数据库初始容量
size = 3MB,
--指定数据库最大容量
maxsize = 50MB,
--指定数据库自动增长容量
filegrowth = 20%)

--删除数据库
drop database SuperMarkt
