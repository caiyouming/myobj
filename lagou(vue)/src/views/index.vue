<template :key="index">
  <div>
      <!-- 搜索框 -->
    <lg-header></lg-header>
    <div class="search container">
      <div>
        <input type="text" id="SH" placeholder="实力派招收专场">
        <button id="btn">搜索</button>
      </div>
      <div class="hot-SH">
        <span>热门搜索:</span>
        <a href="#">java后端开发</a>
        <a href="#">铜板街</a>
        <a href="#">曹操专车</a>
        <a href="#">WECUT</a>
        <a href="#">自如网</a>
      </div>
    </div>

    <!-- 导航 -->
    <nav class="nav container">
      <div class="nav-l">
        <ul>
          <li>
            <span>技术</span>
            <a href="">Java</a>
            <a href="">PHP</a>
            <a href="">C++</a>
            <a href="">区块链</a>
            <ul>
              <li>
                <p>后端开发</p>
                <a href="">Java</a>
                <a href="">C++</a>
                <a href="">PHP</a>
                <a href="">数据挖掘</a>
                <a href="">后端开发其它</a>
              </li>
              <li>
                <p>移动开发</p>
                <a href="">HTML5</a>
                <a href="">Android</a>
                <a href="">iOS</a>
                <a href="">WP</a>
                <a href="">移动开发其它</a>
              </li>
              <li>
                <p>人工智能</p>
                <a href="">深度学习</a>
                <a href="">语音识别</a>
                <a href="">机器视觉</a>
                <a href="">算法工程师</a>
                <a href="">自然语言处理</a>
              </li>
              <li>
                <p>DBA</p>
                <a href="">MongoDB</a>
                <a href="">ETL</a>
                <a href="">Hive</a>
                <a href="">数据仓库</a>
                <a href="">DBA其它</a>
              </li>
              <li>
                <p>测试</p>
                <a href="">性能测试</a>
                <a href="">自动化测试</a>
                <a href="">游戏测试</a>
                <a href="">手机测试</a>
                <a href="">测试其它</a>
              </li>
            </ul>
          </li>
          <li>
            <span>产品</span>
            <a href="">产品总监</a>
            <a href="">产品经理</a>
            <ul>
                <li>
                  <p>后端开发</p>
                  <a href="">Java</a>
                  <a href="">C++</a>
                  <a href="">PHP</a>
                  <a href="">数据挖掘</a>
                  <a href="">后端开发其它</a>
                </li>
                <li>
                  <p>移动开发</p>
                  <a href="">HTML5</a>
                  <a href="">Android</a>
                  <a href="">iOS</a>
                  <a href="">WP</a>
                  <a href="">移动开发其它</a>
                </li>
                <li>
                  <p>人工智能</p>
                  <a href="">深度学习</a>
                  <a href="">语音识别</a>
                  <a href="">机器视觉</a>
                  <a href="">算法工程师</a>
                  <a href="">自然语言处理</a>
                </li>
                <li>
                  <p>DBA</p>
                  <a href="">MongoDB</a>
                  <a href="">ETL</a>
                  <a href="">Hive</a>
                  <a href="">数据仓库</a>
                  <a href="">DBA其它</a>
                </li>
                <li>
                  <p>测试</p>
                  <a href="">性能测试</a>
                  <a href="">自动化测试</a>
                  <a href="">游戏测试</a>
                  <a href="">手机测试</a>
                  <a href="">测试其它</a>
                </li>
              </ul>
          </li>
          <li>
            <span>设计</span>
            <a href="">UI设计师</a>
            <a href="">交互设计</a>
            <a href="">网页设计师</a>
            <ul>
                <li>
                  <p>后端开发</p>
                  <a href="">Java</a>
                  <a href="">C++</a>
                  <a href="">PHP</a>
                  <a href="">数据挖掘</a>
                  <a href="">后端开发其它</a>
                </li>
                <li>
                  <p>移动开发</p>
                  <a href="">HTML5</a>
                  <a href="">Android</a>
                  <a href="">iOS</a>
                  <a href="">WP</a>
                  <a href="">移动开发其它</a>
                </li>
                <li>
                  <p>人工智能</p>
                  <a href="">深度学习</a>
                  <a href="">语音识别</a>
                  <a href="">机器视觉</a>
                  <a href="">算法工程师</a>
                  <a href="">自然语言处理</a>
                </li>
                <li>
                  <p>DBA</p>
                  <a href="">MongoDB</a>
                  <a href="">ETL</a>
                  <a href="">Hive</a>
                  <a href="">数据仓库</a>
                  <a href="">DBA其它</a>
                </li>
                <li>
                  <p>测试</p>
                  <a href="">性能测试</a>
                  <a href="">自动化测试</a>
                  <a href="">游戏测试</a>
                  <a href="">手机测试</a>
                  <a href="">测试其它</a>
                </li>
              </ul>
          </li>
          <li>
            <span>运营</span>
            <a href="">新媒体运营</a>
            <a href="">编辑</a>
            <a href="">数据运营</a>
            <ul>
                <li>
                  <p>后端开发</p>
                  <a href="">Java</a>
                  <a href="">C++</a>
                  <a href="">PHP</a>
                  <a href="">数据挖掘</a>
                  <a href="">后端开发其它</a>
                </li>
                <li>
                  <p>移动开发</p>
                  <a href="">HTML5</a>
                  <a href="">Android</a>
                  <a href="">iOS</a>
                  <a href="">WP</a>
                  <a href="">移动开发其它</a>
                </li>
                <li>
                  <p>人工智能</p>
                  <a href="">深度学习</a>
                  <a href="">语音识别</a>
                  <a href="">机器视觉</a>
                  <a href="">算法工程师</a>
                  <a href="">自然语言处理</a>
                </li>
                <li>
                  <p>DBA</p>
                  <a href="">MongoDB</a>
                  <a href="">ETL</a>
                  <a href="">Hive</a>
                  <a href="">数据仓库</a>
                  <a href="">DBA其它</a>
                </li>
                <li>
                  <p>测试</p>
                  <a href="">性能测试</a>
                  <a href="">自动化测试</a>
                  <a href="">游戏测试</a>
                  <a href="">手机测试</a>
                  <a href="">测试其它</a>
                </li>
              </ul>
          </li>
          <li>
            <span>市场与销售</span>
            <a href="">市场推广</a>
            <a href="">市场总监</a>
            <ul>
                <li>
                  <p>后端开发</p>
                  <a href="">Java</a>
                  <a href="">C++</a>
                  <a href="">PHP</a>
                  <a href="">数据挖掘</a>
                  <a href="">后端开发其它</a>
                </li>
                <li>
                  <p>移动开发</p>
                  <a href="">HTML5</a>
                  <a href="">Android</a>
                  <a href="">iOS</a>
                  <a href="">WP</a>
                  <a href="">移动开发其它</a>
                </li>
                <li>
                  <p>人工智能</p>
                  <a href="">深度学习</a>
                  <a href="">语音识别</a>
                  <a href="">机器视觉</a>
                  <a href="">算法工程师</a>
                  <a href="">自然语言处理</a>
                </li>
                <li>
                  <p>DBA</p>
                  <a href="">MongoDB</a>
                  <a href="">ETL</a>
                  <a href="">Hive</a>
                  <a href="">数据仓库</a>
                  <a href="">DBA其它</a>
                </li>
                <li>
                  <p>测试</p>
                  <a href="">性能测试</a>
                  <a href="">自动化测试</a>
                  <a href="">游戏测试</a>
                  <a href="">手机测试</a>
                  <a href="">测试其它</a>
                </li>
              </ul>
          </li>
          <li>
            <span>职能</span>
            <a href="">HR</a>
            <a href="">行政</a>
            <a href="">财务</a>
            <a href="">审计</a>
            <ul>
                <li>
                  <p>后端开发</p>
                  <a href="">Java</a>
                  <a href="">C++</a>
                  <a href="">PHP</a>
                  <a href="">数据挖掘</a>
                  <a href="">后端开发其它</a>
                </li>
                <li>
                  <p>移动开发</p>
                  <a href="">HTML5</a>
                  <a href="">Android</a>
                  <a href="">iOS</a>
                  <a href="">WP</a>
                  <a href="">移动开发其它</a>
                </li>
                <li>
                  <p>人工智能</p>
                  <a href="">深度学习</a>
                  <a href="">语音识别</a>
                  <a href="">机器视觉</a>
                  <a href="">算法工程师</a>
                  <a href="">自然语言处理</a>
                </li>
                <li>
                  <p>DBA</p>
                  <a href="">MongoDB</a>
                  <a href="">ETL</a>
                  <a href="">Hive</a>
                  <a href="">数据仓库</a>
                  <a href="">DBA其它</a>
                </li>
                <li>
                  <p>测试</p>
                  <a href="">性能测试</a>
                  <a href="">自动化测试</a>
                  <a href="">游戏测试</a>
                  <a href="">手机测试</a>
                  <a href="">测试其它</a>
                </li>
              </ul>
          </li>
          <li>
            <span>金融</span>
            <a href="">投资</a>
            <a href="">融资</a>
            <a href="">并购</a>
            <a href="">风控</a>
            <ul>
                <li>
                  <p>后端开发</p>
                  <a href="">Java</a>
                  <a href="">C++</a>
                  <a href="">PHP</a>
                  <a href="">数据挖掘</a>
                  <a href="">后端开发其它</a>
                </li>
                <li>
                  <p>移动开发</p>
                  <a href="">HTML5</a>
                  <a href="">Android</a>
                  <a href="">iOS</a>
                  <a href="">WP</a>
                  <a href="">移动开发其它</a>
                </li>
                <li>
                  <p>人工智能</p>
                  <a href="">深度学习</a>
                  <a href="">语音识别</a>
                  <a href="">机器视觉</a>
                  <a href="">算法工程师</a>
                  <a href="">自然语言处理</a>
                </li>
                <li>
                  <p>DBA</p>
                  <a href="">MongoDB</a>
                  <a href="">ETL</a>
                  <a href="">Hive</a>
                  <a href="">数据仓库</a>
                  <a href="">DBA其它</a>
                </li>
                <li>
                  <p>测试</p>
                  <a href="">性能测试</a>
                  <a href="">自动化测试</a>
                  <a href="">游戏测试</a>
                  <a href="">手机测试</a>
                  <a href="">测试其它</a>
                </li>
              </ul>
          </li>
        </ul>
      </div>
      <div><img src="http://127.0.0.1:8080/img/nav.PNG" alt=""></div>
    </nav>

    <!--job con -->
    <main class="container main">
      <!-- 职位选择 -->
      <div class="choose-job">
        <a href="javascript:;" class="hot-job active">热门职位</a>
        <a href="javascript:;" class="fresh-job">最新职位</a>
      </div>
      <!-- 热门职位 -->
      <div id="hot-job">
        <ul>
          <li v-for="item1 in res.job">    
            <div class="con">
              <a href="" class="jname" v-text="item1.jname"></a><span class="jtime" v-text="item1.jtime"></span><i class="wicon"></i>
              <span class="jsalary" v-text="item1.jsalary"></span> 
            </div>
            <p class="jneed" v-text="item1.jneed"></p>
            <p>
              <span class="intro" v-text="item1.jintro"></span>
            </p>
            
            <div class="company">
              <a class="clogo"><img :src="item1.jimg"></a>
              <div>
                <p class="cname" v-text="item1.jcompany"></p>
                <p class="cintro" v-text="item1.jpro"></p>
              </div>
            </div>
          </li>
          <!--<li>    
            <div class="con">
              <a href="" class="jname">前端开发工程师</a><span class="jtime">[18:25发布]</span><i class="wicon"></i>
              <span class="jsalary">15k-20k</span> 
            </div>
            <p class="jneed">经验3-5年/本科</p>
            <p>
              <span class="intro">教育</span>
            </p>
            
            <div class="company">
              <a class="clogo"><img src="http://127.0.0.1:8080/img/1.png" alt=""></a>
              <div>
                <p class="cname">米络科技（KK直播）</p>
                <p class="cintro">移动互联网/不需要融资/杭州</p>
              </div>
            </div>
          </li>
          <li>    
            <div class="con">
              <a href="" class="jname">前端开发工程师</a><span class="jtime">[18:25发布]</span><i class="wicon"></i>
              <span class="jsalary">15k-20k</span> 
            </div>
            <p class="jneed">经验3-5年/本科</p>
            <p>
              <span class="intro">教育</span>
            </p>
            
            <div class="company">
              <a class="clogo"><img src="http://127.0.0.1:8080/img/1.png" alt=""></a>
              <div>
                <p class="cname">米络科技（KK直播）</p>
                <p class="cintro">移动互联网/不需要融资/杭州</p>
              </div>
            </div>
          </li>
          <li>    
            <div class="con">
              <a href="" class="jname">前端开发工程师</a><span class="jtime">[18:25发布]</span><i class="wicon"></i>
              <span class="jsalary">15k-20k</span> 
            </div>
            <p class="jneed">经验3-5年/本科</p>
            <p>
              <span class="intro">教育</span>
            </p>
            
            <div class="company">
              <a class="clogo"><img src="http://127.0.0.1:8080/img/1.png" alt=""></a>
              <div>
                <p class="cname">米络科技（KK直播）</p>
                <p class="cintro">移动互联网/不需要融资/杭州</p>
              </div>
            </div>
          </li>
          <li>    
            <div class="con">
              <a href="" class="jname">前端开发工程师</a><span class="jtime">[18:25发布]</span><i class="wicon"></i>
              <span class="jsalary">15k-20k</span> 
            </div>
            <p class="jneed">经验3-5年/本科</p>
            <p>
              <span class="intro">教育</span>
            </p>
            
            <div class="company">
              <a class="clogo"><img src="http://127.0.0.1:8080/img/1.png" alt=""></a>
              <div>
                <p class="cname">米络科技（KK直播）</p>
                <p class="cintro">移动互联网/不需要融资/杭州</p>
              </div>
            </div>
          </li>
          <li>    
            <div class="con">
              <a href="" class="jname">前端开发工程师</a><span class="jtime">[18:25发布]</span><i class="wicon"></i>
              <span class="jsalary">15k-20k</span> 
            </div>
            <p class="jneed">经验3-5年/本科</p>
            <p>
              <span class="intro">教育</span>
            </p>
            
            <div class="company">
              <a class="clogo"><img src="http://127.0.0.1:8080/img/1.png" alt=""></a>
              <div>
                <p class="cname">米络科技（KK直播）</p>
                <p class="cintro">移动互联网/不需要融资/杭州</p>
              </div>
            </div>
          </li>
          <li>    
            <div class="con">
              <a href="" class="jname">前端开发工程师</a><span class="jtime">[18:25发布]</span><i class="wicon"></i>
              <span class="jsalary">15k-20k</span> 
            </div>
            <p class="jneed">经验3-5年/本科</p>
            <p>
              <span class="intro">教育</span>
            </p>
            
            <div class="company">
              <a class="clogo"><img src="http://127.0.0.1:8080/img/1.png" alt=""></a>
              <div>
                <p class="cname">米络科技（KK直播）</p>
                <p class="cintro">移动互联网/不需要融资/杭州</p>
              </div>
            </div>
          </li>
          <li>    
            <div class="con">
              <a href="" class="jname">前端开发工程师</a><span class="jtime">[18:25发布]</span><i class="wicon"></i>
              <span class="jsalary">15k-20k</span> 
            </div>
            <p class="jneed">经验3-5年/本科</p>
            <p>
              <span class="intro">教育</span>
            </p>
            
            <div class="company">
              <a class="clogo"><img src="http://127.0.0.1:8080/img/1.png" alt=""></a>
              <div>
                <p class="cname">米络科技（KK直播）</p>
                <p class="cintro">移动互联网/不需要融资/杭州</p>
              </div>
            </div>
          </li>
          <li>    
            <div class="con">
              <a href="" class="jname">前端开发工程师</a><span class="jtime">[18:25发布]</span><i class="wicon"></i>
              <span class="jsalary">15k-20k</span> 
            </div>
            <p class="jneed">经验3-5年/本科</p>
            <p>
              <span class="intro">教育</span>
            </p>
            
            <div class="company">
              <a class="clogo"><img src="http://127.0.0.1:8080/img/1.png" alt=""></a>
              <div>
                <p class="cname">米络科技（KK直播）</p>
                <p class="cintro">移动互联网/不需要融资/杭州</p>
              </div>
            </div>
          </li>-->
        </ul>
        <div class="container">
          <button id="job-btn">查看更多</button>
        </div>
      </div>
      <!-- 最新职位 -->
      <div id="fresh-job">
        <ul>
              <li>    
                <div class="con">
                  <a href="" class="jname">前端开发工程师</a><span class="jtime">[18:25发布]</span><i class="wicon"></i>
                  <span class="jsalary">15k-20k</span> 
                </div>
                <p class="jneed">经验3-5年/本科</p>
                <p>
                  <span class="intro">教育</span>
                </p>
                
                <div class="company">
                  <a class="clogo"><img src="http://127.0.0.1:8080/img/1.png" alt=""></a>
                  <div>
                    <p class="cname">米络科技（KK直播）</p>
                    <p class="cintro">移动互联网/不需要融资/杭州</p>
                  </div>
                </div>
              </li>
        </ul>
        <div class="container">
          <button id="fresh-btn">查看更</button>
        </div>
      </div>
    </main>f

    <!-- company con -->
    <div class="about-co container">
        <!-- 公司选择 -->
      <div class="choose-co">
        <a href="javascript:;" class="hot-co active">热门公司</a>
      </div>
      <!-- 热门公司 -->
      <div>
        <ul id="hot-co">
          <li>  
            <a href="" class="cimg"><img src="http://127.0.0.1:8080/img/2.jpg" alt=""></a>
            <a href="" class="cname">杭州慧工科技有限公司</a>
            <p class="cintro">移动互联网,电子商务 天使轮</p>
            <p class="con">专注于万亿级别的工程机械后市场</p>
            <div class="cnote">
              <a href="" class="eval"><p>10</p><p>面试评价</p></a>
              <a href="" class="cjob"><p>5</p><p>在招职位</p></a>
              <a href="" class="speed"><p>55%</p><p>简历处理率</p></a>
            </div>
          </li>
          <li>  
            <a href="" class="cimg"><img src="http://127.0.0.1:8080/img/2.jpg" alt=""></a>
            <a href="" class="cname">杭州慧工科技有限公司</a>
            <p class="cintro">移动互联网,电子商务 天使轮</p>
            <p class="con">专注于万亿级别的工程机械后市场</p>
            <div class="cnote">
              <a href="" class="eval"><p>10</p><p>面试评价</p></a>
              <a href="" class="cjob"><p>5</p><p>在招职位</p></a>
              <a href="" class="speed"><p>55%</p><p>简历处理率</p></a>
            </div>
          </li>
          <li>  
            <a href="" class="cimg"><img src="http://127.0.0.1:8080/img/2.jpg" alt=""></a>
            <a href="" class="cname">杭州慧工科技有限公司</a>
            <p class="cintro">移动互联网,电子商务 天使轮</p>
            <p class="con">专注于万亿级别的工程机械后市场</p>
            <div class="cnote">
              <a href="" class="eval"><p>10</p><p>面试评价</p></a>
              <a href="" class="cjob"><p>5</p><p>在招职位</p></a>
              <a href="" class="speed"><p>55%</p><p>简历处理率</p></a>
            </div>
          </li>
          <li>  
            <a href="" class="cimg"><img src="http://127.0.0.1:8080/img/2.jpg" alt=""></a>
            <a href="" class="cname">杭州慧工科技有限公司</a>
            <p class="cintro">移动互联网,电子商务 天使轮</p>
            <p class="con">专注于万亿级别的工程机械后市场</p>
            <div class="cnote">
              <a href="" class="eval"><p>10</p><p>面试评价</p></a>
              <a href="" class="cjob"><p>5</p><p>在招职位</p></a>
              <a href="" class="speed"><p>55%</p><p>简历处理率</p></a>
            </div>
          </li>
          <li>  
            <a href="" class="cimg"><img src="http://127.0.0.1:8080/img/2.jpg" alt=""></a>
            <a href="" class="cname">杭州慧工科技有限公司</a>
            <p class="cintro">移动互联网,电子商务 天使轮</p>
            <p class="con">专注于万亿级别的工程机械后市场</p>
            <div class="cnote">
              <a href="" class="eval"><p>10</p><p>面试评价</p></a>
              <a href="" class="cjob"><p>5</p><p>在招职位</p></a>
              <a href="" class="speed"><p>55%</p><p>简历处理率</p></a>
            </div>
          </li>
          <li>  
            <a href="" class="cimg"><img src="http://127.0.0.1:8080/img/2.jpg" alt=""></a>
            <a href="" class="cname">杭州慧工科技有限公司</a>
            <p class="cintro">移动互联网,电子商务 天使轮</p>
            <p class="con">专注于万亿级别的工程机械后市场</p>
            <div class="cnote">
              <a href="" class="eval"><p>10</p><p>面试评价</p></a>
              <a href="" class="cjob"><p>5</p><p>在招职位</p></a>
              <a href="" class="speed"><p>55%</p><p>简历处理率</p></a>
            </div>
          </li>
        </ul>
        <div class="container">
          <button id="co-btn">查看更多</button>
        </div>
      </div>
    </div>
    <lg-footer></lg-footer>
  </div> 
