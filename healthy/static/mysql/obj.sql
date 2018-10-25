SET NAMES UTF8;
DROP DATABASE IF EXISTS obj;
CREATE DATABASE obj CHARSET=UTF8;
USE obj;


/*教练信息组*/
CREATE TABLE obj_teacher(
	tid INT PRIMARY KEY AUTO_INCREMENT,
	tname VARCHAR(32),
	tnumber VARCHAR(32),
  tpwd VARCHAR(32),
  email VARCHAR(64),
  phone VARCHAR(16),
	tpic VARCHAR(128),
	tpre VARCHAR(128)
);

/*用户体验反馈*/
CREATE TABLE obj_user_show(
	uid INT PRIMARY KEY AUTO_INCREMENT,
	uname VARCHAR(32),
	unumber VARCHAR(32),
  upwd VARCHAR(32),
  email VARCHAR(64),
  phone VARCHAR(16),
	utime VARCHAR(32),
	upic VARCHAR(128),
	uage VARCHAR(32),
	ufamily VARCHAR(32),
	urole VARCHAR(32),
	ucity VARCHAR(32),
	uheight VARCHAR(32),
	uoldweight VARCHAR(32),
	unowweight VARCHAR(32),
	uwaistline VARCHAR(32),
	upre VARCHAR(128)
);
CREATE TABLE obj_knowledge(
	kid INT PRIMARY KEY AUTO_INCREMENT,
	kpic VARCHAR(128),
	ktitle VARCHAR(128),
	kpre VARCHAR(256),
	ktime VARCHAR(32)
);


/*数据导入*/
INSERT INTO obj_teacher VALUES
(NULL,'tikky','tikky','123456','tikky@163.com','17631733840','../images/kitty-teacher.png','性感热心的tikky老师，教你如何在短短一月内拥有s板曲线的身材。'),
(NULL,'jeny','jeny','123456','tikky@163.com','17631733840','../images/jeny-teacher.png','性感热心的tikky老师，教你如何在短短一月内拥有s板曲线的身材。'),
(NULL,'timmy','timmy','123456','tikky@163.com','17631733840','../images/timmy-teacher.png','性感热心的tikky老师，教你如何在短短一月内拥有s板曲线的身材。');

INSERT INTO obj_user_show VALUES
(NULL,'琳达迈耶斯','lina','123456','tikky@163.com','17631733840','2018-04-16','../images/show-user.jpg','19','未婚','学生','金斯敦，牙买加','161cm','57kg','49kg','34cm','失去80磅和4尺寸'),
(NULL,'梅甘狼','mikky','123456','tikky@163.com','17631733840','2018-04-16','../images/show-user1.jpg','19','未婚','学生','金斯敦，牙买加','161cm','57kg','49kg','34cm','失去了90磅和3尺寸'),
(NULL,'Maggie Woo','jeeny','123456','tikky@163.com','17631733840','2018-04-16','../images/show-user2.jpg','19','未婚','学生','金斯敦，牙买加','161cm','57kg','49kg','34cm','失去了146磅和5尺寸'),
(NULL,'乔伊Tribbiani','jone','123456','tikky@163.com','17631733840','2018-04-16','../images/show-user3.jpg','19','未婚','学生','金斯敦，牙买加','161cm','57kg','49kg','34cm','失去100磅'),
(NULL,'希拉里戴维斯','xili','123456','tikky@163.com','17631733840','2018-04-16','../images/show-user4.jpg','19','未婚','学生','金斯敦，牙买加','161cm','57kg','49kg','34cm','失去了90磅'),
(NULL,'戴安娜乔伊斯','dairy','123456','tikky@163.com','17631733840','2018-04-16','../images/show-user5.jpg','19','未婚','学生','金斯敦，牙买加','161cm','57kg','49kg','34cm','失去了90磅和3尺寸');

INSERT INTO obj_knowledge VALUES
(1,'../images/know1.jpg','科学训练：用心率监控高强度间歇训练','卧推是上肢训练的最佳动作之一，他帮助我们发展上肢水平推的力量，构建强壮的胸肌，肩膀以及三头肌，健身房没有人不爱卧推，每个人都渴望自己的卧推实力越来越强，除了日复一日的苦练，和遵循负荷渐进的训练原则，','04-13'),
(2,'../images/know2.jpg','史密斯卧推：双手推-单手放','如何监控强度和合理安排休息时间则是间歇训练的重点！一般来说，监控强度和组间休息的数据往往是通过计时，或者计算距离！比如：运动15秒休息30秒，冲刺跑200米，慢走200米然而，用距离或时间来规定间歇训练强度和休息时间，','04-13'),
(3,'../images/know3.jpg','爆发力训练动作推荐：杠铃片深蹲跳','间歇训练已经越来越受到人们的欢迎，对于提升体能，减少体脂肪是非常棒的训练方式！但是很不幸，因为不懂行的大肆吹嘘和唬人的宣传，很多人都误解了间歇训练，只听说它是非常给力的运动，只看到它被吹嘘的优点和好处，','04-13'),
(4,'../images/know4.jpg','俯卧哑铃飞鸟：强化核心+胸肌','“铁鹰”自然健美和业余人物经典是国际自然健美联合会(INBF)批准的，是一种经过药物测试的WNBF Pro-Qualifier事件。所有参赛选手必须在比赛前进行测谎测试。这个比赛对所有不吸毒的人开放。','04-13'),
(5,'../images/know5.jpg','健身解密：带你真正认识高强度间歇训练','所有参赛选手必须在比赛前进行测谎测试。这个比赛对所有不吸毒的人开放。从显示的日期起)业余运动员有一个现行的INBF卡。竞赛课程包括健身、身材、健身、泳装、泳装。竞赛课程包括健身、身材、健身、泳装、泳装。','04-13'),
(6,'../images/know6.jpg','核心力量训练：熊爬+下拉','“铁鹰”自然健美和业余人物经典是国际自然健美联合会(INBF)批准的，是一种经过药物测试的WNBF Pro-Qualifier事件。所有参赛选手必须在比赛前进行测谎测试。这个比赛对所有不吸毒的人开放。','04-13');




