<template>
  <div>
    <lg-header></lg-header>
    <nav>
      <div class="container nav-box">
        <div class="intro-con">
          <p class="cname">蛋壳公寓招聘</p>
          <p class="jname">大数据架构师</p>
          <p class="jneed">30k-45k /北京 / 经验5-10年 / 本科及以上 / 全职</p>
          <p class="jpro">系统架构</p>
          <p><span class="jtime">10:45</span>   发布于拉勾网</p>
        </div>
        <div class="btn-user">
          <a href="javascript:" id="btn-login1" @click="showForm()">收藏</a>
          <a href="javascript:" id="btn-login2" @click="showForm()">投个简历</a>
        </div>
      </div> 
    </nav>
    <section>
      <div class="container">
        <div class="swiper-container swiper-box">
          <div class="swiper-scrollbar"></div>
          <div class="swiper-button-prev"></div>
          <div class="swiper-button-next"></div>
          <div class="swiper-wrapper">
            <div class="swiper-slide">
              <p class="title">职位诱惑：</p>
              <p>技术大牛</p>
              <p>大平台</p>
              <p>快速成长</p>
              <p>福利好</p>
            </div>
            <div class="swiper-slide">
              <p class="title">职位描述：</p>
              <p>1、完成公司大数据平台、数据仓库、数据集市的规划及实现；</p>
              <p>2、参与大数据平台相关业务产品需求调研，需求分析，并独立完成核心模块代码实现；</p>
              <p>3、参与现有大数据平台构架的改进，提质量及效率；</p>
              <p>4、协助测试人员进行软件的功能及性能测试。</p>
            </div>
            <div class="swiper-slide">
              <p class="title">任职资格：</p>
              <p>1.本科以上学历，计算机相关专业；</p>
              <p>2. 6年研发以上相关工作经验，3年以上互联网大数据平台研发经验；</p>
              <p>3. 有项目管理经验，参与过过多个大型的数据仓库研发项目；</p>
              <p>4. 精通数据建模、数据标准管理、元数据管理、数据质量管理</p>
              <p> 5. 精通大数据Hadoop体系的相关技术，具有大数据平台的架构实战经验。具备Flume/Kafka/Sqoop/Hive/Storm/Spark/Hbase/Elastic Search等工具的实际开发经验；</p>
              <p>6. 良好的沟通表达（口头及书面）和文档交付能力、良好的团队合作精神压力承受能力。</p>
            </div>
          </div>
        </div>
      </div>
    </section>
    <div class="container place-job">
      <p class="title">工作地址</p>
      <p>
        <span>北京 - 东城区 - 朝阳门 - 阳门内大街8号朝阳首府2层212</span>
        <a href="#" id="btn-map" @click="showMap()">查看地图</a>
      </p>
    </div>
    <div id="about-login" v-show="isShow1">
      <div class="box">
        <!-- 登录类型 -->
        <a href="javascript:" class="close-btn"  @click="showForm()">X</a>
        <div class="choose-type" @click="changeLogin()">
          <a href="javascript:" @click="wxLogin()" v-show="!loginType">
            <div class="qr-wx-img"></div>
            <div class="qr-name">微信快速登录</div>
          </a>
          <a href="javascript:" @click="wxLogin()" v-show="loginType">
            <div class="qr-u-img"></div>
            <div class="qr-name" >账号密码登录</div>
          </a>
        </div>
        <div class="login-con">
          <!-- 登录方式 -->
          <div class="con-l">
            <div class="choose-login clearfloat">
              <a href="javascript:" class="login-type1" @click="pwdLogin()">密码登录</a>
              <a href="javascript:" class="login-type2" @click="pwdLogin()">验证码登录</a>
            </div>
            <div class="login" v-show="!iswxShow">
              <div class="u-login" v-show="ispwdShow">
                <form action="" @submit.prevent="getSubmit">
                  <input type="text" id="uname" 
                  placeholder="请输入您的手机号/邮箱" @blur="checkUser(this)" v-model="uname">
                  <p id="c-uname" v-text="cku"></p>
                  <input type="password" id="upwd" placeholder="请输入您的密码" @blur="checkUpwd()" v-model="upwd">
                  <p id="c-upwd" v-text="ckp"></p>
                  <a href="" class="forget"></a>
                  <input type="submit" value="登录 " id="u-btn">
                </form>
              </div>
              <div class="p-login" v-show="!ispwdShow">
                <form action="">
                  <input type="text" placeholder="请输入常用手机号码">
                  <p></p>
                  <input type="text" placeholder="请输入验证码" id="phone-id"><a href="" id="getCode">获取验证码</a>
                  <p></p>
                  <input type="submit" value="登录" id="p-btn" @submit="getSubmit">
                </form>
              </div>
            </div>
            <div class="qr-login"  v-show="iswxShow">
              <img src="http://127.0.0.1:8080/img/pc-login-image.png" alt="">
            </div>
          </div>
          
          <div class="con-r">
            <p>还没有帐号:</p>
            <a href="" class="register">立即注册</a>
            <p>使用以下帐号直接登录:</p>
            <p class="">
              <a href=""><img src="http://127.0.0.1:8080/img/icon-baidu_d1ad2b6.png" alt=""></a>
              <a href=""><img src="http://127.0.0.1:8080/img/icon-sina_e161002.png" alt=""></a>
              <a href=""><img src="http://127.0.0.1:8080/img/icon-tencent_c85c20a.png" alt=""></a>
              <a href=""><img src="http://127.0.0.1:8080/img/icon-wechat_823d4eb.png" alt=""></a>
            </p>
          </div>
        </div>
      </div>
    </div>
    <div id="about-map" v-show="isShow2">
      <div class="map-outbox"></div>
      <div class="map-box">
        <a href="javascript:" class="close-btn" @click="showMap()">X</a>
        <p>公司地址</p>
        <baidu-map id="allmap" ak="NATfql6e3ENEDpY0su4WCbU3ydRDkERw"></baidu-map>
      </div>
    </div>
    <lg-footer></lg-footer>
  </div>
