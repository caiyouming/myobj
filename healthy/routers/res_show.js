const express = require('express');
const router = express.Router();
const pool = require('../pool.js');

//show teacher
router.get('/teacher',(req,res)=>{
	var obj = req.query;
	var sql = `SELECT * FROM obj_teacher`;
	pool.query(sql,(err,result)=>{
		if(err)throw err;
		res.send(result);
	});
});

//show user
router.get('/user-show',(req,res)=>{
	var sql = `SELECT * FROM obj_user_show`;
	pool.query(sql,(err,result)=>{
		if(err)throw err;
		res.send(result);
	});
});

//show user desc
router.get('/user-show-desc',(req,res)=>{
	var $uid = req.query.uid;
	var sql = `SELECT * FROM obj_user_show WHERE uid= ?`;
	pool.query(sql,[$uid],(err,result)=>{
		if(err)throw err;
		res.send(result);
	});
});

router.get('/know',(req,res)=>{
	var data={};
	var sql = `SELECT * FROM obj_knowledge`;
		pool.query(sql,[],(err,result)=>{
			if(err) throw err
			var page=req.query.page;
			data.page=page;
			data.pageCount=Math.ceil(result.length/2);
			data.con=result.slice(data.page*2,data.page*2+2);
			res.send(data);
			})
		})

module.exports = router;