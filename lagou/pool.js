//创建mysql连接池
const mysql = require('mysql');
var pool = mysql.createPool({
  host:"127.0.0.1", //连接mysql数据库地址
  user:"root",      //连接mysql 用户名
  password:"",      //连接mysql 密码
  database:"lagou",//选择操作数据库名称
  port:3306,        //mysql 端口
  connectionLimit:10//连接池10活动连接
});
//把创建好的连接池导出
module.exports = pool;


