const express = require('express');
const pool = require('../pool.js');
const router = express.Router();


router.get("/all",(req,res)=>{
  //按lid查询商品信息和规格列表
  var obj={product:[],pic:[]};
  (async function(){
    //1. 按lid查询商品信息——异步
    var sql = `SELECT * FROM mz_phone_family ORDER BY pid DESC`;
    await new Promise(function(open){
      pool.query(sql,[],(err,result)=>{
        if(err) console.log(err);
        obj.product=result;
        open();
      })
    })
    //2. 按lid查询规格列表——异步
    var sql=`SELECT * FROM mz_phone_family_pic ORDER BY pid DESC`
    await new Promise(function(open){
      pool.query(sql,[],(err,result)=>{
        if(err) console.log(err);
        obj.pic=result;
        open(); 
      })
    })
    res.send(obj);//4. 返回结果
    //测试: http://localhost:3000/details?lid=5
  })()
})



module.exports = router;