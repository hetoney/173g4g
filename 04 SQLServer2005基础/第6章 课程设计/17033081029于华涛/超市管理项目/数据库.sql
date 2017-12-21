create database SuperMarket
on(
name='SuperMarket',
filename='C:\SuperMarket.mdf',
size=3mb,
maxsize=50mb,
filegrowth=2mb
)
log on(
name='SuperMarket_log',
filename='C:\SuperMarket_log.ldf',
size=3mb,
maxsize=50mb,
filegrowth=10%
)

drop database SuperMarket