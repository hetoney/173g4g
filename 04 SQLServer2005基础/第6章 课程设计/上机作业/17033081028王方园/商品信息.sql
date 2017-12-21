select * from Category
select * from ware
select * from Employee
select * from SalesInfo

--商品类别
insert into Category values('食品类','')
insert into Category values('生活类','')
insert into Category values('电器类','')
insert into Category values('玩具类','')
insert into Category values('水果类','')

--商品信息
insert into ware values('41256','双汇王中王','1','42','45','200')
insert into ware values('41258','双汇大肉块','1','52','60','200')
insert into ware values('41259','双汇香辣香脆肠','1','46','50','200')
insert into ware values('41260','双汇玉米热狗肠','1','42','45','200')
insert into ware values('82756','金典','1','49','55','100')
insert into ware values('96256','六个核桃','1','48','55','200')
insert into ware values('25456','遥控车','4','130','160','50')
insert into ware values('36956','遥控飞机','4','170','200','40')
insert into ware values('84556','格力空调','3','2125','3399','20')
insert into ware values('12556','联想小新锐7000','3','4200','5399','10')
insert into ware values('48456','橘子罐头整箱','5','48','60','50')
insert into ware values('48756','黄桃罐头整箱','5','52','65','45')
insert into ware values('75256','佳洁士牙膏','2','15','20','60')
insert into ware values('76456','纳爱斯牙膏','2','18','25','55')
insert into ware values('84456','高露洁牙膏','2','17','23','45')
insert into ware values('75856','安幕希','1','48','55','50')
insert into ware values('21456','北京方便面','1','19','23','45')
insert into ware values('21457','南德方便面','1','21','25','45')
insert into ware values('53156','康师傅劲爽桶面','1','27','30','50')
insert into ware values('31456','非常可乐','1','18','20','100')
insert into ware values('24656','AD钙奶','1','39','45','50')
insert into ware values('35456','营养快线','1','42','50','50')
insert into ware values('75456','金星新一代易拉罐','1','32','40','200')
insert into ware values('75457','金星纯生易拉罐','1','45','60','200')
insert into ware values('75456','金星原浆易拉罐','1','85','110','200')
insert into ware values('75454','金星新一代瓶装','1','23','30','200')
insert into ware values('75455','金星纯生瓶装','1','32','40','200')
insert into ware values('95654','优乐美奶茶','1','54','60','200')
insert into ware values('88454','香飘飘奶茶','1','53','60','200')
insert into ware values('34945','哇哈哈八宝粥','1','39','45','50')

--员工表
insert into Employee values('孙玉刚','741456','')
insert into Employee values('邓永春','159463','')
insert into Employee values('朱敬星','254796','')

--销售记录表
insert into SalesInfo values('31456','2017-12-19','20','1001')
insert into SalesInfo values('75456','2017-12-19','20','1002')
insert into SalesInfo values('75456','2017-12-19','10','1003')
insert into SalesInfo values('41259','2017-12-19','35','1001')
insert into SalesInfo values('41256','2017-12-19','29','1002')
insert into SalesInfo values('41260','2017-12-19','36','1003')

insert into SalesInfo values('82756','2017-12-20','20','1001')
insert into SalesInfo values('48456','2017-12-18','20','1002')
insert into SalesInfo values('96256','2017-12-19','10','1003')
insert into SalesInfo values('75454','2017-12-20','35','1001')
insert into SalesInfo values('76456','2017-12-19','10','1002')
insert into SalesInfo values('25456','2017-12-20','5','1003')

insert into SalesInfo values('82756','2017-12-20','20','1001')
insert into SalesInfo values('75856','2017-12-18','13','1002')
insert into SalesInfo values('12556','2017-12-15','1','1003')
insert into SalesInfo values('75457','2017-12-20','35','1001')
insert into SalesInfo values('95654','2017-12-19','10','1002')
insert into SalesInfo values('21457','2017-12-20','10','1003')