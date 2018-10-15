/*window.onload = function(){
  



  let choose = document.getElementById('choose');
  choose.onclick = function(e){
    if(e.target.nodeName=='A'){
      let chooseIt = e.target;
      switch(chooseIt.innerHTML){
        case '首页':

      }
    }
  }
}*/


function getAll(){
  let type = 'get',url = '/phoneIndex/all',dataType = 'json';
  let fun  = function(res){
    let html='';
    for(let key of res){
    html+=` <ul>
                <li><img src="${key.pbimg}"></li>
                <li>${key.psimg}</li>
                <li>${key.pname}</li>
                <li>${key.pro}</li>
                <li>${key.price}</li>
              </ul>`
    console.log(res);
    }
    console.log(html);
    let phoneShow = document.getElementById('phone-show');
    phoneShow.innerHTML = html;
  } 
  ajax({type,url,dataType,fun});
}    
    