</template>
<script>
  import LgHeader from '@/components/header.vue'
  import LgFooter from '@/components/footer.vue'
  export default{
    data(){
      return {
        /*res:[
          {cname:'',cimg:'',cintro:'',cpro:'',cs_total:'',cspeed:''},
          {jname:'', jtime:'', jcompany:'', jsalery:'', jneed:'', jimg:'', jpro:''}
        ]*/
        res:[]
      }
    },
    methods:{
      
    },
    components:{
      LgHeader,
      LgFooter
    },
    created(){
      (function(self){
        self.$http.get('http://localhost:3000/index/all').then(function(res){
          console.log(res.data);
          self.res = res.data;
        })
      })(this)
    },
    mounted(){
    }
  }
</script>
<style scoped>
  /* 搜索框 */
div.search{
  width:  938px;
  margin-bottom:60px; 
}
div.search>div:first-child input{
  width: 795px;
  float: left;
  height: 46px;
}
div.search>div:first-child button{
  width: 130px;
  float: left;
  height: 46px;
}
div.search .hot-SH span,div.search .hot-SH a{
  padding-right: 20px;
}
div.search .hot-SH a{
  color: green;
}

/* 导航 */
nav.nav{
  margin: 0px auto;
}
nav.nav .nav-l{
  width: 321px;
  float: left;
  position: relative;
}
nav.nav .nav-l span{
  padding: 0 5px 0 15px;
  font-size: 18px;
}
nav.nav .nav-l a{
  padding: 0px 10px;
}
nav.nav .nav-l>ul>li{
  position: relative;
  height: 55px;
  line-height: 55px;
  z-index: 10;
}
nav.nav .nav-l li ul{
  position: absolute;
  left: 321px;
  top: 0px;
  display: none;
  z-index: 5;
  border-radius: 2px;
  box-shadow: 0 0 15px rgba(0,0,0,0.2);
  background: white;
  transition: all 0.5s;
}
nav.nav .nav-l>ul>li:hover{
  border: 1px solid rgba(0,0,0,0.2);
  border-right: 0;
  box-shadow: 0 0 15px rgba(0,0,0,0.2);
}
nav.nav .nav-l>ul>li:hover ul{
  display: block;
  border: 1px solid rgba(0,0,0,0.2);
  width: 600px;
  padding-left: 30px;
}
nav.nav .nav-l>ul>li:hover ul li{
  line-height: 40px;
}
nav.nav div:last-child{
  margin: 30px 0 0 5px;;
  float: left;
  width: 840px;
}
nav.nav div:last-child img{
  width: 100%;
} 
nav.nav::after{
  content: '';
  display: block;
  clear: both;
}

