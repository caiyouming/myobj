<template>
  <div class="app_newslist_container">
     <!--新闻详细页没有现成组件-->
    <h1 class="title">{{newsInfo.title}}</h1>
    <p class="subtitle">
      <span>发表时间:{{newsInfo.ctime | dataFormat}}</span>
      <span>点击: {{newsInfo.click}}次</span>
    </p>
    <div class="container" v-text="newsInfo.content">
    </div>
    <!--评论区域 创建评论-->
    <comment-box :id="this.id"></comment-box>
  </div>
</template>
<script>
  import comment from './subComponent/comment';
  export default({
    data(){
      return {
        id:this.$route.params.id,
        newsInfo:{}
      }
    },
    methods:{
      getNewsListCon(){
        var url=`newsList/find?id=${this.id}`;
        this.$http.get(url).then(result=>{
          this.newsInfo=result.body.msg[0]
          //console.log(this.newsInfo)
        })
      }
    },
    created(){
      this.getNewsListCon()
    },
    components:{
      'comment-box':comment
    }
  })
</script>
<style>
  
</style>