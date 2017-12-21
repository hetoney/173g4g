--新建数据表
create table Student
(
--列名,数据类型,为不为空
--primary key主键
--identity(1,1),自动增长
Code int primary key identity(1,1),
--列名,数据类型,为不为空
--not null不为空
Name nvarchar(20) not null,
--列名,数据类型,为不为空
Address nvarchar(20) default'河南林业职业学院'
)
--新建数据表
create table Score
(
--列名,数据类型,为不为空
--primary key主键
--identity(1,1),自动增长
ScoreId int primary key identity(1,1),
--列名,数据类型,为不为空
--not null不为空
--foreign key外键
Code int not null foreign key references Student(Code),
--列名,数据类型,为不为空
Score smallint check(Score>=0 and Score <=100)
)
--删除数据表
drop table Student