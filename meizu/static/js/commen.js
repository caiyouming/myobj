function ajax({url,type,data,dataType,fun}){
    var xhr=null;
    if(window.XMLHttpRequest){
      xhr = new XMLHttpRequest();
    }else{
      xhr = new ActiveXObject('Microsoft.XMLHttp');
    }
    var xhr=new XMLHttpRequest();
    xhr.onreadystatechange=function(){
      if(xhr.readyState==4&&xhr.status==200){
        if(dataType!==undefined && dataType.toLowerCase()==="json")
          var res=JSON.parse(xhr.responseText);
        else
          var res = xhr.responseText;
        fun(res);
        
      }
    }
    if(type.toLowerCase()=="get"&&data!=undefined){
      url+="?"+data;
    }
    //3.打开连接
    xhr.open(type,url,true);
    if(type.toLowerCase()==="post")
      xhr.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
    if(type.toLowerCase()==="post"&&data!==undefined) xhr.send(data);
    else xhr.send(null);
  }
