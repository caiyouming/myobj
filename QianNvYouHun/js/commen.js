function sld($img,$btn,time,DIS,list){
  var c=0;
  var timer=setInterval(cd,time);
  function cd(){
    c++;
    if(c==list){
      $($img).css('left','0px');
      c=1;
    }
    $($img).animate({'left':c*-DIS+'px'},500);
    c==(list-1)?$($btn).eq(0).css('background','#CEBBFF').siblings().css('background','#8584C3'):$($btn).eq(c).css('background','#CEBBFF').siblings().css('background','#8584C3')
  }
  $($btn).mouseenter(function(e){
    console.log($(this))
    clearInterval(timer);
    c=$(this).index();
    $($img).stop().animate({'left':c*-DIS+'px'},500);
    $(this).css('background','#CEBBFF').siblings().css('background','#8584C3');
  });
  
  $($btn).mouseleave(function(){
    timer=setInterval(cd,time)
  })
}
function changeStyle(con,ele){
  if(con){
    //console.log(2222)
    $(ele).children().children().filter('.name').removeClass('name-change');
    $(ele).children().children().filter('.line').removeClass('line-change');
    $(ele).children().children().filter('.vr').removeClass('vr-change');
    $(ele).children().children().filter('.intro').removeClass('intro-change');
    $(ele).children().children().filter('.btn').removeClass('btn-change');
    $(ele).children().children().filter('.img').removeClass('img-change');
    $(ele).siblings().children().children().filter('.name').addClass('name-change');
    $(ele).siblings().children().children().filter('.line').addClass('line-change');
    $(ele).siblings().children().children().filter('.vr').addClass('vr-change');
    $(ele).siblings().children().children().filter('.intro').addClass('intro-change');
    $(ele).siblings().children().children().filter('.btn').addClass('btn-change');
    $(ele).siblings().children().children().filter('.img').addClass('img-change')
  }
}
