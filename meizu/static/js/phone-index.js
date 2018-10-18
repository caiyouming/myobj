  
   
/*window.onload = function(){
  function getAll(){
    let type = 'get',url = '/phoneIndex/all',dataType = 'json';
    let fun  = function(res){
      let html='';
      for(let key of res){
        html+=` <ul>
                    <li><img src="${key.pbimg}"></li>
                    <li>${key.psimg}</li>
                    <li><h5>${key.pname}</h5></li>
                    <li>${key.pro}</li>
                    <li>${key.price}</li>
                  </ul>`
        }
      let phoneShow = document.getElementById('phone-show');
      phoneShow.innerHTML = html;
    } 
    ajax({type,url,dataType,fun});
  } 
  getAll(); 
  document.body.onclick=function(e){
    
  }
}*/

$(function(){
  $.ajax({
    url:'http://127.0.0.1:3000/phoneIndex/all',
    type:'get',
    success:function(res){
      var {product,pic}=res;
      console.log(product,pic);
      var html='';
      for(var i=0;i<product.length;i++){
        html+=` <ul>
                  <li><a href=""><img src="${pic[2*i].pbimg}" data-choose="${2*i+1}"></a></li>
                  <li><a href="javascript:;"><img src="${pic[2*i].psimg}"></a><a href="javascript:;"><img src="${pic[2*i+1].psimg}"></a></li>
                  <li><h5>${product[i].pname}</h5></li>
                  <li>${product[i].p_in}</li>
                  <li>${product[i].price_s}</li>
                </ul>`
      }
let phoneShow = document.getElementById('phone-show');
phoneShow.innerHTML = html;
      
    }

  })
})