import Vue from 'vue'
import App from './App.vue'
import router from './router'
import  VueResource from 'vue-resource';

Vue.config.productionTip = false; 



Vue.use(VueResource);
Vue.filter('dataFormat',function(datastr,pattern="YYY-MM-DD"){
  return new Date(datastr).toLocaleString();
})
Vue.http.options.root='http://127.0.0.1:3000/';
Vue.http.options.emulateJSON=true
new Vue({
  router,
  render: h => h(App)
}).$mount('#app')
