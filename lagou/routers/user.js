const express = require('express');
const pool = require('../pool');
const router = express.Router();

router.get('/checkUname',(req,res)=>{
  var uname = req.query.uname;
  var sql = "SELECT * FROM `lg_user` WHERE uname=?"
  pool.query(sql,[uname],(err,result)=>{
    if(err)throw err;
    console.log(result)
    //if(result.length!=)
    res.send(result)
  })
})

router.post('/check',(req,res)=>{
  var uname = req.body.uname,upwd = req.body.upwd;
  var sql = "SELECT * FROM `lg_user` WHERE uname=? AND upwd=?"
  pool.query(sql,[uname,upwd],(err,result)=>{
    if(err)throw err;
    res.send(result)
  })
})










module.exports = router