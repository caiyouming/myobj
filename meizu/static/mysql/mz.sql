SET NAMES UTF8;
DROP DATABASE IF EXISTS mz;
CREATE DATABASE mz CHARSET=UTF8;
USE mz;

/**家族分类**/
CREATE TABLE mz_family(
  fid INT PRIMARY KEY AUTO_INCREMENT,
  fname VARCHAR(32)
);
CREATE TABLE mz_phone_family(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  pname VARCHAR(32),
  pbimg VARCHAR(128),         #大图片路径
  psimg VARCHAR(128),         #小图片路径
  pro VARCHAR(64),            #说明
  price VARCHAR(32)           #价格
);

/**手机导航栏**/
CREATE TABLE mz_nav(
  nid INT PRIMARY KEY AUTO_INCREMENT,
  nphone VARCHAR(32),         #手机名称       
  nindex VARCHAR(32),         #首页
  nsur VARCHAR(32),           #概述
  npp VARCHAR(32),            #主标题
  npart VARCHAR(32)           #性能
); 

/**手机主页参数**/
CREATE TABLE mz_phone(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  family_id INT,              #手机类编号
  phone_family_id INT,        #手机型号在手机中编号
  title VARCHAR(128),         #标题
  rem VARCHAR(128),           #备注
  price DECIMAL(10,2),        #价格
  sup VARCHAR(128),           #支持
  promise VARCHAR(64),        #服务承诺
  model VARCHAR(64),          #型号 
  net_type VARCHAR(64),       #网络类型
  spec VARCHAR(64),           #规格/颜色
  memory VARCHAR(32),         #内存容量
  choise VARCHAR(32),         #套餐选择
  sta VARCHAR(32),						#分期
  num VARCHAR(32),            #数量
  server_con VARCHAR(128)     #服务说明
);

/**手机图片**/
CREATE TABLE mz_phone_pic(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  phone_id INT,               #手机编号
  pname VARCHAR(32),					#手机名
  color VARCHAR(32),					#手机颜色
  sm VARCHAR(128),            #小图片路径
  lg VARCHAR(128)             #大图片路径
);

/**用户信息**/
CREATE TABLE mz_user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(32),
  upwd VARCHAR(32),
  email VARCHAR(64),
  phone VARCHAR(16),

  avatar VARCHAR(128),        #头像图片路径
  user_name VARCHAR(32),      #用户名，如王小明
  gender INT                  #性别  0-女  1-男
);

/**收货地址信息**/
CREATE TABLE mz_receiver_address(
  aid INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,                #用户编号
  receiver VARCHAR(16),       #接收人姓名
  province VARCHAR(16),       #省
  city VARCHAR(16),           #市
  county VARCHAR(16),         #县
  address VARCHAR(128),       #详细地址
  cellphone VARCHAR(16),      #手机
  fixedphone VARCHAR(16),     #固定电话
  postcode CHAR(6),           #邮编
  tag VARCHAR(16),            #标签名

  is_default BOOLEAN          #是否为当前用户的默认收货地址
);

/**购物车条目**/
CREATE TABLE mz_shoppingcart_item(
  iid INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,      #用户编号
  product_id INT,   #商品编号
  count INT,        #购买数量
  is_checked BOOLEAN #是否已勾选，确定购买
);

/**用户订单**/
CREATE TABLE mz_order(
  aid INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,
  address_id INT,
  status INT,             #订单状态  1-等待付款  2-等待发货  3-运输中  4-已签收  5-已取消
  order_time BIGINT,      #下单时间
  pay_time BIGINT,        #付款时间
  deliver_time BIGINT,    #发货时间
  received_time BIGINT    #签收时间
)AUTO_INCREMENT=10000000;

/**用户订单**/
CREATE TABLE mz_order_detail(
  did INT PRIMARY KEY AUTO_INCREMENT,
  order_id INT,           #订单编号
  product_id INT,         #产品编号
  count INT               #购买数量
);

/****首页轮播广告商品****/
CREATE TABLE mz_index_carousel(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  title VARCHAR(64),
  href VARCHAR(128)
);

/****首页商品****/
CREATE TABLE mz_index_product(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(64),
  details VARCHAR(128),
  pic VARCHAR(128),
  price DECIMAL(10,2)
);

/******数据导入******/
/**家族分类**/
INSERT INTO mz_family VALUES
(1,'手机'),
(2,'手机配件');

/**手机分类**/
INSERT INTO mz_phone_family VALUES
(1,'魅族&nbsp;PRO&nbsp;7','../images/phone/mz-PRO-7/mz-PRO-7-1.jpg','<img src="../images/phone/mz-PRO-7/mz-PRO-7-1.jpg"><img src="../images/phone/mz-PRO-7/mz-PRO-7-2.jpg"><img src="../images/phone/mz-PRO-7/mz-PRO-7-3.jpg"><img src="../images/phone/mz-PRO-7/mz-PRO-7-4.jpg">','双瞳如小窗&nbsp;佳景观历历','￥&nbsp;1299&nbsp;起'),
(2,'魅族&nbsp;PRO&nbsp;7&nbsp;Plus','../images/phone/mz-PRO-7Plus/mz-PRO-7Plus-1.jpg','<img src="../images/phone/mz-PRO-7Plus/mz-PRO-7Plus-1.jpg"><img src="../images/phone/mz-PRO-7Plus/mz-PRO-7Plus-2.jpg"><img src="../images/phone/mz-PRO-7Plus/mz-PRO-7Plus-3.jpg"><img src="../images/phone/mz-PRO-7Plus/mz-PRO-7Plus-4.jpg">','双瞳如小窗&nbsp;佳景观历历','￥&nbsp;1799&nbsp;起'),
(3,'魅蓝&nbsp;Note6','../images/phone/ml-Note6/ml-Note6-1.jpg','<img src="../images/phone/ml-Note6/ml-Note6-1.jpg"><img src="../images/phone/ml-Note6/ml-Note6-2.jpg"><img src="../images/phone/ml-Note6/ml-Note6-3.jpg"><img src="../images/phone/ml-Note6/ml-Note6-4.jpg">','双瞳','￥&nbsp;799&nbsp;起'),
(4,'魅蓝&nbsp;6','../images/phone/ml-Note6/ml-Note6-1.jpg','<img src="../images/phone/ml-Note6/ml-Note6-1.jpg"><img src="../images/phone/ml-Note6/ml-Note6-2.jpg"><img src="../images/phone/ml-Note6/ml-Note6-3.jpg"><img src="../images/phone/ml-Note6/ml-Note6-4.jpg">','双瞳','￥&nbsp;799&nbsp;起'),
(5,'魅蓝&nbsp;6T','../images/phone/ml-6t/ml-6t-1.jpg','<img src="../images/phone/ml-6t/ml-6t-1.jpg"><img src="../images/phone/ml-6t/ml-6t-2.jpg"><img src="../images/phone/ml-6t/ml-6t-3.jpg">','双瞳','￥&nbsp;799&nbsp;起'),
(6,'魅蓝&nbsp;E3','../images/phone/ml-E3/ml-E3-1.jpg','<img src="../images/phone/ml-E3/ml-E3-1.jpg"><img src="../images/phone/ml-E3/ml-E3-1.jpg">','骁龙636处理器 全系6G大运存','￥&nbsp;1799&nbsp;起'),
(7,'魅蓝&nbsp;S6','../images/phone/ml-s6/ml-s6-1.jpg','<img src="../images/phone/ml-s6/ml-s6-1.jpg">','领券立减','￥&nbsp;999&nbsp;起'),
(8,'魅族&nbsp;M15','../images/phone/mz-M15/mz-M15-1.jpg','<img src="../images/phone/mz-M15/mz-M15-1.jpg"><img src="../images/phone/mz-M15/mz-M15-2.jpg"><img src="../images/phone/mz-M15/mz-M15-3.jpg">','魅族15系列最高降501元，享魅族16系列优先购买权','￥&nbsp;1398&nbsp;起'),
(9,'魅族&nbsp;15','../images/phone/mz-15/mz-15-1.jpg','<img src="../images/phone/mz-15/mz-15-1.jpg"><img src="../images/phone/mz-15/mz-15-2.jpg"><img src="../images/phone/mz-15/mz-15-3.jpg"><img src="../images/phone/mz-15/mz-15-4.jpg">','魅族15系列最高降501元，享魅族16系列优先购买权','￥&nbsp;1998&nbsp;起'),
(10,'魅族&nbsp;15&nbsp;Plus','../images/phone/mz-15Plus/mz-15Plus-1.jpg','<img src="../images/phone/mz-15Plus/mz-15Plus-1.jpg"><img src="../images/phone/mz-15Plus/mz-15Plus-2.jpg"><img src="../images/phone/mz-15Plus/mz-15Plus-3.jpg">','魅族15系列最高降501元，享魅族16系列优先购买权','￥&nbsp;2498&nbsp;起'),
(11,'魅族&nbsp;16th','../images/phone/mz-16th/mz-16th-1.jpg','<img src="../images/phone/mz-16th/mz-16th-1.jpg"><img src="../images/phone/mz-16th/mz-16th-2.jpg">','全款预订订单按付款时间先后发货','￥&nbsp;2698&nbsp;起'),
(12,'魅族&nbsp;16th&nbsp;Plus','../images/phone/mz-16th-Plus/mz-16th-Plus-1.jpg','<img src="../images/phone/mz-16th-Plus/mz-16th-Plus-1.jpg"><img src="../images/phone/mz-16th-Plus/mz-16th-Plus-2.jpg">','全款预订订单按付款时间先后发货','￥&nbsp;3198&nbsp;起');

