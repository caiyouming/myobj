$(function(){
  function sld1(){
    var index=0;
    function sldSm(){
      index++
      if(index==2){
        index=0 
      };
      $('#header_sld').css({'top':index*-55+'px'})
    }
    setInterval(sldSm,5000)
  }
  sld1();
  $('#choose>span').click(function(e){
    if($(this).attr('data-choise')){
      //console.log(1);
      $(this).css('background','#AE844F').siblings().css('background','white');
      $('#c-sld2').css('display','none')
      $('#c-sld1').css('display','block')
    }else{
      //console.log(2)
      $(this).css('background','#AE844F').siblings().css('background','white');
      $('#c-sld1').css('display','none')
      $('#c-sld2').css('display','block')
    }
  })
/* 轮播图 */
  sld('#c-sld1>div','#c-sld1>ul>li',2000,700,7);
  sld('#c-sld2>div','#c-sld2>ul>li',2000,700,4);
/* 轮播右 文字切换 */
  $(".tabs>li>a").mouseover(function(e){
    e.preventDefault();
    $('.tabs>li>p').removeClass('choose-bg')
    var $tar=$(e.target);
    if($tar.is("[data-toggle=tab]")){
      var n=$("[data-toggle=tab]").index($tar);
      //console.log(n,$("#show-con"))
      $("#show-con").css("left",-470*n);
      $(e.target).next().addClass('choose-bg');
    }
  })
/* 角色区 */

 $('#role>div>ul.role-choose').mouseover(function(e){
   e.preventDefault();
    $tar=$(e.target);
    //console.log($tar)
    if($tar.is('[title]')){
      //console.log($tar)
      $tar.addClass('active').parent().siblings().children().removeClass('active');
    }
    changeStyle($tar.is('[data-toggle=huahun]'),'#role-con>div.huahun');
    changeStyle($tar.is('[data-toggle=yanshi]'),'#role-con>div.yanshi');
    changeStyle($tar.is('[data-toggle=jiashi1]'),'#role-con>div.jiashi1');
    changeStyle($tar.is('[data-toggle=sheshou]'),'#role-con>div.sheshou');
    changeStyle($tar.is('[data-toggle=daoke1]'),'#role-con>div.daoke1');
    changeStyle($tar.is('[data-toggle=xiake]'),'#role-con>div.xiake');
    changeStyle($tar.is('[data-toggle=fangshi]'),'#role-con>div.fangshi');
    changeStyle($tar.is('[data-toggle=yishi]'),'#role-con>div.yishi');
    changeStyle($tar.is('[data-toggle=meizhe]'),'#role-con>div.meizhe');
    changeStyle($tar.is('[data-toggle=yiren]'),'#role-con>div.yiren');
  })
  $('#role ul.role-gender').click(function(e){
    e.preventDefault();
    $tar=$(e.target);
    if($tar.hasClass('male')){
      console.log(1)
      $tar.addClass('active-male').siblings().removeClass('active-woman');
      $('#role-con .male-con').addClass('active').next().removeClass('active')
    }
    else if($tar.hasClass('woman')){
      console.log(2)
      $tar.addClass('active-woman').siblings().removeClass('active-male');
      $('#role-con .woman-con').addClass('active').prev().removeClass('active');
    }
  });
  $('#show .show-con li').mouseover(function(e){
    var $tar=$(e.target);
    if($tar.hasClass('border')){
      $tar.children().eq(0).removeClass('active-t');
      timer1=setTimeout(function(){
        $tar.children().eq(1).removeClass('active-l');
      },200);
      timer2=setTimeout(function(){
        $tar.children().eq(2).removeClass('active-b');
      },400);
      timer3=setTimeout(function(){
        $tar.children().eq(3).removeClass('active-r');
      },600);
      timer4=setTimeout(function(){
        $tar.next().css('display','block');
      },800);
    }
  })
  $('#show .show-con li').mouseout(function(e){
    var $tar=$(e.target);
    if($tar.hasClass('border')){
      //console.log($tar.next())
      clearTimeout(timer4)
      clearTimeout(timer3)
      clearTimeout(timer2)
      clearTimeout(timer1)
      $tar.next().css('display','none');
      $tar.children().eq(3).addClass('active-r');
      setTimeout(function(){
        $tar.children().eq(2).addClass('active-b');
      },200);
      setTimeout(function(){
        $tar.children().eq(1).addClass('active-l');
      },400);
      setTimeout(function(){
        $tar.children().eq(0).addClass('active-t');
      },600);
    }
  })


  $('#show .show-ul').click(function(e){
    if($(e.target).index()=='0'){
      console.log(1)
      $(e.target).addClass('active1').siblings().removeClass();
      $('#show .item-1').css('display','block').parent().siblings().children().css('display','none');
      $('#item-one').css('display','flex').siblings().css('display','none')};
    if($(e.target).index()=='1'){
      $(e.target).addClass('active2').siblings().removeClass();
      console.log(2)
      $('#show .item-2').css('display','block').parent().siblings().children().css('display','none');
      $('#item-one').css('display','flex').siblings().css('display','none')};
    if($(e.target).index()=='2'){
      $(e.target).addClass('active3').siblings().removeClass();
      $('#show .item-3').css('display','block').parent().siblings().children().css('display','none');
      $('#item-three').css('display','flex').siblings().css('display','none');}
    if($(e.target).index()=='3'){
      $(e.target).addClass('active4').siblings().removeClass();
      $('#show .item-4').css('display','block').parent().siblings().children().css('display','none');
      $('#item-four').css('display','flex').siblings().css('display','none');}
  })
  

})
function slds(){
  var swiper = new Swiper({
    el: '.swiper-container',
    effect : 'cube',
    cubeEffect: {
      slideShadows: true,
      shadow: true,
      shadowOffset: 100,
      shadowScale: 0,
      autoplay: true,
    },
    scrollbar: {
      el: '.swiper-scrollbar',
    },
    mousewheel: {
      enabled: true,
    },
    keyboard: {
      enabled: true,
    },
    pagination: {
      el: '.swiper-pagination',
    },
    navigation: {
      nextEl: '.swiper-button-next',
      prevEl: '.swiper-button-prev',
    },
  })
}
slds();

