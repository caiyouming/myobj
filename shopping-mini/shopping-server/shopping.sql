SET NAMES UTF8;
DROP DATABASE IF EXISTS shopping;
CREATE DATABASE shopping CHARSET=UTF8;
USE shopping;

CREATE TABLE shopping_user(
  uid   INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(25),
  upwd  VARCHAR(32)
);
INSERT INTO shopping_user VALUES(null,'tom',md5('123'));
INSERT INTO shopping_user VALUES(null,'dongdong',md5('123'));
INSERT INTO shopping_user VALUES(null,'jerry',md5('123'));

CREATE TABLE shopping_imagelist(
  id      INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(255),
  title   VARCHAR(50)
);
INSERT INTO shopping_imagelist VALUES(null,
'http://127.0.0.1:3000/img/banner1.png',
'图片1');
INSERT INTO shopping_imagelist VALUES(null,
'http://127.0.0.1:3000/img/banner2.png',
'图片2');
INSERT INTO shopping_imagelist VALUES(null,
'http://127.0.0.1:3000/img/banner3.png',
'图片3');
INSERT INTO shopping_imagelist VALUES(null,
'http://127.0.0.1:3000/img/banner4.png',
'图片4');

CREATE TABLE shopping_news(
  id INT PRIMARY KEY AUTO_INCREMENT,
  title   VARCHAR(255),
  content VARCHAR(2000),
  click   INT,
  img_url VARCHAR(255),
  price   DECIMAL(10,2),
  ctime   DATETIME
);
CREATE TABLE shopping_comment(
  id INT PRIMARY KEY AUTO_INCREMENT,
  nid      INT,
  ctime    DATETIME,
  content  VARCHAR(50),
  username VARCHAR(25),
  isdel    INT
);


INSERT INTO shopping_comment VALUES
(null,1,now(),'111','xm',0),
(null,1,now(),'1141','xm',0),
(null,1,now(),'1121','xm',0),
(null,1,now(),'1171','xm',0),
(null,1,now(),'1171','xm',0),
(null,1,now(),'111','xm',0),
(null,1,now(),'1171','xm',0),
(null,2,now(),'111','xm',0),
(null,2,now(),'1171','xm',0),
(null,2,now(),'11','xm',0),
(null,2,now(),'1121','xm',0),
(null,2,now(),'11','xh',0),
(null,2,now(),'112','xh',0),
(null,2,now(),'115','xh',0),
(null,3,now(),'117','xh',0),
(null,3,now(),'120','xw',0),
(null,3,now(),'135','xw',0),
(null,3,now(),'178','xw',0),
(null,3,now(),'145','xw',0),
(null,3,now(),'111','xw',0),
(null,3,now(),'111','xw',0),
(null,3,now(),'111','xw',0);

INSERT INTO shopping_news VALUES(null,'121','123',0,
'http://127.0.0.1:3000/banner1.png',0,now());
INSERT INTO shopping_news VALUES(null,'122','123',0,
'http://127.0.0.1:3000/banner1.png',0,now());
INSERT INTO shopping_news VALUES(null,'123','123',0,
'http://127.0.0.1:3000/banner1.png',0,now());
INSERT INTO shopping_news VALUES(null,'124','123',0,
'http://127.0.0.1:3000/banner1.png',0,now());
INSERT INTO shopping_news VALUES(null,'125','123',0,
'http://127.0.0.1:3000/banner1.png',0,now());
INSERT INTO shopping_news VALUES(null,'126','123',0,
'http://127.0.0.1:3000/banner1.png',0,now());
INSERT INTO shopping_news VALUES(null,'127','123',0,
'http://127.0.0.1:3000/banner1.png',0,now());
INSERT INTO shopping_news VALUES(null,'128','123',0,
'http://127.0.0.1:3000/banner1.png',0,now());
INSERT INTO shopping_news VALUES(null,'129','123',0,
'http://127.0.0.1:3000/banner1.png',0,now());
INSERT INTO shopping_news VALUES(null,'1210','123',0,
'http://127.0.0.1:3000/banner1.png',0,now());
INSERT INTO shopping_news VALUES(null,'1211','123',0,
'http://127.0.0.1:3000/banner1.png',0,now());
INSERT INTO shopping_news VALUES(null,'1212','123',0,
'http://127.0.0.1:3000/banner1.png',0,now());
INSERT INTO shopping_news VALUES(null,'1213','123',0,
'http://127.0.0.1:3000/banner1.png',0,now());
INSERT INTO shopping_news VALUES(null,'1214','123',0,
'http://127.0.0.1:3000/banner1.png',0,now());
INSERT INTO shopping_news VALUES(null,'1215','123',0,
'http://127.0.0.1:3000/banner1.png',0,now());
INSERT INTO shopping_news VALUES(null,'1216','123',0,
'http://127.0.0.1:3000/banner1.png',0,now());
INSERT INTO shopping_news VALUES(null,'1217','123',0,
'http://127.0.0.1:3000/banner1.png',0,now());
INSERT INTO shopping_news VALUES(null,'1218','123',0,
'http://127.0.0.1:3000/banner1.png',0,now());
INSERT INTO shopping_news VALUES(null,'1219','123',0,
'http://127.0.0.1:3000/banner1.png',0,now());
INSERT INTO shopping_news VALUES(null,'1220','123',0,
'http://127.0.0.1:3000/banner1.png',0,now());
INSERT INTO shopping_news VALUES(null,'1221','123',0,
'http://127.0.0.1:3000/banner1.png',0,now());
INSERT INTO shopping_news VALUES(null,'1233','123',0,
'http://127.0.0.1:3000/banner1.png',0,now());