/**手机图片**/
INSERT INTO mz_phone_pic VALUES
(1,1,'魅族PRO7','gold','../images/phone/mz-PRO-7/index/big/mz-PRO-7-gold1','<img src="../images/phone/mz-PRO-7/index/small/mz-PRO-7-gold1"><img src="../images/phone/mz-PRO-7/index/small/mz-PRO-7-gold2"><img src="../images/phone/mz-PRO-7/index/small/mz-PRO-7-gold3"><img src="../images/phone/mz-PRO-7/mz-PRO-7/index/small/mz-PRO-7-gold4">'),
(2,1,'魅族PRO7','black','../images/phone/mz-PRO-7/index/big/mz-PRO-7-black1','<img src="../images/phone/mz-PRO-7/index/small/mz-PRO-7-black1"><img src="../images/phone/mz-PRO-7/index/small/mz-PRO-7-black2"><img src="../images/phone/mz-PRO-7/index/small/mz-PRO-7-black3"><img src="../images/phone/mz-PRO-7/index/small/mz-PRO-7-black4">'),
(3,1,'魅族PRO7','silver','../images/phone/mz-PRO-7/index/big/mz-PRO-7-silver1','<img src="../images/phone/mz-PRO-7/index/small/mz-PRO-7-silver1"><img src="../images/phone/mz-PRO-7/index/small/mz-PRO-7-silver2"><img src="../images/phone/mz-PRO-7/index/small/mz-PRO-7-silver3"><img src="../images/phone/mz-PRO-7/index/small/mz-PRO-7-silver4">'),
(4,2,'魅族PRO7Plus','gold','../images/phone/mz-PRO-7/index/big/mz-PRO-7-gold1','<img src="../images/phone/mz-PRO-7/index/small/mz-PRO-7-gold1"><img src="../images/phone/mz-PRO-7/index/small/mz-PRO-7-gold2"><img src="../images/phone/mz-PRO-7/index/small/mz-PRO-7-gold3"><img src="../images/phone/mz-PRO-7/index/small/mz-PRO-7-gold4">'),
(5,2,'魅族PRO7Plus','black','../images/phone/mz-PRO-7/index/big/mz-PRO-7-black1','<img src="../images/phone/mz-PRO-7/index/small/mz-PRO-7-black1"><img src="../images/phone/mz-PRO-7/index/small/mz-PRO-7-black2"><img src="../images/phone/mz-PRO-7/index/small/mz-PRO-7-black3"><img src="../images/phone/mz-PRO-7/index/small/mz-PRO-7-black4">'),
(6,2,'魅族PRO7Plus','silver','../images/phone/mz-PRO-7/index/big/mz-PRO-7-silver1','<img src="../images/phone/mz-PRO-7/index/small/mz-PRO-7-silver1"><img src="../images/phone/mz-PRO-7/index/small/mz-PRO-7-silver2"><img src="../images/phone/mz-PRO-7/index/small/mz-PRO-7-silver3"><img src="../images/phone/mz-PRO-7/index/small/mz-PRO-7-silver4">'),
(7,3,'魅蓝Note6','gold','../images/phone/ml-Note6/index/big/ml-Note6-gold1','<img src="../images/phone/ml-Note6/index/small/ml-Note6-gold1"><img src="../images/phone/ml-Note6/index/small/ml-Note6-gold2"><img src="../images/phone/ml-Note6/index/small/ml-Note6-gold3"><img src="../images/phone/ml-Note6/index/small/ml-Note6-gold4">'),
(8,3,'魅蓝Note6','black','../images/phone/ml-Note6/index/big/ml-Note6-black1','<img src="../images/phone/ml-Note6/index/small/ml-Note6-black1"><img src="../images/phone/ml-Note6/index/small/ml-Note6-black2"><img src="../images/phone/ml-Note6/index/small/ml-Note6-black3"><img src="../images/phone/ml-Note6/index/small/ml-Note6-black4">'),
(9,3,'魅蓝Note6','silver','../images/phone/ml-Note6/index/big/ml-Note6-silver1','<img src="../images/phone/ml-Note6/index/small/ml-Note6-silver1"><img src="../images/phone/ml-Note6/index/small/ml-Note6-silver2"><img src="../images/phone/ml-Note6/index/small/ml-Note6-silver3"><img src="../images/phone/ml-Note66/index/small/ml-Note6-silver4">'),
(10,3,'魅蓝Note6','blue','../images/phone/ml-Note6/index/big/ml-Note6-blue1','<img src="../images/phone/ml-Note6/index/small/ml-Note6-blue1"><img src="../images/phone/ml-Note6/index/small/ml-Note6-blue2"><img src="../images/phone/ml-Note6/index/small/ml-Note6-blue3"><img src="../images/phone/ml-Note6/index/small/ml-Note6-blue4">'),
(11,4,'魅蓝6','gold','../images/phone/ml-6/index/big/ml-6-gold1','<img src="../images/phone/ml-6/index/small/ml-6-gold1"><img src="../images/phone/ml-6/index/small/ml-6-gold2"><img src="../images/phone/ml-6/index/small/ml-6-gold3"><img src="../images/phone/ml-6/index/small/ml-6-gold4">'),
(12,4,'魅蓝6','black','../images/phone/ml-6/index/big/ml-6-black1','<img src="../images/phone/ml-6/index/small/ml-6-black1"><img src="../images/phone/ml-6/index/small/ml-6-black2"><img src="../images/phone/ml-6/index/small/ml-6-black3"><img src="../images/phone/ml-6/index/small/ml-6-black4">'),
(13,4,'魅蓝6','silver','../images/phone/ml-6/index/big/ml-6-silver1','<img src="../images/phone/ml-6/index/small/ml-6-silver1"><img src="../images/phone/ml-6/index/small/ml-6-silver2"><img src="../images/phone/ml-6/index/small/ml-6-silver3"><img src="../images/phone/ml-Note66/index/small/ml-Note6-silver4">'),
(14,4,'魅蓝6','blue','../images/phone/ml-6/index/big/ml-6-blue1','<img src="../images/phone/ml-6/index/small/ml-6-blue1"><img src="../images/phone/ml-6/index/small/ml-6-blue2"><img src="../images/phone/ml-6/index/small/ml-6-blue3"><img src="../images/phone/ml-6/index/small/ml-6-blue4">'),
(15,5,'魅蓝6T','gold','../images/phone/ml-6/index/big/ml-6-gold1','<img src="../images/phone/ml-6/index/small/ml-6-gold1"><img src="../images/phone/ml-6/index/small/ml-6-gold2"><img src="../images/phone/ml-6/index/small/ml-6-gold3"><img src="../images/phone/ml-6/index/small/ml-6-gold4">'),
(16,5,'魅蓝6T','black','../images/phone/ml-6/index/big/ml-6-black1','<img src="../images/phone/ml-6/index/small/ml-6-black1"><img src="../images/phone/ml-6/index/small/ml-6-black2"><img src="../images/phone/ml-6/index/small/ml-6-black3"><img src="../images/phone/ml-6/index/small/ml-6-black4">'),
(17,5,'魅蓝6T','blue','../images/phone/ml-6/index/big/ml-6-blue1','<img src="../images/phone/ml-6/index/small/ml-6-blue1"><img src="../images/phone/ml-6/index/small/ml-6-blue2"><img src="../images/phone/ml-6/index/small/ml-6-blue3"><img src="../images/phone/ml-6/index/small/ml-6-blue4">'),
(18,6,'魅蓝E3','gold','../images/phone/ml-6/index/big/ml-6-gold1','<img src="../images/phone/ml-6/index/small/ml-6-gold1"><img src="../images/phone/ml-6/index/small/ml-6-gold2"><img src="../images/phone/ml-6/index/small/ml-6-gold3"><img src="../images/phone/ml-6/index/small/ml-6-gold4">'),
(19,6,'魅蓝E3','black','../images/phone/ml-6/index/big/ml-6-black1','<img src="../images/phone/ml-6/index/small/ml-6-black1"><img src="../images/phone/ml-6/index/small/ml-6-black2"><img src="../images/phone/ml-6/index/small/ml-6-black3"><img src="../images/phone/ml-6/index/small/ml-6-black4">'),
(20,7,'魅蓝S6','blue','../images/phone/ml-s6/big/index/ml-s6-blue1','<img src="../images/phone/ml-s6/index/small/ml-s6-blue1"><img src="../images/phone/ml-s6/index/small/ml-s6-blue2"><img src="../images/phone/ml-s6/index/small/ml-s6-blue3"><img src="../images/phone/ml-s6/index/small/ml-s6-blue4">'),
(21,8,'魅族M15','gold','../images/phone/mz-M15/index/big/mz-M15-gold1','<img src="../images/phone/mz-M15/index/small/mz-M15-gold1"><img src="../images/phone/mz-M15/index/small/mz-M15-gold2"><img src="../images/phone/mz-M15/index/small/mz-M15-gold3"><img src="../images/phone/mz-M15/index/small/mz-M15-gold4">'),
(22,8,'魅族M15','black','../images/phone/mz-M15/index/big/mz-M15-black1','<img src="../images/phone/mz-M15/index/small/mz-M15-black1"><img src="../images/phone/mz-M15/index/small/mz-M15-black2"><img src="../images/phone/mz-M15/index/small/mz-M15-black3"><img src="../images/phone/mz-M15/index/small/mz-M15-black4">'),
(23,8,'魅族M15','blue','../images/phone/mz-M15/index/big/mz-M15-blue1','<img src="../images/phone/mz-M15/index/small/mz-M15-blue1"><img src="../images/phone/mz-M15/index/small/mz-M15-blue2"><img src="../images/phone/mz-M15/index/small/mz-M15-blue3"><img src="../images/phone/mz-M15/index/small/mz-M15-blue4">'),
(24,9,'魅族15Plus','gold','../images/phone/mz-M15/index/big/mz-M15-gold1','<img src="../images/phone/mz-M15/index/small/mz-M15-gold1"><img src="../images/phone/mz-M15/index/small/mz-M15-gold2"><img src="../images/phone/mz-M15/index/small/mz-M15-gold3"><img src="../images/phone/mz-M15/index/small/mz-M15-gold4">'),
(25,9,'魅族15Plus','black','../images/phone/mz-M15/index/big/mz-M15-black1','<img src="../images/phone/mz-M15/index/small/mz-M15-black1"><img src="../images/phone/mz-M15/index/small/mz-M15-black2"><img src="../images/phone/mz-M15/index/small/mz-M15-black3"><img src="../images/phone/mz-M15/index/small/mz-M15-black4">'),
(26,9,'魅族15Plus','white','../images/phone/mz-M15/index/big/mz-M15-silver1','<img src="../images/phone/mz-M15/index/small/mz-M15-silver1"><img src="../images/phone/mz-M15/index/small/mz-M15-silver2"><img src="../images/phone/mz-M15/index/small/mz-M15-silver3"><img src="../images/phone/ml-Note66/index/small/ml-Note6-silver4">'),
(27,10,'魅族15','gold','../images/phone/mz-M15/index/big/mz-M15-gold1','<img src="../images/phone/mz-M15/index/small/mz-M15-gold1"><img src="../images/phone/mz-M15/index/small/mz-M15-gold2"><img src="../images/phone/mz-M15/index/small/mz-M15-gold3"><img src="../images/phone/mz-M15/index/small/mz-M15-gold4">'),
(28,10,'魅族15','black','../images/phone/mz-M15/index/big/mz-M15-black1','<img src="../images/phone/mz-M15/index/small/mz-M15-black1"><img src="../images/phone/mz-M15/index/small/mz-M15-black2"><img src="../images/phone/mz-M15/index/small/mz-M15-black3"><img src="../images/phone/mz-M15/index/small/mz-M15-black4">'),
(29,10,'魅族15','white','../images/phone/mz-M15/index/big/mz-M15-silver1','<img src="../images/phone/mz-M15/index/small/mz-M15-silver1"><img src="../images/phone/mz-M15/index/small/mz-M15-silver2"><img src="../images/phone/mz-M15/index/small/mz-M15-silver3"><img src="../images/phone/ml-Note66/index/small/ml-Note6-silver4">'),
(30,11,'魅族16th','black','../images/phone/mz-16th/index/big/mz-16th-black1','<img src="../images/phone/mz-16th/index/small/mz-16th-black1"><img src="../images/phone/mz-16th/index/small/mz-16th-black2"><img src="../images/phone/mz-16th/index/small/mz-16th-black3"><img src="../images/phone/mz-16th/index/small/mz-16th-black4">'),
(31,11,'魅族16th','white','../images/phone/mz-16th/index/big/mz-16th-silver1','<img src="../images/phone/mz-16th/index/small/mz-16th-silver1"><img src="../images/phone/mz-16th/index/small/mz-16th-silver2"><img src="../images/phone/mz-16th/index/small/mz-16th-silver3"><img src="../images/phone/ml-Note66/index/small/ml-Note6-silver4">'),
(32,12,'魅族16thPlus','black','../images/phone/mz-16th/index/big/mz-16th-black1','<img src="../images/phone/mz-16th/index/small/mz-16th-black1"><img src="../images/phone/mz-16th/index/small/mz-16th-black2"><img src="../images/phone/mz-16th/index/small/mz-16th-black3"><img src="../images/phone/mz-16th/index/small/mz-16th-black4">'),
(33,12,'魅族16thPlus','white','../images/phone/mz-16th/index/big/mz-16th-silver1','<img src="../images/phone/mz-16th/index/small/mz-16th-silver1"><img src="../images/phone/mz-16th/index/small/mz-16th-silver2"><img src="../images/phone/mz-16th/index/small/mz-16th-silver3"><img src="../images/phone/ml-Note66/index/small/ml-Note6-silver4">');

