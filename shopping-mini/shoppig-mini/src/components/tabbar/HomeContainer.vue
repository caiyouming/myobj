<template>
  <div class="app">
    <mt-swipe :auto="2000">
      <mt-swipe-item v-for="item in list" :key="item.id">
        <img :src="item.img_url">
      </mt-swipe-item>
    </mt-swipe>
     <div class="mui-content">
        <ul class="mui-table-view mui-grid-view mui-grid-9">
            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><router-link to="/home/newslist">
                        <img src="../../img/menu1.png">
                        <div class="mui-media-body">新闻资讯</div></router-link></li>
            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><router-link to="/home/goodList">
                        <img src="../../img/menu2.png">
                        <div class="mui-media-body">点点</div></router-link></li>
            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><a href="#">
                        <img src="../../img/menu3.png">
                        <div class="mui-media-body">购物车</div></a></li>
            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><a href="#">
                        <img src="../../img/menu4.png">
                        <div class="mui-media-body">支付</div></a></li>
            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><a href="#">
                        <img src="../../img/menu5.png">
                        <div class="mui-media-body">订单</div></a></li>
            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><a href="#"> 
                        <img src="../../img/menu6.png">
                        <div class="mui-media-body">联系</div></a></li>
      </ul> 
    </div>
    <router-view></router-view>
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
<style>
  div.app>div.mint-swipe{
    height:150px;
  }
  div.app>div.mint-swipe img{
    width:100%;
  }
  div.app>div.mui-content{
    margin-top:30px;
  }
  div.app .mui-table-view.mui-grid-view .mui-table-view-cell{
    background:white;
    border:none;
  }
  div.app>div>ul>li img{
    width:50%;
  }

</style>