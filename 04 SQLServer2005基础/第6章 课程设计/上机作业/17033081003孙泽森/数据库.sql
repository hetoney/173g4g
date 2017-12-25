--新建超市数据库
	create database SuperMaket
	on(
	--数据库名
	name='SuperMaket',
	--路径
	filename='C:\SuperMaket.mdf',
	--初始容量
	size=3MB,
	--最大容量
	maxsize=50MB,
	--自动增长
	filegrowth = 1MB 
	)
--新建数据库日志
	log
	on
	(
	--数据库名
	name='SuperMaket_log',
	--路径
	filename='C:\SuperMaket_log.ldf',
	--初始容量
	size=3MB,
	--最大容量
	maxsize=50MB,
	--自动增长
	filegrowth = 10%
	)
drop database SuperMaket