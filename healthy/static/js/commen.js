function $(id){
	return document.getElementById(id)
};
function createXhr(url){
	var xhr = null;
	if(window.XMLHttpRequest){
		xhr = new XMLHttpRequest();
	}else{
		xhr = new ActiveXObject('Microsoft.XMLHttp');
	};
	return xhr;
};

