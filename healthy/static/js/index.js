window.onload = function(){
	var n=0;
	if(n==0){
		document.body.onscroll = function(e){
			var top=document.documentElement.scrollTop;
			if(top>0){
				var con1=$('con_text1');
				con1.className='in';
			}
			if(top>230){
				var con2=$('con_plan').children;
				for(var key of con2){
					key.className="in";
				}
			}
			if(top>630){
				var con3=document.querySelector('#con_product>div>div:first-child');
				con3.className='in';
				return n=1;
			}
			console.log(10)
		}
	}
	
	var sld=$('sld'),sldBox=$('sld-box'),sldBtn=$('sld-btn').getElementsByTagName('li'),a=0;

	var timer=setInterval(function(){
		for(var i=0;i<sldBtn.length;i++){
			sldBtn[i].style.background='black';
		}
		if(a==1){
			a--;
		}else{
			a++;
		}
		sldBox.style.left=`${-a*1920}px`;
		sldBtn[a].style.background='red';
	},3000)
	$('sld-btn').onmouseover=function(e){
		if(e.target.nodeName==='LI'){
			clearInterval(timer);
		}
	}
}

