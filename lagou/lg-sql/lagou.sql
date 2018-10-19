SET NAMES UTF8;
DROP DATABASE IF EXISTS lagou;
CREATE DATABASE lagou CHARSET=UTF8;
USE lagou;

/**公司分类**/
CREATE TABLE lg_company(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  cname VARCHAR(32),      #公司名字
  cimg VARCHAR(128),      #公司图片
  cpro VARCHAR(32),       #公司类型
  cintro VARCHAR(32),     #公司简介
  cs_total INT,           #评价量
  cnum INT,               #职位个数
  cspeed INT              #处理效率
);
/**职位分类**/
CREATE TABLE lg_job(
  jid INT PRIMARY KEY AUTO_INCREMENT,
  cid INT,
  jname VARCHAR(32),      #职位名称
  jtime DATETIME,         #发布时间
  jcompany VARCHAR(128),  #公司名称
  jsalery VARCHAR(128),   #薪资
  jneed VARCHAR(32),      #职位要求
  jimg VARCHAR(128),      #公司图片
  jpro VARCHAR(32)        #公司简介
);

/**用户信息**/
CREATE TABLE lg_user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(32),
  upwd VARCHAR(32),
  email VARCHAR(64),
  phone VARCHAR(16),

  avatar VARCHAR(128),        #头像图片路径
  user_name VARCHAR(32),      #用户名，如王小明
  gender INT                  #性别  0-女  1-男
);


/**用户评价内容**/
CREATE TABLE lg_comment(
  id INT PRIMARY KEY AUTO_INCREMENT,
  cid      INT,
  ctime    DATETIME,
  content  VARCHAR(50),     #评价内容
  username VARCHAR(25)      #评价的用户名
);


INSERT INTO lg_company VALUES
(null,'果壳网','./img/guoke.png','移动互联网,社交网络/C轮/150-500人','泛科学本土第一品牌，以及在线教育、知识',0,1,99),
(null,'妙计旅行','./img/miaoji.jpg','旅游/B轮/150-500人','技术实力派，境外自由行智能搜索引擎。',0,1,99),
(null,'摩尔妈妈','./img/moermama.jpg','教育/B轮/150-500人','摩尔妈妈是“共享育儿”模式开创者，首',0,1,99),
(null,'亲宝宝','./img/qinbaobao.png','移动互联网/A轮/15-50人','陪伴宝宝一起成长',0,1,99),
(null,'Face++','./img/face++.jpg','移动互联网,硬件/C轮/500-2000人','极客范儿的人工智能公司，加入我们，',0,1,99),
(null,'在行','./img/zaihang.png','移动互联网,硬件/C轮/500-2000人','果壳（Guokr）旗下产品。2016年上半',0,1,99),
(null,'车轮','./img/chelun.png','移动互联网/C轮/150-500人','车轮，让有车生活更美好！',0,1,99),
(null,'小满科技','./img/xiaomankeji.jpg','移动互联网/C轮/150-500人','小满科技是一家专注企业服务的互联网公司',0,1,99);

INSERT INTO lg_job VALUES
(null,1,'前端开发工程师',now(),'果壳网','10000-15000','经验3-5年/本科','./img/guoke.png','移动互联网,社交网络/C轮/150-500人'),
(null,2,'前端开发工程师',now(),'妙计旅行','10000-15000','经验3-5年/本科','./img/miaoji.jpg','旅游/B轮/150-500人'),
(null,3,'前端开发工程师',now(),'摩尔妈妈','10000-15000','经验3-5年/本科','./img/moermama.jpg','教育/B轮/150-500人'),
(null,4,'前端开发工程师',now(),'亲宝宝','10000-15000','经验3-5年/本科','./img/qinbaobao.png','移动互联网/A轮/15-50人'),
(null,5,'前端开发工程师',now(),'Face++','10000-15000','经验3-5年/本科','./img/face++.jpg','移动互联网,硬件/C轮/500-2000人'),
(null,6,'前端开发工程师',now(),'在行','10000-15000','经验3-5年/本科','./img/zaihang.png','移动互联网,硬件/C轮/500-2000人'),
(null,7,'前端开发工程师',now(),'车轮','10000-15000','经验3-5年/本科','./img/chelun.png','移动互联网/C轮/150-500人'),
(null,8,'前端开发工程师',now(),'小满科技','10000-15000','经验3-5年/本科','./img/xiaomankeji.jpg','移动互联网/C轮/150-500人');

INSERT INTO lg_comment VALUES
(null,1,now(),'这家公司条件不错，技术也很牛逼，就是面试人太多，竞争压力大','dingding'),
(null,2,now(),'这家公司条件不错，技术也很牛逼，就是面试人太多，竞争压力大','dingding'),
(null,3,now(),'这家公司条件不错，技术也很牛逼，就是面试人太多，竞争压力大','dingding'),
(null,4,now(),'这家公司条件不错，技术也很牛逼，就是面试人太多，竞争压力大','dingding'),
(null,5,now(),'这家公司条件不错，技术也很牛逼，就是面试人太多，竞争压力大','dingding'),
(null,6,now(),'这家公司条件不错，技术也很牛逼，就是面试人太多，竞争压力大','dingding'),
(null,7,now(),'这家公司条件不错，技术也很牛逼，就是面试人太多，竞争压力大','dingding'),
(null,8,now(),'这家公司条件不错，技术也很牛逼，就是面试人太多，竞争压力大','dingding');