/*job con */
main.main{
  margin-top: 50px;
  position: relative;
  height: 750px;
}
main.main #hot-job,main.main #fresh-job{
  position: absolute;
  left: 0px;
  top: 57px;
}
#hot-job ul,#fresh-job ul{
  margin-top: 20px;
  display: flex;
  justify-content: space-between;
  flex-wrap: wrap;
}
#fresh-job{
  display: none;
}
main>div.choose-job a{
  font-size: 20px;
  padding: 15px 20px;

}
main>div.choose-job .active{
  border-bottom: 1px solid rgba(0,0,0,0.2); 
  box-shadow: 0 0 10px rgba(0,0,0,0.2); 
}
#hot-job ul li,#fresh-job ul li{
  width: 30%;
  border: 1px solid rgba(0,0,0,0.1); 
  box-shadow: 0 0 10px rgba(0,0,0,0.2); 
  margin-bottom: 20px;
  transition: all 0.5
  s;
}
#hot-job ul li{
  transition: all 0.4s;
}
#hot-job ul li:hover{
  box-shadow: 0 0 30px rgba(0,0,0,0.3);
}
#fresh-job ul li:hover{
  box-shadow: 0 0 30px rgba(0,0,0,0.3);
}
#hot-job ul li .con,#fresh-job ul li .con{
  margin-left: 10px;
  width: 100%;
  padding: 5px 0;
}
#hot-job ul li .con .jname,#fresh-job ul li .con .jname{
  font-size: 16px;
}
#hot-job ul li .con .jtime,#fresh-job ul li .con .jtime{
  padding: 0 20% 0 5%;
  color: #909090;
  font-size: 14px;
}
#hot-job ul li .con .jsalary,#fresh-job ul li .con .jsalary{
  color: red;
}
#hot-job ul li .jneed,#fresh-job ul li .jneed{
  margin-left: 10px;
  color: #909090;
  font-size: 14px;
}
#hot-job ul li .intro,#fresh-job ul li .intro{
  margin-left: 10px;
  color: #909090;
  font-size: 14px;
}
#hot-job ul li p:nth-child(3),#fresh-job ul li p:nth-child(3){
  border-bottom: 1px dashed rgba(0,0,0,0.2);
  padding-bottom: 20px;
}
#hot-job ul li div.company,#fresh-job ul li div.company{
  margin-left: 10px;
}
#hot-job ul li div.company .clogo,#hot-job ul li div.company div,#fresh-job ul li div.company .clogo,#fresh-job ul li div.company div{
  display: block;
  float: left;
  margin: 5px 10px
}
#hot-job ul li div.company .clogo img,#fresh-job ul li div.company .clogo img{
  width: 40px;
  height: 40px;
}
#hot-job ul li div.company div p.cintro,#fresh-job ul li div.company div p.cintro{
  padding-top:5px; 
  color: #909090;
  font-size: 12px;
}
#hot-job #job-btn,#fresh-job #fresh-btn{
  width: 400px;
  height: 50px;
  border: 1px solid #00AE82;
  background: white;
  transition: all 0.4s;
}
#hot-job>div,#fresh-job>div{
  margin-top: 20px;
  text-align: center;
}
#hot-job #job-btn:hover{
  background: linear-gradient(to right, #00AE82,rgb(4, 250, 188));
  box-shadow: 0 0 20px #00AE82;
}
#fresh-job #fresh-btn:hover{
  background: linear-gradient(to right, #00AE82,rgb(4, 250, 188));
  box-shadow: 0 0 20px #00AE82;
}


