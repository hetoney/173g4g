--新建数据库
create database SuperMaket on(
name ='SuperMaket',
filename='d:\SuperMaket.mdf',
size=3MB,
maxsize=50MB,
filegrowth=1MB
)
log on (
name ='SuperMaket_log',
filename='d:\SuperMaket_log.ldf',
size=3MB,
maxsize=50MB,
filegrowth=10%
)

