<template>
  <div>
    <lg-header></lg-header>
    <nav>
      <div class="cp container">
        <div class="cp-logo"><img :src="company.cimg" alt=""></div>
        <div class="cp-con">  
          <ul>
            <li class="cp-title">
              <div>
                <a href="#" class="caption">{{company.cname}}</a>
                <a href="#" title="已完成资质认证，并完善了更优质的公司主页信息" class="btn-title">拉勾认证</a>
                <p v-text="company.cintro"></p>
              </div>
            </li>
            <li>
              <p v-text="jobnum.length"></p>
              <span>招聘职位</span>
            </li>
            <li>     
              <p>100%</p>
              <span>简历及时处理率</span>
            </li>
            <li>
              <p>1天</p>
              <span>简历处理用时</span>
            </li>
            <li>
              <p>206个</p>
              <span>面试评价</span>
            </li>
            <li>
              <p>今天</p>
              <span>企业最近登录</span>
            </li>
          </ul>
        </div>
      </div>
      <ul class="tabbar container">
        <li><a href="javascript:" :class="{active:isActive}" @click="toggleTabs(CompanyIndex);">公司主页</a></li>
        <li><a href="javascript:" :class="{active:!isActive}" @click="toggleTabs(CompanyJob);">招聘职位（{{jobnum.length}}）</a></li>
      </ul>
    </nav>
    <company-index :is="currentView" keep-alive></company-index>
    <lg-footer></lg-footer>
  </div>
</template>
<script>
  import LgHeader from '@/components/header.vue'
  import LgFooter from '@/components/footer.vue'
  import CompanyIndex from '@/components/company-index.vue'
  import CompanyJob from '@/components/company-job.vue'
  export default {
    data(){
      return {
        isActive:true,
        cid:'',
        jid:'',
        CompanyIndex:'CompanyIndex',
        CompanyJob:'CompanyJob',
        currentView:'CompanyIndex',
        company:{
          cid:'',
          cimg: '',
          cintro: '',
          cname: '',
          cnum: '',
          cpro: '',
          cs_total: '',
          cspeed: ''
        },
        jobnum:[]
      }
    },
    methods:{
      toggleTabs (tab) {
        this.currentView = tab;
        this.isActive = !this.isActive
      },
      getMsg(){
        this.cid = this.$route.query.cid;
        this.jid = this.$route.query.jid;
        (function(self){
          self.$http.get(`http://localhost:3000/index/detail/?cid=${self.cid}`).then(function(res){
            self.company=res.data.company[0]
            self.jobnum=res.data.jobnum
            console.log(self.company)
          })
        })(this)
      }
    },
    components:{
      LgHeader,
      CompanyIndex,
      CompanyJob,
      LgFooter
    },
    mounted(){
      this.getMsg(self);
    }
  }
</script>
<style scoped>
  nav{
  padding-top: 50px;
  background: #F0F4F3;
  }
  nav div.cp{
    background: #FFFFFF;
    display: flex;
    justify-content: center;
  }
  nav div.cp .cp-logo{
    width: 15%;
    border: 1px solid #EBEBEB;
    text-align: center;
  }
  nav div.cp .cp-logo img{

    width: 165px;
  }
  nav div.cp .cp-con{
    width: 85%;
  }
  nav div.cp ul{
    display: flex;
    justify-content: left;
    flex-wrap: wrap;
    background: #F9F9F9;
  }
  nav div.cp ul li{
    margin: 5px 0;
    width: 15%;
    padding: 0 1%;
    text-align: center;
    border-right: 1px solid #EBEBEB;
  }
  nav div.cp ul li.cp-title{
    margin: 0;
    width: 100%;
    text-align: left;
    background: white;
    height: 117px;
  }
  nav div.cp ul li span{
    font-size: 14px;
    color: #AFAFAF;
  }
  nav ul.tabbar{
    display: flex;
    justify-content: left;
    height: 60px;
  }
  nav ul.tabbar .active{
    background: #00AE82;
    color: white;
  }
  nav ul.tabbar li a{
    font-size:20px;
    text-align: center;
    line-height: 60px;
    padding: 0px 15px 0 15px;
  }
  nav div.cp ul li.cp-title .caption{
    display: inline-block;
    font-size: 32px;
    font-weight: 700;
    padding: 10px 10px;
    margin-top: 10px;
  }
  nav div.cp ul li.cp-title .btn-title{
    display: inline-block;
    width: 100px;
    text-align: center;
    height: 30px;
    border-radius: 30px;
    background: #00AE82;
    color: white;
    line-height: 30px;
  }


  
</style>
