const express = require('express');
const pool = require('../pool.js');
const router = express.Router();
router.get('/all',(req,res)=>{
  var sql = `SELECT * FROM mz_phone_family ORDER BY pid DESC`;
  pool.query(sql,[],(err,result)=>{
    if(err) throw err;
    res.send(result);
  })
})




module.exports = router;