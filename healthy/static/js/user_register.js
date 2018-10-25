function getUname(){
	var uname = $('uname').value;
	if(uname==''){
		$('checkUname').innerHTML = '用户名不能为空';
		return false;
	};
	var xhr = createXhr();
	xhr.onreadystatechange = function(){
		if(xhr.readyState==4 && xhr.status==200){
			var res = xhr.responseText;
			if(res=='1'){
				$('checkUname').innerHTML = '用户名已存在';
				return 1;
			}else{
				$('checkUname').innerHTML = '用户名可用';
			};
		};
	};
	xhr.open('get',`/user/checkUname?uname=${uname}`,true);
	xhr.send(null);		
}
function getUpwd(){
	var upwd = $('upwd').value;
	if(upwd==''){
		$('checkUpwd').innerHTML = '密码不能为空';
		return false;
	}else{
		$('checkUpwd').innerHTML = '';
		return true;
	};
};
function getCupwd(){
	var cupwd = $('cupwd').value;
	var upwd = $('upwd').value;
	if(cupwd==''){
		$('checkCupwd').innerHTML = '密码不能为空';
		return false;
	}else if(cupwd!=upwd){
		$('checkCupwd').innerHTML = '两次密码不相同';
		return false;
	}else{
		$('checkCupwd').innerHTML = '';
		return true;
	};
};
function getEmail(){
	var email = $('email').value;
	if(email==''){
		$('checkEmail').innerHTML = '邮箱不能为空';
		return false;
	}else{
		$('checkEmail').innerHTML = '';
		return true;
	};
};
function getPhone(){
	var phone = $('phone').value;
	if(phone==''){
		$('checkPhone').innerHTML = '手机号不能为空';
		return false;
	}else{
		$('checkPhone').innerHTML = '';
		return true;
	};
};
console.log(getUname())
function getSub(){
	if(getUname()==false){
		alert('用户名不能为空');
		return false;
	}else if(getUname==1){
		alert('用户名已存在');
		return false;
	}
}
