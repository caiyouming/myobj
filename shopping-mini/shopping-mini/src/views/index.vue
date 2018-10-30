<template>
  <div class="app">
    <mt-swipe :auto="2000">
      <mt-swipe-item v-for="item in list" :key="item.id">
        <img :src="item.img_url">
      </mt-swipe-item>
    </mt-swipe>
    <div class="mui-content">
        <ul class="mui-table-view mui-grid-view mui-grid-9">
            <li class="mui-table-view-cell mui-media mui-col-xs-2 mui-col-sm-2"><router-link to="/index/news">
                        <img src="http://127.0.0.1:3000/img/menu1.png">
                        <div class="mui-media-body">资讯</div></router-link></li>
            <li class="mui-table-view-cell mui-media mui-col-xs-2 mui-col-sm-2"><router-link to="/index/goodList">
                        <img src="http://127.0.0.1:3000/img/menu2.png">
                        <div class="mui-media-body">点点</div></router-link></li>
            <li class="mui-table-view-cell mui-media mui-col-xs-2 mui-col-sm-2"><a href="#">
                        <img src="http://127.0.0.1:3000/img/menu3.png">
                        <div class="mui-media-body">购物</div></a></li>
            <li class="mui-table-view-cell mui-media mui-col-xs-2 mui-col-sm-2"><a href="#">
                        <img src="http://127.0.0.1:3000/img/menu4.png">
                        <div class="mui-media-body">支付</div></a></li>
            <li class="mui-table-view-cell mui-media mui-col-xs-2 mui-col-sm-2"><a href="#">
                        <img src="http://127.0.0.1:3000/img/menu5.png">
                        <div class="mui-media-body">订单</div></a></li>
            <li class="mui-table-view-cell mui-media mui-col-xs-2 mui-col-sm-2"><a href="#"> 
                        <img src="http://127.0.0.1:3000/img/menu6.png">
                        <div class="mui-media-body">联系</div></a></li>
      </ul> 
    </div>
    <ul class="shopping-foot">
      <li class="foot-item">
        <img src="http://127.0.0.1:3000/img/foot1.jpg" alt="">
        <p>天下美食，除我还有谁</p>
      </li>
      <li class="foot-item">
        <img src="http://127.0.0.1:3000/img/foot2.jpg" alt="">
        <p>天下美食，除我还有谁</p>
      </li>
      <li class="foot-item">
        <img src="http://127.0.0.1:3000/img/foot3.jpg" alt="">
        <p>天下美食，除我还有谁</p>
      </li>
      <li class="foot-item">
        <img src="http://127.0.0.1:3000/img/foot1.jpg" alt="">
        <p>天下美食，除我还有谁</p>
      </li>
      <li class="foot-item">
        <img src="http://127.0.0.1:3000/img/foot2.jpg" alt="">
        <p>天下美食，除我还有谁</p>
      </li>
      <li class="foot-item">
        <img src="http://127.0.0.1:3000/img/foot3.jpg" alt="">
        <p>天下美食，除我还有谁</p>
      </li>
      <li class="foot-item">
        <img src="http://127.0.0.1:3000/img/foot1.jpg" alt="">
        <p>天下美食，除我还有谁</p>
      </li>
      <li class="foot-item">
        <img src="http://127.0.0.1:3000/img/foot2.jpg" alt="">
        <p>天下美食，除我还有谁</p>
      </li>
      <li class="foot-item">
        <img src="http://127.0.0.1:3000/img/foot3.jpg" alt="">
        <p>天下美食，除我还有谁</p>
      </li>
      <li class="foot-item">
        <img src="http://127.0.0.1:3000/img/foot1.jpg" alt="">
        <p>天下美食，除我还有谁</p>
      </li>
    </ul>
  </div>
</template>
<script>
  import {Toast} from 'mint-ui';
  export default{
    data(){
      return {
        list:[]
      }
    },
    methods:{
      getImageList(){
        var url=`http://127.0.0.1:3000/imagelist/list`
        this.$http.get(url).then(result=>{
          //console.log(result);
          if(result.body.code==1){
            this.list = result.body.msg;
          }else{
            Toast('加载轮播图片失败');
          }
        })
      }
    },
    created(){
      this.getImageList()
    }
  }
</script>
<style scoped>
  div.app>div.mint-swipe{
    height:140px;
  }
  div.app>div.mint-swipe img{
    width:100%;
  }
  div.app .mui-table-view.mui-grid-view .mui-table-view-cell{
    background:white;
    border:none;
  }
  div.app>div>ul>li img{
    width:100%;
  }
  .shopping-foot{
    display: flex;
    justify-content: space-around;
    flex-wrap: wrap;
  }
  .shopping-foot .foot-item{
    width: 48%;
    background: white;
    margin: 5px 0;
    padding: 6px;
  }
  .shopping-foot .foot-item img{
    width: 100%;
    height: 140px;
  }
  .shopping-foot .foot-item p{
    text-align: center;
    font-size: 0.5rem;
    margin: 0px;
  }

</style>