</template>
<script>
  import LgHeader from '@/components/header.vue'
  import LgFooter from '@/components/footer.vue'
  import Swiper from 'swiper'
  import 'swiper/dist/css/swiper.min.css'
  import BaiduMap from 'vue-baidu-map/components/map/Map.vue'
  export default{
    data(){
      return {
        isShow1:false,
        isShow2:false,
        iswxShow:false,
        loginType:false,
        ispwdShow:true,
        uname:'',
        upwd:'',
        cku:'',
        ckp:''
      }
    },
    methods:{
      getSwiper(){
        var swiper = new Swiper({
          el: '.swiper-container',
          effect : 'cube',
          cubeEffect: {
            slideShadows: true,
            shadow: false,
            shadowOffset: 100,
            shadowScale: 0.7
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
          }
        })
      },
      checkUser(self){
         //console.log(this.uname)
        if(this.uname==''){
          return this.cku='请输入您的用户名'
        }else if(this.uname!==''){
          return (function(self){
            //console.log(11)
            self.$http.get(`http://127.0.0.1:3000/user/checkuname?uname=${self.uname}`).then(function(res){
              if(res.data.length==0){
                return self.cku='您输入的用户名不存在'
              }else{
                return self.cku=''
              }
            })
          })(this)
        }
      },
      checkUpwd(){
        if(this.upwd==''){
          return this.ckp='密码不能为空'
        }else if(this.upwd!==''){
          return this.ckp=''
        }
      },
      getSubmit(){
        if(this.uname==''){
          return this.cku='请输入您的用户名'
        }else if(this.upwd==''){
          return this.ckp='密码不能为空'
        }else{
          return (function(self){
            self.$http.post('http://127.0.0.1:3000/user/check',`uname=${self.uname}&upwd=${self.upwd}`).then(function(res){
              if(res.data.length==0){
                return self.ckp='您输入的密码错误'
              }else{
                return location.href
              }
            })
          })(this)
        }
      },
      showForm(){
        console.log(this.isShow1)
        return this.isShow1=!this.isShow1;
      },
      showMap(){
        return this.isShow2=!this.isShow2;
      },
      wxLogin(){
        return this.iswxShow=!this.iswxShow;
      },
      pwdLogin(){
        return this.ispwdShow=!this.ispwdShow;
      },
      changeLogin(){
        return this.loginType=!this.loginType;
      }
    },
    components:{
      LgHeader,
      LgFooter,
      BaiduMap
    },
    created(){
    },
    mounted(){
      this.getSwiper();
    }
  }
