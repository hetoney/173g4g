create database SuperMarket
 on(
name='SuperMarket',
filename='c:\Supermarket',
size=3MB,
maxsize=100MB,
filegrowth=1MB
)
log on(
name='SuperMarketldf',
filename='c:\Supermarket_log.ldf',
size=3MB,
maxsize=100MB,
filegrowth=10%
)
--É¾³ý
drop database SuperMarket