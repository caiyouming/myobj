const express = require('express');
const pool = require('../pool');
const router = express.Router();

router.get('/all',(req,res)=>{
  var obj = {company:[],job:[]};
  (async function(){
    var sql = 'SELECT * FROM `lg_company`';
    await new Promise(function(open){
      pool.query(sql,[],(err,result)=>{
        if(err) console.log(err);
        obj.company = result;
        open();
      })
    });
    var sql = 'SELECT * FROM `lg_job`';
    await new Promise(function(open){
      pool.query(sql,[],(err,result)=>{
        if(err) console.log(err);
        obj.job = result;
        open();
      })
    })
    res.send(obj)
  })()

})




module.exports = router