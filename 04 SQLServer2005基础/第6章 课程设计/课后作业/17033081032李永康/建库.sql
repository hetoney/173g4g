--新建数据库
create database SuperMaket on(
--制定库名
name ='SuperMaket',
--指定地址和后缀
filename='d:\SuperMaket.mdf',
--初始容量
size=3MB,
--最大容量
maxsize=50MB,
--每次递增
filegrowth=1MB
)
log on (
name ='SuperMaket_log',
filename='d:\SuperMaket_log.ldf',
size=3MB,
maxsize=50MB,
filegrowth=10%
)