/**手机**/
INSERT INTO mz_phone VALUES
/**魅族 PRO 7，金银黑，4-64/4-128，标准，0和3期**/
(1,1,1,'魅族 PRO 7','双瞳如小窗 佳景观历历','1299.00','<span>花呗分期</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 PRO 7','全网通公开版','香槟金','4+64GB','1','3','50',NULL),
(2,1,1,'魅族 PRO 7','双瞳如小窗 佳景观历历','1299.00','<span>花呗分期</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 PRO 7','全网通公开版','静谧黑','4+64GB','1','3','50',NULL),
(3,1,1,'魅族 PRO 7','双瞳如小窗 佳景观历历','1299.00','<span>花呗分期</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 PRO 7','全网通公开版','提香银','4+64GB','1','3','50',NULL),
(4,1,1,'魅族 PRO 7','双瞳如小窗 佳景观历历','1599.00','<span>花呗分期</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 PRO 7','全网通公开版','香槟金','4+128GB','1','3','50',NULL),
(5,1,1,'魅族 PRO 7','双瞳如小窗 佳景观历历','1599.00','<span>花呗分期</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 PRO 7','全网通公开版','静谧黑','4+128GB','1','3','50',NULL),
(6,1,1,'魅族 PRO 7','双瞳如小窗 佳景观历历','1599.00','<span>花呗分期</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 PRO 7','全网通公开版','提香银','4+128GB','1','3','50',NULL),
(7,1,1,'魅族 PRO 7','双瞳如小窗 佳景观历历','1299.00','<span>花呗分期</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 PRO 7','全网通公开版','香槟金','4+64GB','1','0','50',NULL),
(8,1,1,'魅族 PRO 7','双瞳如小窗 佳景观历历','1299.00','<span>花呗分期</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 PRO 7','全网通公开版','静谧黑','4+64GB','1','0','50',NULL),
(9,1,1,'魅族 PRO 7','双瞳如小窗 佳景观历历','1299.00','<span>花呗分期</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 PRO 7','全网通公开版','提香银','4+64GB','1','0','50',NULL),
(10,1,1,'魅族 PRO 7','双瞳如小窗 佳景观历历','1599.00','<span>花呗分期</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 PRO 7','全网通公开版','香槟金','4+128GB','1','0','50',NULL),
(11,1,1,'魅族 PRO 7','双瞳如小窗 佳景观历历','1599.00','<span>花呗分期</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 PRO 7','全网通公开版','静谧黑','4+128GB','1','0','50',NULL),
(12,1,1,'魅族 PRO 7','双瞳如小窗 佳景观历历','1599.00','<span>花呗分期</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 PRO 7','全网通公开版','提香银','4+128GB','1','0','50',NULL),
/**魅族 PRO 7 Plus，金银黑，6-64/6-128，标准，0和3期**/
(13,1,2,'魅族 PRO 7 Plus','双瞳如小窗 佳景观历历','1799.00','<span>花呗分期</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 PRO 7 Plus','全网通公开版','香槟金','6+64GB','1','3','50',NULL),
(14,1,2,'魅族 PRO 7 Plus','双瞳如小窗 佳景观历历','1799.00','<span>花呗分期</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 PRO 7 Plus','全网通公开版','静谧黑','6+64GB','1','3','50',NULL),
(15,1,2,'魅族 PRO 7 Plus','双瞳如小窗 佳景观历历','1799.00','<span>花呗分期</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 PRO 7 Plus','全网通公开版','提香银','6+64GB','1','3','50',NULL),
(16,1,2,'魅族 PRO 7 Plus','双瞳如小窗 佳景观历历','1999.00','<span>花呗分期</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 PRO 7 Plus','全网通公开版','香槟金','6+128GB','1','3','50',NULL),
(17,1,2,'魅族 PRO 7 Plus','双瞳如小窗 佳景观历历','1999.00','<span>花呗分期</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 PRO 7 Plus','全网通公开版','静谧黑','6+128GB','1','3','50',NULL),
(18,1,2,'魅族 PRO 7 Plus','双瞳如小窗 佳景观历历','1999.00','<span>花呗分期</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 PRO 7 Plus','全网通公开版','提香银','6+128GB','1','3','50',NULL),
(19,1,2,'魅族 PRO 7 Plus','双瞳如小窗 佳景观历历','1799.00','<span>花呗分期</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 PRO 7 Plus','全网通公开版','香槟金','6+64GB','1','0','50',NULL),
(20,1,2,'魅族 PRO 7 Plus','双瞳如小窗 佳景观历历','1799.00','<span>花呗分期</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 PRO 7 Plus','全网通公开版','静谧黑','6+64GB','1','0','50',NULL),
(21,1,2,'魅族 PRO 7 Plus','双瞳如小窗 佳景观历历','1799.00','<span>花呗分期</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 PRO 7 Plus','全网通公开版','提香银','6+64GB','1','0','50',NULL),
(22,1,2,'魅族 PRO 7 Plus','双瞳如小窗 佳景观历历','1999.00','<span>花呗分期</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 PRO 7 Plus','全网通公开版','香槟金','6+128GB','1','0','50',NULL),
(23,1,2,'魅族 PRO 7 Plus','双瞳如小窗 佳景观历历','1999.00','<span>花呗分期</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 PRO 7 Plus','全网通公开版','静谧黑','6+128GB','1','0','50',NULL),
(24,1,2,'魅族 PRO 7 Plus','双瞳如小窗 佳景观历历','1999.00','<span>花呗分期</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 PRO 7 Plus','全网通公开版','提香银','6+128GB','1','0','50',NULL),
/**魅蓝 Note6，金银黑蓝，3-32/4-32，标准，0和3期**/
(25,1,3,'魅蓝 Note6',NULL,'899.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅蓝 Note6','全网通公开版','提香银','3+32GB','1','0','50',NULL),
(26,1,3,'魅蓝 Note6',NULL,'899.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅蓝 Note6','全网通公开版','曜石黑','3+32GB','1','0','50',NULL),
(27,1,3,'魅蓝 Note6',NULL,'899.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅蓝 Note6','全网通公开版','香槟金','3+32GB','1','0','50',NULL),
(28,1,3,'魅蓝 Note6',NULL,'899.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅蓝 Note6','全网通公开版','淡钴蓝','3+32GB','1','0','50',NULL),
(29,1,3,'魅蓝 Note6',NULL,'1099.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅蓝 Note6','全网通公开版','提香银','4+32GB','1','0','50',NULL),
(30,1,3,'魅蓝 Note6',NULL,'1099.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅蓝 Note6','全网通公开版','曜石黑','4+32GB','1','0','50',NULL),
(31,1,3,'魅蓝 Note6',NULL,'1099.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅蓝 Note6','全网通公开版','香槟金','4+32GB','1','0','50',NULL),
(32,1,3,'魅蓝 Note6',NULL,'1099.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅蓝 Note6','全网通公开版','淡钴蓝','4+32GB','1','0','50',NULL),
(33,1,3,'魅蓝 Note6',NULL,'899.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅蓝 Note6','全网通公开版','提香银','3+32GB','1','3','50',NULL),
(34,1,3,'魅蓝 Note6',NULL,'899.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅蓝 Note6','全网通公开版','曜石黑','3+32GB','1','3','50',NULL),
(35,1,3,'魅蓝 Note6',NULL,'899.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅蓝 Note6','全网通公开版','香槟金','3+32GB','1','3','50',NULL),
(36,1,3,'魅蓝 Note6',NULL,'899.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅蓝 Note6','全网通公开版','淡钴蓝','3+32GB','1','3','50',NULL),
(37,1,3,'魅蓝 Note6',NULL,'1099.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅蓝 Note6','全网通公开版','提香银','4+32GB','1','3','50',NULL),
(38,1,3,'魅蓝 Note6',NULL,'1099.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅蓝 Note6','全网通公开版','曜石黑','4+32GB','1','3','50',NULL),
(39,1,3,'魅蓝 Note6',NULL,'1099.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅蓝 Note6','全网通公开版','香槟金','4+32GB','1','3','50',NULL),
(40,1,3,'魅蓝 Note6',NULL,'1099.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅蓝 Note6','全网通公开版','淡钴蓝','4+32GB','1','3','50',NULL),
/**魅蓝 6，金银黑蓝，3-32/4-32，标准，0和3期**/
(41,1,4,'魅蓝 6',NULL,'799.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅蓝 6','全网通公开版','提香银','2+16GB','1','3','50',NULL),
(42,1,4,'魅蓝 6',NULL,'799.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅蓝 6','全网通公开版','曜石黑','2+16GB','1','3','50',NULL),
(43,1,4,'魅蓝 6',NULL,'799.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅蓝 6','全网通公开版','香槟金','2+16GB','1','3','50',NULL),
(44,1,4,'魅蓝 6',NULL,'799.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅蓝 6','全网通公开版','淡钴蓝','2+16GB','1','3','50',NULL),
(45,1,4,'魅蓝 6',NULL,'599.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅蓝 6','全网通公开版','提香银','2+32GB','1','3','50',NULL),
(46,1,4,'魅蓝 6',NULL,'599.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅蓝 6','全网通公开版','曜石黑','2+32GB','1','3','50',NULL),
(47,1,4,'魅蓝 6',NULL,'599.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅蓝 6','全网通公开版','香槟金','2+32GB','1','3','50',NULL),
(48,1,4,'魅蓝 6',NULL,'599.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅蓝 6','全网通公开版','淡钴蓝','2+32GB','1','3','50',NULL),
(49,1,4,'魅蓝 6',NULL,'799.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅蓝 6','全网通公开版','提香银','2+16GB','1','0','50',NULL),
(50,1,4,'魅蓝 6',NULL,'799.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅蓝 6','全网通公开版','曜石黑','2+16GB','1','0','50',NULL),
(51,1,4,'魅蓝 6',NULL,'799.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅蓝 6','全网通公开版','香槟金','2+16GB','1','0','50',NULL),
(52,1,4,'魅蓝 6',NULL,'799.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅蓝 6','全网通公开版','淡钴蓝','2+16GB','1','0','50',NULL),
(53,1,4,'魅蓝 6',NULL,'599.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅蓝 6','全网通公开版','提香银','2+32GB','1','0','50',NULL),
(54,1,4,'魅蓝 6',NULL,'599.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅蓝 6','全网通公开版','曜石黑','2+32GB','1','0','50',NULL),
(55,1,4,'魅蓝 6',NULL,'599.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅蓝 6','全网通公开版','香槟金','2+32GB','1','0','50',NULL),
(56,1,4,'魅蓝 6',NULL,'599.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅蓝 6','全网通公开版','淡钴蓝','2+32GB','1','0','50',NULL),
/**魅蓝 6T，金黑蓝，4-32/4-64，标准/套餐1，0和3期**/
(57,1,5,'魅蓝 6T','双摄全面屏，游戏长续航','999.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅蓝 6T','全网通公开版','曜石黑','4+32GB','1','3','50',NULL),
(58,1,5,'魅蓝 6T','双摄全面屏，游戏长续航','999.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅蓝 6T','全网通公开版','香槟金','4+32GB','1','3','50',NULL),
(59,1,5,'魅蓝 6T','双摄全面屏，游戏长续航','999.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅蓝 6T','全网通公开版','淡钴蓝','4+32GB','1','3','50',NULL),
(60,1,5,'魅蓝 6T','双摄全面屏，游戏长续航','1037.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅蓝 6T','全网通公开版','曜石黑','4+32GB','2','3','50',NULL),
(61,1,5,'魅蓝 6T','双摄全面屏，游戏长续航','1037.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅蓝 6T','全网通公开版','香槟金','4+32GB','2','3','50',NULL),
(62,1,5,'魅蓝 6T','双摄全面屏，游戏长续航','1037.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅蓝 6T','全网通公开版','淡钴蓝','4+32GB','2','3','50',NULL),
(63,1,5,'魅蓝 6T','双摄全面屏，游戏长续航','1099.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅蓝 6T','全网通公开版','曜石黑','4+64GB','1','3','50',NULL),
(64,1,5,'魅蓝 6T','双摄全面屏，游戏长续航','1099.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅蓝 6T','全网通公开版','香槟金','4+64GB','1','3','50',NULL),
(65,1,5,'魅蓝 6T','双摄全面屏，游戏长续航','1099.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅蓝 6T','全网通公开版','淡钴蓝','4+64GB','1','3','50',NULL),
(66,1,5,'魅蓝 6T','双摄全面屏，游戏长续航','1137.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅蓝 6T','全网通公开版','曜石黑','4+64GB','2','3','50',NULL),
(67,1,5,'魅蓝 6T','双摄全面屏，游戏长续航','1137.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅蓝 6T','全网通公开版','香槟金','4+64GB','2','3','50',NULL),
(68,1,5,'魅蓝 6T','双摄全面屏，游戏长续航','1137.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅蓝 6T','全网通公开版','淡钴蓝','4+64GB','2','3','50',NULL),
(69,1,5,'魅蓝 6T','双摄全面屏，游戏长续航','999.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅蓝 6T','全网通公开版','曜石黑','4+32GB','1','0','50',NULL),
(70,1,5,'魅蓝 6T','双摄全面屏，游戏长续航','999.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅蓝 6T','全网通公开版','香槟金','4+32GB','1','0','50',NULL),
(71,1,5,'魅蓝 6T','双摄全面屏，游戏长续航','999.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅蓝 6T','全网通公开版','淡钴蓝','4+32GB','1','0','50',NULL),
(72,1,5,'魅蓝 6T','双摄全面屏，游戏长续航','1037.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅蓝 6T','全网通公开版','曜石黑','4+32GB','2','0','50',NULL),
(73,1,5,'魅蓝 6T','双摄全面屏，游戏长续航','1037.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅蓝 6T','全网通公开版','香槟金','4+32GB','2','0','50',NULL),
(74,1,5,'魅蓝 6T','双摄全面屏，游戏长续航','1037.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅蓝 6T','全网通公开版','淡钴蓝','4+32GB','2','0','50',NULL),
(75,1,5,'魅蓝 6T','双摄全面屏，游戏长续航','1099.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅蓝 6T','全网通公开版','曜石黑','4+64GB','1','0','50',NULL),
(76,1,5,'魅蓝 6T','双摄全面屏，游戏长续航','1099.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅蓝 6T','全网通公开版','香槟金','4+64GB','1','0','50',NULL),
(77,1,5,'魅蓝 6T','双摄全面屏，游戏长续航','1099.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅蓝 6T','全网通公开版','淡钴蓝','4+64GB','1','0','50',NULL),
(78,1,5,'魅蓝 6T','双摄全面屏，游戏长续航','1137.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅蓝 6T','全网通公开版','曜石黑','4+64GB','2','0','50',NULL),
(79,1,5,'魅蓝 6T','双摄全面屏，游戏长续航','1137.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅蓝 6T','全网通公开版','香槟金','4+64GB','2','0','50',NULL),
(80,1,5,'魅蓝 6T','双摄全面屏，游戏长续航','1137.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅蓝 6T','全网通公开版','淡钴蓝','4+64GB','2','0','50',NULL),
/**魅蓝 E3，金黑，6-64，标准/套餐1，0和3期**/
(81,1,6,'魅蓝 E3','骁龙636处理器 全系6G大运存','1799.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅蓝 E3','全网通公开版','香槟金','6+64GB','1','0','50',NULL),
(82,1,6,'魅蓝 E3','骁龙636处理器 全系6G大运存','1837.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅蓝 E3','全网通公开版','曜石黑','6+64GB','2','0','50',NULL),
(83,1,6,'魅蓝 E3','骁龙636处理器 全系6G大运存','1799.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅蓝 E3','全网通公开版','香槟金','6+64GB','1','3','50',NULL),
(84,1,6,'魅蓝 E3','骁龙636处理器 全系6G大运存','1837.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅蓝 E3','全网通公开版','曜石黑','6+64GB','2','3','50',NULL),
/**魅蓝 S6，蓝，3-64，标准，0和3期**/
(85,1,7,'魅蓝 S6','领券立减','1199.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅蓝 S6','全网通公开版','淡钴蓝','3+64GB','1','0','50',NULL),
(86,1,7,'魅蓝 S6','领券立减','1199.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅蓝 S6','全网通公开版','淡钴蓝','3+64GB','1','3','50',NULL),
/**魅族 M15，金黑蓝，6-64，标准/套餐1，0和3期**/
(87,1,8,'魅族 M15','魅族15系列最高降501元，享魅族16系列优先购买权','1398.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 M15','全网通公开版','曜石黑','4+64GB','1','3','50',NULL),
(88,1,8,'魅族 M15','魅族15系列最高降501元，享魅族16系列优先购买权','1398.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 M15','全网通公开版','香槟金','4+64GB','1','3','50',NULL),
(89,1,8,'魅族 M15','魅族15系列最高降501元，享魅族16系列优先购买权','1398.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 M15','全网通公开版','淡钴蓝','4+64GB','1','3','50',NULL),
(90,1,8,'魅族 M15','魅族15系列最高降501元，享魅族16系列优先购买权','1436.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 M15','全网通公开版','曜石黑','4+64GB','2','3','50',NULL),
(91,1,8,'魅族 M15','魅族15系列最高降501元，享魅族16系列优先购买权','1436.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 M15','全网通公开版','香槟金','4+64GB','2','3','50',NULL),
(92,1,8,'魅族 M15','魅族15系列最高降501元，享魅族16系列优先购买权','1436.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 M15','全网通公开版','淡钴蓝','4+64GB','2','3','50',NULL),
(93,1,8,'魅族 M15','魅族15系列最高降501元，享魅族16系列优先购买权','1398.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 M15','全网通公开版','曜石黑','4+64GB','1','0','50',NULL),
(94,1,8,'魅族 M15','魅族15系列最高降501元，享魅族16系列优先购买权','1398.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 M15','全网通公开版','香槟金','4+64GB','1','0','50',NULL),
(95,1,8,'魅族 M15','魅族15系列最高降501元，享魅族16系列优先购买权','1398.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 M15','全网通公开版','淡钴蓝','4+64GB','1','0','50',NULL),
(96,1,8,'魅族 M15','魅族15系列最高降501元，享魅族16系列优先购买权','1436.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 M15','全网通公开版','曜石黑','4+64GB','2','0','50',NULL),
(97,1,8,'魅族 M15','魅族15系列最高降501元，享魅族16系列优先购买权','1436.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 M15','全网通公开版','香槟金','4+64GB','2','0','50',NULL),
(98,1,8,'魅族 M15','魅族15系列最高降501元，享魅族16系列优先购买权','1436.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 M15','全网通公开版','淡钴蓝','4+64GB','2','0','50',NULL),
/**魅族 15 Plus，金黑白，6-64/6-128，标准/套餐1，0和3期**/
(99,1,9,'魅族 15 Plus','魅族15系列最高降501元，享魅族16系列优先购买权','2498.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 15 Plus','全网通公开版','曜石黑','6+64GB','1','3','50',NULL),
(100,1,9,'魅族 15 Plus','魅族15系列最高降501元，享魅族16系列优先购买权','2498.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 15 Plus','全网通公开版','香槟金','6+64GB','1','3','50',NULL),
(101,1,9,'魅族 15 Plus','魅族15系列最高降501元，享魅族16系列优先购买权','2498.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 15 Plus','全网通公开版','白色','6+64GB','1','3','50',NULL),
(102,1,9,'魅族 15 Plus','魅族15系列最高降501元，享魅族16系列优先购买权','2556.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 15 Plus','全网通公开版','曜石黑','6+64GB','2','3','50',NULL),
(103,1,9,'魅族 15 Plus','魅族15系列最高降501元，享魅族16系列优先购买权','2556.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 15 Plus','全网通公开版','香槟金','6+64GB','2','3','50',NULL),
(104,1,9,'魅族 15 Plus','魅族15系列最高降501元，享魅族16系列优先购买权','2556.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 15 Plus','全网通公开版','白色','6+64GB','2','3','50',NULL),
(105,1,9,'魅族 15 Plus','魅族15系列最高降501元，享魅族16系列优先购买权','2798.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 15 Plus','全网通公开版','曜石黑','6+128GB','1','3','50',NULL),
(106,1,9,'魅族 15 Plus','魅族15系列最高降501元，享魅族16系列优先购买权','2798.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 15 Plus','全网通公开版','香槟金','6+128GB','1','3','50',NULL),
(107,1,9,'魅族 15 Plus','魅族15系列最高降501元，享魅族16系列优先购买权','2798.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 15 Plus','全网通公开版','白色','6+128GB','1','3','50',NULL),
(108,1,9,'魅族 15 Plus','魅族15系列最高降501元，享魅族16系列优先购买权','2856.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 15 Plus','全网通公开版','曜石黑','6+128GB','2','3','50',NULL),
(109,1,9,'魅族 15 Plus','魅族15系列最高降501元，享魅族16系列优先购买权','2856.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 15 Plus','全网通公开版','香槟金','6+128GB','2','3','50',NULL),
(110,1,9,'魅族 15 Plus','魅族15系列最高降501元，享魅族16系列优先购买权','2856.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 15 Plus','全网通公开版','白色','6+128GB','2','3','50',NULL),
(111,1,9,'魅族 15 Plus','魅族15系列最高降501元，享魅族16系列优先购买权','2498.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 15 Plus','全网通公开版','曜石黑','6+64GB','1','0','50',NULL),
(112,1,9,'魅族 15 Plus','魅族15系列最高降501元，享魅族16系列优先购买权','2498.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 15 Plus','全网通公开版','香槟金','6+64GB','1','0','50',NULL),
(113,1,9,'魅族 15 Plus','魅族15系列最高降501元，享魅族16系列优先购买权','2498.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 15 Plus','全网通公开版','白色','6+64GB','1','0','50',NULL),
(114,1,9,'魅族 15 Plus','魅族15系列最高降501元，享魅族16系列优先购买权','2556.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 15 Plus','全网通公开版','曜石黑','6+64GB','2','0','50',NULL),
(115,1,9,'魅族 15 Plus','魅族15系列最高降501元，享魅族16系列优先购买权','2556.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 15 Plus','全网通公开版','香槟金','6+64GB','2','0','50',NULL),
(116,1,9,'魅族 15 Plus','魅族15系列最高降501元，享魅族16系列优先购买权','2556.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 15 Plus','全网通公开版','白色','6+64GB','2','0','50',NULL),
(117,1,9,'魅族 15 Plus','魅族15系列最高降501元，享魅族16系列优先购买权','2798.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 15 Plus','全网通公开版','曜石黑','6+128GB','1','0','50',NULL),
(118,1,9,'魅族 15 Plus','魅族15系列最高降501元，享魅族16系列优先购买权','2798.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 15 Plus','全网通公开版','香槟金','6+128GB','1','0','50',NULL),
(119,1,9,'魅族 15 Plus','魅族15系列最高降501元，享魅族16系列优先购买权','2798.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 15 Plus','全网通公开版','白色','6+128GB','1','0','50',NULL),
(120,1,9,'魅族 15 Plus','魅族15系列最高降501元，享魅族16系列优先购买权','2856.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 15 Plus','全网通公开版','曜石黑','6+128GB','2','0','50',NULL),
(121,1,9,'魅族 15 Plus','魅族15系列最高降501元，享魅族16系列优先购买权','2856.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 15 Plus','全网通公开版','香槟金','6+128GB','2','0','50',NULL),
(122,1,9,'魅族 15 Plus','魅族15系列最高降501元，享魅族16系列优先购买权','2856.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 15 Plus','全网通公开版','白色','6+128GB','2','0','50',NULL),
/**魅族 15，金黑白，4-64/4-128，标准/套餐1，0和3期**/
(123,1,10,'魅族 15','魅族15系列最高降501元，享魅族16系列优先购买权','1998.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 15','全网通公开版','曜石黑','4+64GB','1','3','50',NULL),
(124,1,10,'魅族 15','魅族15系列最高降501元，享魅族16系列优先购买权','1998.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 15','全网通公开版','香槟金','4+64GB','1','3','50',NULL),
(125,1,10,'魅族 15','魅族15系列最高降501元，享魅族16系列优先购买权','1998.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 15','全网通公开版','白色','4+64GB','1','3','50',NULL),
(126,1,10,'魅族 15','魅族15系列最高降501元，享魅族16系列优先购买权','2036.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 15','全网通公开版','曜石黑','4+64GB','2','3','50',NULL),
(127,1,10,'魅族 15','魅族15系列最高降501元，享魅族16系列优先购买权','2036.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 15','全网通公开版','香槟金','4+64GB','2','3','50',NULL),
(128,1,10,'魅族 15','魅族15系列最高降501元，享魅族16系列优先购买权','2036.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 15','全网通公开版','白色','4+64GB','2','3','50',NULL),
(129,1,10,'魅族 15','魅族15系列最高降501元，享魅族16系列优先购买权','2298.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 15','全网通公开版','曜石黑','4+128GB','1','3','50',NULL),
(130,1,10,'魅族 15','魅族15系列最高降501元，享魅族16系列优先购买权','2298.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 15','全网通公开版','香槟金','4+128GB','1','3','50',NULL),
(131,1,10,'魅族 15','魅族15系列最高降501元，享魅族16系列优先购买权','2298.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 15','全网通公开版','白色','4+128GB','1','3','50',NULL),
(132,1,10,'魅族 15','魅族15系列最高降501元，享魅族16系列优先购买权','2356.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 15','全网通公开版','曜石黑','4+128GB','2','3','50',NULL),
(133,1,10,'魅族 15','魅族15系列最高降501元，享魅族16系列优先购买权','2356.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 15','全网通公开版','香槟金','4+128GB','2','3','50',NULL),
(134,1,10,'魅族 15','魅族15系列最高降501元，享魅族16系列优先购买权','2356.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 15','全网通公开版','白色','4+128GB','2','3','50',NULL),
(135,1,10,'魅族 15','魅族15系列最高降501元，享魅族16系列优先购买权','1998.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 15','全网通公开版','曜石黑','4+64GB','1','0','50',NULL),
(136,1,10,'魅族 15','魅族15系列最高降501元，享魅族16系列优先购买权','1998.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 15','全网通公开版','香槟金','4+64GB','1','0','50',NULL),
(137,1,10,'魅族 15','魅族15系列最高降501元，享魅族16系列优先购买权','1998.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 15','全网通公开版','白色','4+64GB','1','0','50',NULL),
(138,1,10,'魅族 15','魅族15系列最高降501元，享魅族16系列优先购买权','2036.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 15','全网通公开版','曜石黑','4+64GB','2','0','50',NULL),
(139,1,10,'魅族 15','魅族15系列最高降501元，享魅族16系列优先购买权','2036.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 15','全网通公开版','香槟金','4+64GB','2','0','50',NULL),
(140,1,10,'魅族 15','魅族15系列最高降501元，享魅族16系列优先购买权','2036.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 15','全网通公开版','白色','4+64GB','2','0','50',NULL),
(141,1,10,'魅族 15','魅族15系列最高降501元，享魅族16系列优先购买权','2298.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 15','全网通公开版','曜石黑','4+128GB','1','0','50',NULL),
(142,1,10,'魅族 15','魅族15系列最高降501元，享魅族16系列优先购买权','2298.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 15','全网通公开版','香槟金','4+128GB','1','0','50',NULL),
(143,1,10,'魅族 15','魅族15系列最高降501元，享魅族16系列优先购买权','2298.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 15','全网通公开版','白色','4+128GB','1','0','50',NULL),
(144,1,10,'魅族 15','魅族15系列最高降501元，享魅族16系列优先购买权','2356.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 15','全网通公开版','曜石黑','4+128GB','2','0','50',NULL),
(145,1,10,'魅族 15','魅族15系列最高降501元，享魅族16系列优先购买权','2356.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 15','全网通公开版','香槟金','4+128GB','2','0','50',NULL),
(146,1,10,'魅族 15','魅族15系列最高降501元，享魅族16系列优先购买权','2356.00','<span>花呗分期</span><span>百城速达</span><span>顺丰发货</span><span>7天无理由退货</span>','本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 15','全网通公开版','白色','4+128GB','2','0','50',NULL),
/**魅族 16th，黑白，6-64/6-128，标准/套餐1，0**/
(147,1,11,'魅族 16th','全款预订订单按付款时间先后发货','2698.00','<span>顺丰发货</span><span>7天无理由退货</span>','<a>预售商品</a>付款后预计42天内发货</br>本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 16th','全网通公开版','静夜黑','6+64GB','1','0','50','../images/phone/mz-16th/index/mz-16-server.jpg'),
(148,1,11,'魅族 16th','全款预订订单按付款时间先后发货','2998.00','<span>顺丰发货</span><span>7天无理由退货</span>','<a>预售商品</a>付款后预计42天内发货</br>本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 16th','全网通公开版','静夜黑','6+128GB','1','0','50','../images/phone/mz-16th/index/mz-16-server.jpg'),
(149,1,11,'魅族 16th','全款预订订单按付款时间先后发货','2827.00','<span>顺丰发货</span><span>7天无理由退货</span>','<a>预售商品</a>付款后预计42天内发货</br>本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 16th','全网通公开版','静夜黑','6+64GB','2','0','50','../images/phone/mz-16th/index/mz-16-server.jpg'),
(150,1,11,'魅族 16th','全款预订订单按付款时间先后发货','3127.00','<span>顺丰发货</span><span>7天无理由退货</span>','<a>预售商品</a>付款后预计42天内发货</br>本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 16th','全网通公开版','静夜黑','6+128GB','2','0','50','../images/phone/mz-16th/index/mz-16-server.jpg'),
(151,1,11,'魅族 16th','全款预订订单按付款时间先后发货','2698.00','<span>顺丰发货</span><span>7天无理由退货</span>','<a>预售商品</a>付款后预计42天内发货</br>本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 16th','全网通公开版','远山白','6+64GB','1','0','50','../images/phone/mz-16th/index/mz-16-server.jpg'),
(152,1,11,'魅族 16th','全款预订订单按付款时间先后发货','2998.00','<span>顺丰发货</span><span>7天无理由退货</span>','<a>预售商品</a>付款后预计42天内发货</br>本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 16th','全网通公开版','远山白','6+128GB','1','0','50','../images/phone/mz-16th/index/mz-16-server.jpg'),
(153,1,11,'魅族 16th','全款预订订单按付款时间先后发货','2827.00','<span>顺丰发货</span><span>7天无理由退货</span>','<a>预售商品</a>付款后预计42天内发货</br>本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 16th','全网通公开版','远山白','6+64GB','2','0','50','../images/phone/mz-16th/index/mz-16-server.jpg'),
(154,1,11,'魅族 16th','全款预订订单按付款时间先后发货','3127.00','<span>顺丰发货</span><span>7天无理由退货</span>','<a>预售商品</a>付款后预计42天内发货</br>本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 16th','全网通公开版','远山白','6+128GB','2','0','50','../images/phone/mz-16th/index/mz-16-server.jpg'),
/**魅族 16th Plus，黑白，8-128/8-256，标准/套餐1，0**/
(155,1,11,'魅族 16th Plus','全款预订订单按付款时间先后发货','3498.00','<span>顺丰发货</span><span>7天无理由退货</span>','<a>预售商品</a>付款后预计42天内发货</br>本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 16th Plus','全网通公开版','静夜黑','8+128GB','1','0','50','../images/phone/mz-16th/index/mz-16-server.jpg'),
(156,1,11,'魅族 16th Plus','全款预订订单按付款时间先后发货','3998.00','<span>顺丰发货</span><span>7天无理由退货</span>','<a>预售商品</a>付款后预计42天内发货</br>本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 16th Plus','全网通公开版','静夜黑','8+256GB','1','0','50','../images/phone/mz-16th/index/mz-16-server.jpg'),
(157,1,11,'魅族 16th Plus','全款预订订单按付款时间先后发货','3667.00','<span>顺丰发货</span><span>7天无理由退货</span>','<a>预售商品</a>付款后预计42天内发货</br>本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 16th Plus','全网通公开版','静夜黑','8+128GB','2','0','50','../images/phone/mz-16th/index/mz-16-server.jpg'),
(158,1,11,'魅族 16th Plus','全款预订订单按付款时间先后发货','4167.00','<span>顺丰发货</span><span>7天无理由退货</span>','<a>预售商品</a>付款后预计42天内发货</br>本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 16th Plus','全网通公开版','静夜黑','8+256GB','2','0','50','../images/phone/mz-16th/index/mz-16-server.jpg'),
(159,1,11,'魅族 16th Plus','全款预订订单按付款时间先后发货','3498.00','<span>顺丰发货</span><span>7天无理由退货</span>','<a>预售商品</a>付款后预计42天内发货</br>本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 16th Plus','全网通公开版','远山白','8+128GB','1','0','50','../images/phone/mz-16th/index/mz-16-server.jpg'),
(160,1,11,'魅族 16th Plus','全款预订订单按付款时间先后发货','3998.00','<span>顺丰发货</span><span>7天无理由退货</span>','<a>预售商品</a>付款后预计42天内发货</br>本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 16th Plus','全网通公开版','远山白','8+256GB','1','0','50','../images/phone/mz-16th/index/mz-16-server.jpg'),
(161,1,11,'魅族 16th Plus','全款预订订单按付款时间先后发货','3667.00','<span>顺丰发货</span><span>7天无理由退货</span>','<a>预售商品</a>付款后预计42天内发货</br>本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 16th Plus','全网通公开版','远山白','8+128GB','2','0','50','../images/phone/mz-16th/index/mz-16-server.jpg'),
(162,1,11,'魅族 16th Plus','全款预订订单按付款时间先后发货','4167.00','<span>顺丰发货</span><span>7天无理由退货</span>','<a>预售商品</a>付款后预计42天内发货</br>本商品由&nbsp;魅族&nbsp;负责发货并提供售后服务','魅族 16th Plus','全网通公开版','远山白','8+256GB','2','0','50','../images/phone/mz-16th/index/mz-16-server.jpg');