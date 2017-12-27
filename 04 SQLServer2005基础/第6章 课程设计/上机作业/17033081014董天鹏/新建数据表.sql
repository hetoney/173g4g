--学员表
create table Student(
	--编号，主键，自动增长
	code int primary key identity(10003,1),
	snam nvarchar(20) not null check(len(snam)>1),
	sex nvarchar(1) not null default '男',
	class nvarchar(10) null,
	city nvarchar(20) null,
	birth varchar(30) null
)
--课程表
create table course(
	cid int primary key identity(1,1),
	cnam nvarchar(30) not null unique
)
--成绩表
create table score(
	scid int primary key identity(1,1),
	sid int not null foreign key references student(code),
	cid int not null foreign key references course(cid),
	score decimal(5,1)
)


--删除数据表(注意先删除外键表，再删除主键表)
drop table score
drop table student
drop table course




