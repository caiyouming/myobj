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
      //console.log($tar.next())
      /*(async function(){
        await new Promise(function(){
          setTimeout(function(){
            $tar.children().eq(1).removeClass('active-l');
          },200);
          open();
        })
        await new Promise(function(){
          setTimeout(function(){
            $tar.children().eq(2).removeClass('active-b');
          },200);
          open();
        })
        await new Promise(function(){
          setTimeout(function(){
            $tar.children().eq(3).removeClass('active-r');
          },200);
          open();
        })
        await new Promise(function(){
          setTimeout(function(){
            $tar.next().css('display','block');
          },200);
          open();
        })
      })()*/
      $tar.children().eq(0).removeClass('active-t');
      setTimeout(function(){
        $tar.children().eq(1).removeClass('active-l');
      },200);
      setTimeout(function(){
        $tar.children().eq(2).removeClass('active-b');
      },400);
      setTimeout(function(){
        $tar.children().eq(3).removeClass('active-r');
      },600);
      setTimeout(function(){
        $tar.next().css('display','block');
      },800);
    }
  })
  $('#show .show-con li').mouseout(function(e){
    var $tar=$(e.target);
    if($tar.hasClass('border')){
      //console.log($tar.next())
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


})


