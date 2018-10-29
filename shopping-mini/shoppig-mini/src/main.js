import Vue from 'vue'
import App from './App.vue'
import router from './router'

import'mint-ui/lib/style.css'

Vue.config.productionTip = false
//5: 设置请求的根路径 
//Vue.http.options.root = "http://127.0.0.1/vue_ser/";
//6:全局设置post 时候表音的数据组织格式为 application/x-www-form-urlencoded
//Vue.http.options.emulateJSON = true;
// 导入 MUI 的样式表， 和 Bootstrap 用法没有差别
import './lib/mui/css/mui.css'
// 导入 MUI 的样式表，扩展图标样式，购物车图标
// 还需要加载图标字体文件
import './lib/mui/css/icons-extra.css';
import {Header,Swipe,SwipeItem,Button} from 'mint-ui';
import  VueResource from 'vue-resource';
import Vuex from "vuex"

Vue.use(Vuex)
Vue.component(Header.name,Header);
Vue.component(Swipe.name,Swipe);
Vue.component(SwipeItem.name,SwipeItem);
Vue.component(Button.name,Button);

var store=new Vuex.Store({
  state:{             //共享的数据
    cratCount:0       //共享数据购物车数量
  },         
  mutations:{         //操作共享数据的方法
    addNum(){},
    downNum(){},
    clearNum(){}
  },
  getters:{          //获取并监听数据的方法
    optCount:function(state){
      return state.cratCount;
    }
  }       
});

Vue.use(VueResource);
Vue.filter('dataFormat',function(datastr,pattern="YYY-MM-DD"){
  return new Date(datastr).toLocaleString();
})
Vue.http.options.root='http://127.0.0.1:3000/';
Vue.http.options.emulateJSON=true
new Vue({
  router,
  render: h => h(App),
  store             //将Vuex对象注册到vue对象中
}).$mount('#app')
