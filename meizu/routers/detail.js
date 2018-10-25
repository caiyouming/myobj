const express = require('express');
const router = express.Router();
const pool = require('../pool');


router.get('/con',(req,res)=>{
  var pid = req.query.pid;
  var sql = 'SELECT * FROM mz_phone WHERE phone_family_id = ?';
  pool.query(sql,[pid],(err,result)=>{
    if(err) throw err;
    res.send(result);
  })
})













module.exports = router;