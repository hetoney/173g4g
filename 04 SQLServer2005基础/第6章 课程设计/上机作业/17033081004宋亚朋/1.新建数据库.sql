--建立数据库
create database SuperMarket
 on(
name='SuprtMarket',
filename='D:\SuprtMarket.mdf',
size=3mb,
maxsize=50MB,
filegrowth=1mb
)
--数据库日志
log
on(
name='SuprtMarket_log',
filename='D:\ SuprtMarket_log.ldf',
size=3mb,
maxsize=50MB,
filegrowth=10%
)
drop database  SuperMarket