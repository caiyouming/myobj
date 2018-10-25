<template>
  <div>
    <header id="header">
      <div>
        <ul class="container no-login">
          <li><a href="#"><i class="app-icon"></i>拉勾APP</a></li>
          <li><span>|</span></li>
          <li><a href="#">进入企业版</a></li>
          <li class="about-user"><a href="#">登录</a></li>
          <li><span>|</span></li>
          <li><a href="#">注册</a></li>
        </ul>
      </div>
      <div>
        <ul class="container tab">
          <li><a href="" class="logo"></a></li>
          <li>杭州站</li>
          <li><a href="" id="change-city">[切换城市]</a></li>
          <li><router-link to="/index">首页</router-link></li>
          <li><router-link to="/company">公司</router-link></li>
        </ul>
      </div>
    </header>   
  </div>
</template>
<script>
  export default{
    data(){
      return {}
    },
    methods:{
    
    },
    mounted() {
      
    }
  }
</script>
<style scoped> 
  header>div:first-child{
    background: #2E2E2E;
    height: 30px;
  }
  header>div:last-child{
    background: #f9f9f9;
    height: 56px;
  }
  header ul{
    display: flex;
    justify-content: left;
    padding: 0px 100px;
  }

  header div:first-child ul a{
    color: #F9F9F9
  }
  header .no-login li{
    height: 30px;
    line-height: 30px;
  }
  header ul li span{
    color: #545454;
    padding: 0 10px;
  }
  header .no-login li i{
    background: url("http://127.0.0.1:8080/img/app_icon.png");
    display: inline-block;
    width: 10px;
    height: 15px;
    vertical-align: middle;
  }
  header .no-login li:first-child a{
    color: #24B69B;
    padding: 0 10px;
    display: block;
  }
  header .no-login .about-user{
    margin-left:700px; 
  }
  header .tab{
    line-height: 56px;
  }
  header .tab li:nth-child(3){
    margin-right: 150px;
  }
  header .tab .logo{
    background: url("../img/logo.png");
    width: 97px;
    height: 34px;
    margin:11px 20px 11px 50px;
    line-height: 56px;
  }
  header .tab a{
    display: block;
    margin: 0 20px;
    font-size: 18px;
    color: #909090;
  }
  header .tab #change-city{
    margin: 3px 40px 0px 10px;
    color: #909090;
    font-size: 14px;
  }
  header .tab a:hover{
    color: #2E2E2E;
    text-decoration: underline;
  }
</style>

