import Vue from 'vue'
import App from './App.vue'
import router from './router'
import axios from 'axios'
import vueForm from 'vue-form'
import BaiduMap from 'vue-baidu-map'

Vue.config.productionTip = false; 

Vue.use(vueForm)
Vue.use(BaiduMap,{
  ak:'NATfql6e3ENEDpY0su4WCbU3ydRDkERw'
})

Vue.prototype.$http=axios; 
Vue.filter('dataFormat',function(datastr,pattern="YYY-MM-DD"){
  return new Date(datastr).toLocaleString();
})
new Vue({
  router,
  render: h => h(App)
}).$mount('#app')