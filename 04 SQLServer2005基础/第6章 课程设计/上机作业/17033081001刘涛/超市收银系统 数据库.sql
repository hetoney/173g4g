--建立数据库
create database SuperMarket 
on(
name='SuperMarket',
filename='C:\SuperMarket.mdf',
size=3MB,
maxsize=50MB,
filegrowth=1MB
)
--建立数据库日志
log on(
name ='SuperMarket_log',
filename='C:\SuperMarket_log.ldf',
size=3MB,
maxsize=50MB,
filegrowth=10%
)
--删除数据库
drop database SuperMarket