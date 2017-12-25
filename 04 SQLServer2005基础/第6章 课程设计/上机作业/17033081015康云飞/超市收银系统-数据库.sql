--建立数据库
create database supermarket on(
name ='market',
filename='C:\supermarket.mdf',
size =3MB,
filegrowth =2MB
)
--建立数据库日志
log on(
name ='market_log',
filename='C:\supermarket_log.ldf',
size =3MB,
filegrowth =10%
)
--删除数据库
drop database supermarket