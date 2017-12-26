select class  from  student where snam='刘磊'
select * from student where class= 'S2'
select * from student where class=(select class  from  student where snam='刘磊')

select distinct sid from score
select * from student where code in(10004,10005,10006)
select* from student where code in(select distinct sid from score)

--查询有成绩的所有学生的信息
--分析：某学号在成绩表中存在则说明该学生有成绩
select * from student where exists (select *from score where code=sid)
--查询没有成绩的所有学生的信息
--分析：某学号在成绩表中不存在则说明该学生没有成绩

select * from student where not exists (select *from score where code=sid)
--内连接
--1确定咧
select snam ,cid,score
--2确定表
from student
--3确定条件
inner join score on sid=code
=3
select snam,cid,score
from student ,score
where sid=code
--左外链接
select snam,cid,score
from student
left join score on sid=code

--右外链接
select snam,cid,score
from student
right join score on sid=code

--完整外链接
select snam,cid,score
from student
full join score on sid=code

--交叉链接
select code ,snam, cnam
from student 
cross join course

--等同于
 select code,snam,cnam
from student course
---查询每个学生每门课的成绩，如果某门课程没考试则对应的成绩显示为NULL
select code,snam,cnam,score
from student s
cross join course c
left join score sc
on sc. sid=code and c. cid=sc .cid
order by code
