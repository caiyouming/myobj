//app.js
//1:加载模块 express
const express = require("express");
const bodyParser=require('body-parser');
const routerImageList = require('./router/imagelist');
const newsList = require('./router/newsList');
const goodList = require('./router/goodlist');
const session = require('express-session');
//2:创建express
var app = express();
const cors = require('cors');
app.use(cors({
  origin:['http://127.0.0.1:3001','http://localhost:3001'],
  credentials:true
}))
app.use(bodyParser.urlencoded({
	extended:false
}));
//3:绑定监听端口 3000
app.listen(3000);
//4:指定静态目录 public
//__dirname 当前程序所有目录完整路径
//console.log(__dirname)
app.use(express.static(__dirname+"/public"));


app.use('/imagelist',routerImageList);
app.use('/newslist',newsList);
app.use('/goodlist',goodList);