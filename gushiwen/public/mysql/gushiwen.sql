SET NAMES UTF8;
DROP DATABASE IF EXISTS gushiwen;
CREATE DATABASE gushiwen CHARSET=UTF8;
USE gushiwen;

/**公司分类**/
CREATE TABLE gsw_index(
  tid INT PRIMARY KEY AUTO_INCREMENT,
  tname VARCHAR(32),    
  tauthor VARCHAR(32), 
  tcon VARCHAR(256),       
  cintro VARCHAR(1024),   
  ctotal INT,           #评价量
);
/**职位分类**/
CREATE TABLE gsw_all(
  aid INT PRIMARY KEY AUTO_INCREMENT,
  aname VARCHAR(32),    
  author VARCHAR(32), 
  acon VARCHAR(256),       
  aintro VARCHAR(1024),   
  atotal INT,           #评价量
);

/**用户信息**/
CREATE TABLE gsw_user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(32),
  upwd VARCHAR(32),
  email VARCHAR(64),
  phone VARCHAR(16),

  avatar VARCHAR(128),        #头像图片路径
  user_name VARCHAR(32),      #用户名，如王小明
  gender INT                  #性别  0-女  1-男
);



INSERT INTO gsw_index VALUES
(null,'静夜思','唐代：李白','床前明月光，疑是地上霜。','举头望明月，低头思故乡。',);