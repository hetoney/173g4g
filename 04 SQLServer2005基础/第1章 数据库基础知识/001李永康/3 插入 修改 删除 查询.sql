--插入数据
insert into Student(Name,Address)values('刘能','象牙山')
insert into Student(Name,Address)values('谢广坤','中国社会大学')


--修改全部数据
update Student set Address = '北京五道口职业学院'
--修改指定数据
update Student set Address = '北京五道口职业学院'where Code = 8
update Student set Address = '北京五道口职业学院'where Code = 6 and Name ='谢广坤'

--删除指定数据
delete from Student where Name='刘能'
delete from Student where Code=7
--查询数据
select*from Student