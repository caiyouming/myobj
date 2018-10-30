<template>
  <div class="newslist_sub">
    <h4>发表评论</h4>
    <textarea placeholder="请输入评论(最多120字)" maxlength="120" v-model="msg"></textarea>
    <mt-button size="large" type="primary" @click="postComment">发表评论</mt-button>
    <div class="cmt-list" v-for="(item,i) in list">
      <div class="cmt-list-item">
        <div class="cmt-title">
          {{i+1}}楼; {{item.username}}： 发表时间：{{item.ctime | dataFormat}}
        </div>
        <div class="cmt-body">
          {{item.content}}
        </div>
      </div>
    </div>
    <mt-button size="large" type="primary" @click="getNewsDetail">加载更多</mt-button>
  </div>
</template>
<script>
  import {Toast} from 'mint-ui';
  export default({
    data(){
      return {
        list:[],
        msg:'',
        pageIndex:0,
        myShow:[]
      }
    },
    methods:{
      postComment(){
        var username='匿名用户';
        var nid=this.id;
        var content=this.msg;
        //console.log(username,nid,content);
        var url=`newslist/saveComment`;
        var obj={nid,content,username};
        this.$http.post(url,obj).then(result=>{
          if(result.body.code==1){
            Toast(result.body.msg);
            this.msg = '';
            this.$http.get("newslist/commentlist?nid="+this.id).then(result=>{
              this.list=result.body.data.concat(this.list);
            })
          }  
          else Toast(result.body.msg);
        });
      },
      getNewsDetail(){
        this.pageIndex++
        this.$http.get("newslist/commentlist?nid="+this.id+'&pno='+this.pageIndex).then(result=>{
          //console.log(result);
          this.list=this.list.concat(result.body.data);
          //console.log(this.list);
        })
      }
    },
    created(){
      this.getNewsDetail();
    },
    props:['id']
  })

</script>
<style>
  .newslist_sub{
    margin-top:40px;
    font-size:18px;
  }
  .newslist_sub>textarea{
    font-size:14px;
    margin-top:5px;
    padding:10px 5px;
  }
  .newslist_sub>div{
    margin:20px 0;
  }
  .newslist_sub .cmt-title{
    margin-bottom:10px;
    background:rgb(200,110,110);
  }
  .newslist_sub .cmt-title,.cmt-body{
    font-size:14px;
  }
</style>