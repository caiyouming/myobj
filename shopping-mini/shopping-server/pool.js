//1:加载mysql模块
const mysql = require("mysql");
//2:创建连接池对象
var pool = mysql.createPool({
   host:"127.0.0.1", //连接mysql数据库地址
   user:"root",      //连接mysql 用户名
   password:"",      //连接mysql 密码
   database:"shopping",//选择操作数据库名称
   port:3306,        //mysql 端口
   connectionLimit:10//连接池10活动连接
});
//3:导出连接池对象
module.exports = pool;