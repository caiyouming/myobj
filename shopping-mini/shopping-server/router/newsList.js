const express = require("express");
const pool = require("../pool");
//2:创建路由对象
var router = express.Router();
//3:功能一:新闻分页显示 GET /list
router.get("/list",(req,res)=>{
  //1:参数  pno pageSize
  var pno = req.query.pno;           //当前页码
  var pageSize = req.query.pageSize; //页大小
  //2:设置参数默认值
  if(!pno){
    pno = 1;
  }
  if(!pageSize){
    pageSize = 10;
  }
  //3:验证用户输入
  var reg = /^[0-9]{1,}$/;
  if(!reg.test(pno)){
    res.send({code:-1,msg:"页码格式不正确"});
    return;
  }
  if(!reg.test(pageSize)){
    res.send({code:-2,msg:"页大小格式不正确"});
    return;
  }
  //4:创建二条sql发送 总记录数
  //4.1:创建空对象保存返回数据
  var obj = {pno:pno,pageSize:pageSize};
  //4.2:创建变量保存(sql语句完成)进度
  var progress = 0;
  var sql = "SELECT count(id) as c FROM shopping_news";
  pool.query(sql,(err,result)=>{
     if(err)throw err;
     //console.log(result[0].c);
     var pageCount = Math.ceil(result[0].c/pageSize);
     obj.pageCount = pageCount;   //保存总页数
     progress+=50;                 //记录当前进度
     if(progress==100){            //二条sql完成
       res.send({code:1,msg:obj});//发送结果
     }
  })
  //5:创建二条sql发送 当前页内容
  var sql =" SELECT id,title,ctime,click";
      sql+=" FROM shopping_news";
      sql+=" LIMIT ?,?"
  var offset = parseInt((pno-1)*pageSize);
  pageSize = parseInt(pageSize);
  pool.query(sql,[offset,pageSize],(err,result)=>{
    if(err)throw err;
    obj.data = result;       //保存当前页内容
    progress += 50;          //进度加50
    if(progress == 100){     //如果二条sql语句全部完成
      res.send({code:1,msg:obj})//发送
    }
  })
});
router.get('/find',(req,res)=>{
  var id=req.query.id;
  sql="SELECT `id`,`title`,`content`,`click`,`img_url`,`price`,`ctime` FROM shopping_news WHERE id=?";
  pool.query(sql,[id],(err,result)=>{
    if(err)throw err;
    res.send({'code':1,msg:result})
  })
});
/*分页显示评论列表，发表自己的评论*/
router.get('/commentlist',(req,res)=>{
  var pno=req.query.pno,pageSize=req.query.pageSize,nid=parseInt(req.query.nid);
  if(!pno) pno=1;
  if(!pageSize) pageSize=5;
  var obj={pno,pageSize}
  var progress=0;
  var sql='SELECT count(id) as c FROM shopping_comment WHERE nid=?';
  pool.query(sql,[nid],(err,result)=>{
    if(err)throw err;
    obj.pageCount=Math.ceil(result[0].c/pageSize);
    progress+=50;
    //console.log(obj.pageCount);
  })
  var offset=parseInt((pno-1)*pageSize);
  pageSize=parseInt(pageSize);
  var sql='SELECT `id`,`nid`,`ctime`,`content`,`username`,`isdel` FROM `shopping_comment` WHERE nid=? ORDER BY id DESC LIMIT ?,?';
  pool.query(sql,[nid,offset,pageSize],(err,result)=>{
    if(err)throw err;
    obj.data=result;
    progress+=50;
    if(progress==100){
      res.send(obj)
    }
  })
});
router.post('/saveComment',(req,res)=>{
  var nid=req.body.nid,username=req.body.username,content=req.body.content;
  if(content.length<1){
    res.send({code:-1,msg:'亲，内容不能为空哦'})
    return false;
  };
  var sql="INSERT INTO `shopping_comment`(`id`, `nid`, `ctime`, `content`, `username`, `isdel`) VALUES (null,?,now(),?,?,0)";
  pool.query(sql,[nid,content,username],(err,result)=>{
    //console.log(result);
    if(result.affectedRows==1){
      res.send({code:1,msg:'添加成功'})
    }else{
      res.send({code:-1,msg:'添加失败'})
    }
    
  })
})


module.exports = router;