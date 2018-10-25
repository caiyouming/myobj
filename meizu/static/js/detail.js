$(function(){
  //if(location.search.indexOf('pid=')!==-1){
    var pid=location.search.split('=')[1];
    var date=new Date();
    var timer=date.getTime().toString();
    $.ajax({
      url:`http://127.0.0.1:3000/detail/con?pid=2&t=${timer}`,
      type:'get',
      dataType:'json'
    }).then(function(res){
      //console.log(res)
      
    })
  //}
  
})