const express = require("express");
const pool = require("../pool");
//2:创建路由对象
var router = express.Router();
//3:功能一:新闻分页显示 GET /list
router.get("/list",(req,res)=>{
  var obj=[{id:1,img:'http://3000/img/banner.png',title:'meizu6',old_p:'3000.00',new_p:'1500.00'}]
  res.send(obj)
})

module.exports = router;