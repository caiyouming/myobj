//使用express构建web服务器 --11:25
const express = require('express');
const bodyParser = require('body-parser');
const session=require('express-session');
const cors=require('cors');
var app = express();

const index=require("./routers/index");
const detail=require("./routers/detail");
const company=require("./routers/company");
const user=require('./routers/user.js');

app.use(cors({
  origin:'*'
}))
var server = app.listen(3000);


app.use(bodyParser.urlencoded({extended:false}));
//托管静态资源到public目录下
app.use(express.static('static'));

/*使用路由器来管理路由*/
app.use("/index",index);
app.use("/detail",detail);
app.use("/company",company);
app.use('/user',user);