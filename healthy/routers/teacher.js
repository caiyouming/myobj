const express = require('express');
const pool = require('../pool.js');
const router = express.Router();

router.get('/checkTnumber',(req,res)=>{
	var $tnumber = req.query.tnumber;
	var sql = `SELECT *FROM obj_teacher WHERE tnumber=?`;
	pool.query(sql,[$tnumber],(err,result)=>{
		if(err) throw err;
		if(!result.length>0){
			res.send('0');
		};
	});
});
router.post('/check',(req,res)=>{
	var obj = req.body;
	var $tnumber = obj.tnumber;
	var $tpwd = obj.tpwd;
	var sql = `SELECT *FROM obj_teacher WHERE tnumber=? AND tpwd=?`
	pool.query(sql,[$tnumber,$tpwd],(err,result)=>{
		if(err)throw err;
		if(!result.length>0){
			res.send('0');
		}else{
			res.send('1');
		};
	});
});








module.exports = router;