/* choose company */
div.about-co{
  position: relative;
}
div.about-co>div.choose-co{
  margin-bottom: 10px;
}
div.about-co>div.choose-co a{
  font-size: 20px;
  padding: 15px 20px;
  border-bottom: 1px solid rgba(0,0,0,0.2); 
  box-shadow: 0 0 10px rgba(0,0,0,0.2); 
}
div.about-co #hot-co{
  display: flex;
  justify-content: space-between;
  flex-wrap: wrap;
}
div.about-co #hot-co li{
  width: 30%;
  text-align: center;
  border: 1px solid rgba(0,0,0,0.2);
  margin-bottom: 10px;
  transition: all 0.6s;
}
div.about-co #hot-co li:hover{
  box-shadow: 0 0 30px rgba(0,0,0,0.3);
}
div.about-co #hot-co li .cimg{
  padding-top: 20px;
  width: 80px;
}
div.about-co #hot-co li .cimg img{
  width: 100%;
}
div.about-co #hot-co li .cname{
  display: block;
  font-size: 18px;
  padding: 5px 0;
}
div.about-co #hot-co li .cintro{
  font-size: 14px;
  color: #909090;
  padding: 5px 0;
}
div.about-co #hot-co li .con{
  font-size: 14px;
  padding: 5px 0;
  padding-bottom: 20px;
}
div.about-co #hot-co li .cnote{
  border-top: 1px dashed rgba(0,0,0,0.2);
  padding: 15px 0;
}
div.about-co #hot-co li .cnote a{
  padding: 10px 20px;
  border: 1px solid rgba(0,0,0,0.2);
}
div.about-co #hot-co li .cnote a p:first-child{
  color: #00AE82;
}
#co-btn{
  width: 400px;
  height: 50px;
  border: 1px solid #00AE82;
  background: white;
  transition: all 0.4s;
}
.about-co>div:last-child>div{
  margin-top: 20px;
  text-align: center;
}
#co-btn:hover{
  background: linear-gradient(to right, #00AE82,rgb(4, 250, 188));
  box-shadow: 0 0 20px #00AE82;
}
</style>