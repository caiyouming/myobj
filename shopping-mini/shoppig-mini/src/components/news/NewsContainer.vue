<template>
  <div class="app_newslist">
    <div class="mui-card" v-for="item in list" :key="item.id">
      <!--页眉，放置标题-->
      <router-link :to="'/home/newslist/newsListCon/'+item.id">
        <div class="mui-card-header">{{item.title}}</div>
        <!--内容区-->
        <div class="mui-card-content"><img src="../../img/1.jpg" alt=""></div>
        <!--页脚，放置补充信息或支持的操作-->
        <div class="mui-card-footer">{{item.ctime | dataFormat}}</div>
      </router-link>
    </div>
    <mt-button type="primary" @click="getMore()">加载更多......</mt-button>
    <router-view></router-view>
  </div>
</template>
<script>
  export default({
    data(){
      return {
        list:[],
        pageIndex:0
      }
    },
    methods:{
      getMore(){
        this.pageIndex++;
        //console.log(this.pageIndex);
        var url=`newslist/list?pno=${this.pageIndex}`;
        this.$http.get(url).then(result=>{
          //console.log(10)
          //console.log(result);
          this.list=this.list.concat(result.body.msg.data);
        })
      },
      getNewsList(){
        var url=`newslist/list`
        this.$http.get(url).then(result=>{
          //console.log(result)
          if(result.body.code==1)this.list=result.body.msg.data
        })
      }
    },
    created(){
     
      this.getMore();
    }
  })
</script>
<style>
  img{
    width:100%;
  }
  .mint-button--normal{
    width :100%;
  }
</style>