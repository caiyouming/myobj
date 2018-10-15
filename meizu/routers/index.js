const express = require('express');
const pool = require('../pool.js');
const router = express.Router();

router.get('/',(req,res)=>{
	var sql = ``;
	pool.query(sql,[],(err,result)=>{
		if(err) throw err;
		res.send(result);
	})
})
router.get('/',(req,res)=>{
	var sql = ``;
	pool.query(sql,[],(err,result)=>{
		if(err) throw err;
		res.send(result);
	})
})
router.get('/',(req,res)=>{
	var sql = ``;
	pool.query(sql,[],(err,result)=>{
		if(err) throw err;
		res.send(result);
	})
})





module.exports = router;
