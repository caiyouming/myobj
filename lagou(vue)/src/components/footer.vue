<template>
  <div>
    <footer id="footer">
      <ul class="server container">
        <li> 
          <ul>
            <li><a href="" class="download"><i class="icon"></i>下载拉勾APP</a></li>
            <li><a href="" class="wx-pro"><i class="icon"></i>微信小程序</a></li>
            <li><a href="" class="wx">拉勾微信</a><a href="" class="wb">拉勾微博</a></li>
          </ul>
        </li>
        <li>
          <ul>
            <li>企业服务</li>
            <li><a href="">招聘解决方案</a></li>
            <li><a href="">公司搜索</a></li>
            <li><a href="">拉勾APP</a></li>
          </ul>
        </li>
        <li>
          <ul>
            <li>用户帮助</li>
            <li><a href="">帮助中心</a></li>
            <li><a href="">用户服务协议</a></li>
            <li><a href="">在线提问</a></li>
          </ul>
        </li>
        <li> 
          <ul>
            <li>联系方式</li>
            <li>服务热线：4006 2828 35 (9:00 -18:00)</li>
            <li><a href="">企业服务邮箱：cc@lagou.com</a></li>
            <li><a href="">联系我们</a></li>
          </ul>
        </li>
      </ul>
      <ul class="copy-right container"> 
        <li>2018 拉勾网</li>
        <li><a href="">&copy;京ICP备14023790号-2</a></li>
        <li><a href="">京公网安备 11010802024043号</a></li>
        <li>违法和不良信息举报<br>
          4006 2828 35</li>
      </ul>
    </footer>
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
  footer .server{
  margin-top:40px; 
  display: flex;
  justify-content: space-between;
}
footer .server li:first-child ul{
  width: 182px;
}
footer .server li:first-child ul li{
  margin-top: 10px;
}
footer .server li:first-child ul .download{
  width: 182px;
  height: 42px;
  border: 1px solid green;
  text-align: center;
  line-height: 42px;
  font-size: 14px;
  color: #00AE82;
}
footer .server li:first-child ul .download i{
  display: inline-block;
  width: 12px;
  height: 16px;
  background: url("http://127.0.0.1:8080/img/app_icon.png");
  vertical-align: middle;
}
footer .server li:first-child ul .download i img{
  width: 100%;
}
footer .server li:first-child ul .wx-pro{
  width: 182px;
  height: 42px;
  border: 1px solid green;
  text-align: center;
  line-height: 42px;
  font-size: 14px;
  color: #00AE82;
}
footer .server li:first-child ul .wx-pro i{
  display: inline-block;
  width: 12px;
  height: 16px;
  background: url("http://127.0.0.1:8080/img/app_icon.png");
  vertical-align: middle;
}
footer .server li:first-child ul .wx-pro i img{
  width: 100%;
}
footer .server li:first-child ul li:last-child a{
  margin: 0 0 0 30px;
  font-size: 14px;
}
footer .server li:first-child~li ul li:first-child{
  margin-bottom: 20px;
  font-size: 16px;
  font-weight: 700;
  color: #4D4D4D;
}
footer .server li:first-child~li ul li:first-child~li a,footer .server li:first-child~li ul li:first-child~li{
  font-size: 12px;
  margin: 4px 0;
}
footer .copy-right{
  margin-top: 100px;
}
footer .copy-right li{
  float: left;
  font-size: 14px;
  padding: 0 10px;
}
footer .copy-right li a{
  font-size: 12px;
}
footer .copy-right li:last-child{
  border: 1px solid #D0D6DB;
  padding: 10px;
  font-size: 12px;
  margin:-10px 0 0 30px;
  text-align: center;
}
</style>

