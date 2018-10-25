const express = require('express');
const router = express.Router();
var pool = require('../pool.js');
//检查用户是否存在
router.get('/checkUnumber',(req,res)=>{
	var $unumber = req.query.unumber; //账号
	var sql = `SELECT *FROM obj_user_show WHERE unumber=?`;
	pool.query(sql,[$unumber],(err,result)=>{
		if(err)throw err;
		if(!result.length>0){
			res.send(`用户名不存在`);
		};
	});
});



router.post('/check',(req,res)=>{
	var $unumber = req.body.unumber;
	var $upwd = req.body.upwd;
	var sql = `SELECT * FROM obj_user_show WHERE unumber=? AND upwd=?`;
	pool.query(sql,[$unumber,$upwd],(err,result)=>{
		if(err)throw err;
		if(result.length>0){
			res.send('1');
		}else{
			res.send('0');//账号或密码错误0
		};
	})
});


//用户注册
router.post('/user-login',(req,res)=>{
	var $unumber = req.body.unumber;
	var $upwd = req.body.upwd;
	var sql = `SELECT * FROM obj_user_show WHERE unumber=? AND upwd=?`;
	pool.query(sql,[$unumber,$upwd],(err,result)=>{
		if(err) throw err;
		res.send(`<script>alert('注册成功，点击确定返回登录');location.href='http://localhost:3000/index.html';</script>`);
	});
});


module.exports = router;