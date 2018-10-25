//show teacher
function showTeacher(){
	var xhr = createXhr();
	xhr.onreadystatechange = function(){
		if(xhr.readyState==4 && xhr.status==200){
			var res = JSON.parse(xhr.responseText);
			var html = '';
			for(var i=0;i<res.length;i++){
				var num = res[i];
				html+=`	<div>
									<img src="${num.tpic}" />
									<div>
										<p>${num.tname}</p>
										<p>${num.tpre}</p>
									</div>
								</div>
							`
			}
			$('show-teacher').innerHTML = html;
		};
	}
	xhr.open('get','/res-show/teacher',true);
	xhr.send(null);
};

//show user 
function showUser(){
	var xhr = createXhr();
	xhr.onreadystatechange = function(){
		if(xhr.readyState==4 && xhr.status==200){
			var res = JSON.parse(xhr.responseText);
			var html="";
			for(var i=0;i<res.length;i++){
				var temp = res[i];
				html+=`
							<a href="../html/about-user-show-desc.html?uid=${temp.uid}">
								<img src="${temp.upic}" />
								<p>${temp.uname}</p>
								<p>${temp.upre}</p>
							</a>
				`
			}
			$('show-user').innerHTML = html;
		};
	};
	xhr.open('get','/res-show/user-show',true);
	xhr.send(null);
};

function userDesc(){
	var urlParams=new URLSearchParams(location.search);
	var uid=urlParams.get('uid');
	var xhr = createXhr();
	xhr.onreadystatechange = function(){
		if(xhr.readyState==4 && xhr.status==200){
			var res = JSON.parse(xhr.responseText)[0];
			var html=`<div>
									<p>${res.uname}</p>
									<p>发布时间:${res.utime}</p>
									<img src="${res.upic}" />
									<table>
										<tr>
											<td>名称:</td>
											<td>${res.uname}</td>
										</tr>
										<tr>
											<td>年龄:</td>
											<td>${res.uage}</td>
										</tr>
										<tr>
											<td>家庭状况:</td>
											<td>${res.ufamily}</td>
										</tr>
										<tr>
											<td>工作状况:</td>
											<td>${res.urole}</td>
										</tr>
										<tr>
											<td>居住地址:</td>
											<td>${res.ucity}</td>
										</tr>
										<tr>
											<td>身高:</td>
											<td>${res.uheight}</td>
										</tr>
										<tr>
											<td>起始体重:</td>
											<td>${res.uoldweight}</td>
										</tr>
										<tr>
											<td>目前体重:</td>
											<td>${res.unowweight}</td>
										</tr>
										<tr>
											<td>现有腰围尺寸:</td>
											<td>${res.uwaistline}</td>
										</tr>
									</table>
								</div>`
			$('show-user').innerHTML = html;
		};
	};
	xhr.open('get','/res-show/user-show-desc?uid='+uid,true);
	xhr.send(null);
};








