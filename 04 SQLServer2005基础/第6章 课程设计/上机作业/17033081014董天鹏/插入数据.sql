--插入数据
insert into Students(Name,Adress)values('李四','五道口')
insert into Students(Name,Adress)values('王五',null)
--修改全部数据
update Students set adress = '清华it'
--修改制定数据
update Students set adress = '河南五道口'where Code = 1
update Students set adress = '河南五道口'where Code = 1 and name = '李四'
--删除数据
delete from Students where Code = 1
--删除所有
delete from Students
truncate table Students
--查询数据
select*from Students