 
 select * from course
select *from score
select * from student
select * from student where sid=10003
select *from student where city in('上海','南昌')
select distinct (class) from student
select * from score where cid =1 order by score desc
select *from  score order by  cid asc, score desc

select * from student where snam like '张_'
 select*from student where snam like'[w]%'
select * from student student where birth >='2011-1-1 'and  birth<= '2013-1-1'
select * from student student where birth between '2011-1-1 'and '2013-1-1'

select avg(score) from score where cid =1  
select max (score) from score where cid=1
select min(score) from score where cid=1
select avg (score) from   score where sid=10004
select  cid ,count(sid),max(score), min(score),avg(score) from score group by cid
select cid ,avg(score) from score group by cid having avg(score)>75
select *from student where class='S1'
select * from student
select * from student where class =(select class  from student where snam='Jack')

select cid from course where cnam='Java'
select max(score)from score where cid=3
select max(score)from score where cid=(select cid from course where cnam='Java')
select snam from student  where sid in (select distinct sid from score) 
select *from student where sid in(select sid from score)
select * from  course where cid=2
select * from score where sid in(select * from  course where cid=2)
select * from coure where cid=3
select max(score) where 
select cid from course where cnam = 'C语言'
select sid from score where cid=1
select snam from student where sid in (10004,10005,10006)
select cid from course where cnam = 'C语言'





