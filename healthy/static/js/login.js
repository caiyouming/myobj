//user-login
window.onload=function(){
	var choise=document.querySelector('body>section>div>ul.choose');
	var user=document.getElementById('user-login');
	var teacher=document.getElementById('teacher-login');
	choise.onclick=function(e){
		e.preventDefault();
		if(e.target.nodeName=='A'){
			if(e.target.dataset.choose=='user'){
				e.target.className='in';
				var tc=document.querySelector('body>section>div>ul.choose>li>a:last-child');
				tc.className='';
				user.style.display='block';
				teacher.style.display='none';
			}if(e.target.dataset.choose=='teacher'){
				e.target.className='in';
				var uc=document.querySelector('body>section>div>ul.choose>li>a:first-child');
				uc.className='';
				teacher.style.display='block';
				user.style.display='none';
			}
		}
	}
}

	function checkUnumber(){
		if($('unumber').value==''){
			$('checkUnumber').innerHTML = '账号不能为空';
			return false;
		}else{
			$('checkUnumber').innerHTML = '';
		};
		var xhr = createXhr();
		xhr.onreadystatechange = function(){
			if(xhr.readyState==4 && xhr.status==200){
				var res = xhr.responseText;
				$('checkUnumber').innerHTML = res;
			};
		};
		var unumber = $('unumber').value;
		xhr.open('get','/user/checkUnumber?unumber='+unumber,true);
		xhr.send(null);
	}
	
	function checkUpwd(){
		if($('upwd').value==''){
			$('checkUpwd').innerHTML = '密码不能为空';
			return false;
		}else{
			$('checkUpwd').innerHTML = '';
			return true;
		};
	}
	
	function getUsub(){
		if($('unumber').value==''){
			$('checkUnumber').innerHTML = '账号不能为空';
			return false;
		}
		if($('upwd').value==''){
			$('checkUpwd').innerHTML = '密码不能为空';
			return false;
		}
		var xhr = createXhr();
		xhr.onreadystatechange = function(){
			if(xhr.readyState==4 && xhr.status==200){
				var res = xhr.responseText;
				if(res==0){
					alert('账号或密码错误');
					return false;
				}else if(res==1){
					alert('登录成功，点击确定返回登录界面');
					return location.href='http://localhost:3000/index.html';
				};
			};
		};
		var unumber = $('unumber').value;
		xhr.open('post',`/user/check`,true);
			xhr.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
			var unumber=$("unumber").value;
			var upwd=$("upwd").value;
			var url=`unumber=${unumber}&upwd=${upwd}`;
		xhr.send(url);	
	};
	//teacher login
	function checkTnumber(){
		var tnumber = $('tnumber').value;
		if(tnumber==''){
			$('checkTnumber').innerHTML = '账号不能为空';
			return false;
		}else{
			$('checkTnumber').innerHTML = '';
		}
		xhr = createXhr();
		xhr.onreadystatechange = function(){
			if(xhr.readyState==4 && xhr.status==200){
				var res = xhr.responseText;
				if(res==0){
					$('checkTnumber').innerHTML = '账号不存在';
				};
			};
		};
		xhr.open('get',`/teacher/checkTnumber?tnumber=${tnumber}`,true);
		xhr.send(null);
	};
	function checkTpwd(){
		if($('tpwd').value==''){
			$('checkTpwd').innerHTML = '密码不能为空';
			return false;
		}else{
			$('checkTpwd').innerHTML = '';
		};
	};
	
	function getTsub(){
		var tnumber = $('tnumber').value;
		var tpwd = $('tpwd').value;
		if(tnumber==''){
			$('checkTnumber').innerHTML = '账号不能为空';
			return false;
		};
		if(tpwd==''){
			$('checkTpwd').innerHTML = '密码不能为空';
			return false;
		};
		var xhr = createXhr();
		xhr.onreadyStatechange = function(){
			if(xhr.readyState==4 && xhr.status==200){
				var res = xhr.responseText;
				if(res==0){
					alert('账号或密码错误');
					return false;
				}else if(res==1){
					alert('登录成功，点击确定返回主页');
					return location.href='http://localhost:3000/index.html';
				}
			};
		};
		xhr.open('post','/teacher/check',true);
		xhr.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
		var url = `tnumber=${tnumber}&tpwd=${tpwd}`;
		xhr.send(url);
	};




