</script>
<style scoped>
  body p{
    font-size: 14px;
    padding: 5px;
  }
  nav{
    width: 100%;
    background: #F2F5F4;
  }
  .nav-box{
    padding: 30px 0 20px;
    display: flex;
    justify-content: center;
  }
  .nav-box .intro-con{
    width: 70%;
  }
  .nav-box .btn-user{
    width: 30%;
  }
  .nav-box .intro-con .jname{
    font-size: 32px;
  }
  .nav-box .intro-con .jneed{
    font-size: 20px;
  }
  .nav-box .btn-user a{
    display: inline-block;
    width: 110px;
    height: 50px;
    border: 1px solid #00B38A;
    text-align: center;
    line-height: 50px;
    font-size: 16px;
    margin-right: 20px;
    border-radius: 5px;
  }
  #btn-login2,#btn-login1{
    transition: all 0.4s;
  }
  .nav-box .btn-user #btn-login2{
    background: #00B38A;
  }
  #btn-login2:hover{
    box-shadow: 0 0 10px #00AE82;
  }
  #btn-login1:hover{
    box-shadow: 0 0 10px #00AE82;
  }
  /* section */
  .swiper-box{
    padding: 50px;
    width: 1000px;
    margin: 50px auto;
    background: rgb(169, 241, 225);
    border-radius: 100px;
  }
  .swiper-box .swiper-slide{
    padding: 20px 50px 50px 150px;
    border-radius: 300px;
    height: 300px;
    background: rgb(74, 197, 154);
    
  }
  .swiper-box .swiper-slide p.title{
    font-size: 24px;
  }

  .place-job{
    padding: 50px 0;
  }
  p.title{
    font-size: 24px;
  }
  #btn-map{
    color: rgb(2, 201, 151);
    margin-left: 800px;
    transition: all 0.4s;
  }
  #btn-map:hover{
    color: rgb(2, 129, 98);
  }
  #about-login,#about-map{
    position: absolute;
    left: 0px;
    top: 0px;
    width: 100%;
    height: 100%;
    background: rgba(0,0,0,0.35);
    z-index:100;
    display: block;
  }

  /* login */
  #about-login div.box{
    position: absolute;
    left: 50%;
    top: 50%;
    width: 700px;
    margin: -201px 0 0 -350px;
    background: white;
    z-index: 999;
  }
  #about-login div.box .close-btn{
    display: block;
    width: 30px;
    height: 25px;
    position: absolute;
    right: 0px;
    top: 0px;
    background: #E8E8E8;
    text-align: center;
    line-height: 25px;
  }
  #about-login div.box .choose-type{
    position: absolute;
    left: 10px;
    top: 10px;
    width: 52px;
    height: 52px;
    z-index: 99;
  }
  #about-login div.box .choose-type a{
    display: block;
    position: absolute;
    left: 0px;
    top: 0px;
  }
  #about-login div.box .choose-type a .qr-wx-img{
    width: 52px;
    height: 52px;
    background: url("http://127.0.0.1:8080/img/QR-wx.svg");
    transition: all 0.3s;
  }
  #about-login div.box .choose-type a .qr-u-img{
    width: 52px;
    height: 52px;
    background: url("http://127.0.0.1:8080/img/qr-u.svg");
    transition: all 0.3s;
  }
  #about-login div.box .choose-type a .qr-name{
    position: absolute;
    left: 58px;
    top: 0px;
    width: 106px;
    height: 34px;
    color: rgb(97, 97, 97);
  }
  #about-login div.box .choose-type a .qr-wx-img:hover{
    background: url("http://127.0.0.1:8080/img/QR-wx-h.svg");
  }
  #about-login div.box .choose-type a .qr-u-img:hover{
    background: url("http://127.0.0.1:8080/img/qr-u-h.svg");
  }
  #about-login div.box .login-con{
    width: 700px;
    padding: 62px 70px 68px 78px;
    background-color: #fff;
    display: table;
    border-radius: 2px;
    border: 1px solid #dce1e6;
  }
  #about-login div.box .login-con>div{
    float: left;
  }
  #about-login div.box .login-con .con-l{
    position: relative;
    width: 290px;
  }
  #about-login div.box .login-con .choose-login a{
    display: block;
    float: left;
    width: 50%;
    text-align: center;
    font-size: 16px;
    height: 30px;
    border-bottom: 1px solid #E8E8E8;
    margin-bottom: 20px;
  }
  #about-login div.box .login-con .choose-login a.login-type1{
    color: #00b38a;
    border-bottom:  1px solid #00b38a;
  }
  #about-login div.box .login-con .con-l .login{
    position: relative;
    height: 200px;
  }
  #about-login div.box .login-con .con-l .login>div{
    position: absolute;
    top: 0px;
    left: 0px; 
  }
  #about-login div.box .login-con .con-l .u-login input{
    width: 290px;
    outline: none;
    height: 44px;
    line-height: 44px;
    margin: 5px   0 ;
    border: 1px solid  #E8E8E8;
    padding-left:10px; 
    transition: all 0.5s;
  }   
  #about-login div.box .login-con .con-l .u-login input:hover{
    border: 1px solid #00AE82;
    box-shadow: 0 0 5px rgb(11, 165, 126);
  }
  #about-login div.box .login-con .con-l .u-login p{
    height: 25px;
    font-size: 14px;
    padding-left: 10px;
    color: red;
    display: block;
    transition: all 0.3s;
  }
  #about-login div.box .login-con .con-l .u-login #u-btn{
    background: #00AE82;
  }
  #about-login div.box .login-con .con-l .p-login input{
    width: 290px;
    outline: none;
    height: 44px;
    line-height: 44px;
    margin: 5px   0 ;
    border: 1px solid  #E8E8E8;
    padding-left:10px; 
    transition: all 0.5s;
  }
  #about-login div.box .login-con .con-l .p-login #phone-id{
    width: 200px;
  }
  #about-login div.box .login-con .con-l .p-login #getCode{
    margin: 5px 0 ;
    display: inline-block;
    width: 90px;
    height: 44px;
    line-height: 44px;
    text-align: center;
    color: #00AE82;
  }
  #about-login div.box .login-con .con-l .p-login p{
    height: 25px;
    font-size: 14px;
    padding-left: 10px;
    color: red;
    opacity: 0;
    transition: all 0.3s;
  }
  #about-login div.box .login-con .con-l .p-login #p-btn{
    background: #00AE82;
  }
  #about-login div.box .login-con .con-l .p-login input:hover{
    border: 1px solid #00AE82;
    box-shadow: 0 0 5px rgb(11, 165, 126);
  }
  #about-login div.box .login-con .con-l .qr-login{
    position: absolute;
    left: 0px;
    top: 0px;
    width: 290px;
  }
  #about-login div.box .login-con .con-l .qr-login img{
    width: 90%;
  }
  #about-login div.box .login-con .con-r{
    margin:0 0 0  25px;
    border-left: 1px dashed #E8E8E8;
    padding: 25px 0 0 25px; 
    height: 250px;
  }
  #about-login div.box .login-con .con-r p{
    font-size: 14px;
    padding: 10px 0;
  }
  #about-login div.box .login-con .con-r a{
    color: #00AE82;
    font-size: 16px;
    padding: 0 10px 20px 5px
  }

  /* map */
  #about-map div.map-outbox{
    position: absolute;
    left: 50%;
    top: 50%;
    margin: -295px 0 0 -365px;
    background: rgba(0,0,0,0.45);
    z-index: 998;
    width: 730px;
    height: 590px;
  }
  #about-map div.map-box{
    position: absolute;
    left: 50%;
    top: 50%;
    width: 700px;
    margin: -280px 0 0 -350px;
    background: white;
    z-index: 999;
  }
  #about-map div.map-box .close-btn{
    display: block;
    width: 45px;
    height: 40px;
    position: absolute;
    right: 0px;
    top: 0px;
    font-size: 24px;
    color: white;
    text-align: center;
    line-height: 40px;
  }
  #about-map div.map-box p{
    padding-left: 20px;
    width: 100%;
    height: 40px;
    font-size: 24px;
    background: #00AE82;
  }
  #about-map div.map-box #allmap{
    width: 100%;
    height: 520px;
  }

</style>