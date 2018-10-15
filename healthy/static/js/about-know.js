window.onload=function(){
  pages=document.getElementById('pages');
  function loadPage(page){
    var cons=document.getElementById('con');
      var xhr=new createXhr();
      xhr.onreadystatechange=function(){
        if(xhr.readyState==4 && xhr.status==200){
          var res=JSON.parse(xhr.responseText);
          var {page,pageCount,con}=res;
          var html;
          for(var key of con){
            var {kid,kpic,ktitle,kpre,ktime}=key;
            html+=`  <p><img src="${kpic}"></p>
                      <p>${ktitle}</p>
                      <p>${kpre}</p>
                      <p>${ktime}</p>
                      `
            }
          cons.innerHTML=html;
          var html=`<li><a href="#">上一页</a></li>`
          for(var i=1;i<=pageCount;i++){
            html+=`<li class="${page==i-1?'active disabled':''}"><a href="#" class="${page==i-1?'disabled':''}">${i}</a></li>`;
          }
          html+=`<li><a href="#">下一页</a></li>`;
          pages.innerHTML=html;
          if(page==0) pages.firstChild.className='disabled';
          if(page==pageCount-1) pages.lastChild.className='disabled';
        }
      }
      var url=`/res-show/know?page=${page}`
      xhr.open('get',url,true);
      xhr.send(null);
    }
    loadPage(page=0);
    pages.onclick=function(e){
      e.preventDefault();
      if(e.target.nodeName==='A'){
          if(e.target.innerHTML=='上一页'){
            
          }
          else if(e.target.innerHTML=='下一页'){
            var page=e.target.classList.contains('disabled').innerHTML+1;
          }else{
            var page=e.target.innerHTML-1;
          }
          loadPage(page);
        
          
      }
    }
}

  
