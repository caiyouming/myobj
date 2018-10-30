import Vue from 'vue'
import Router from 'vue-router'
import index from './views/index.vue'
import news from './views/news.vue'
import setting from './views/setting.vue'
import msg from './views/msg.vue'
import cart from './views/cart.vue'
import newsDetail from './views/newsDetail.vue'
import goodList from './views/goodList.vue'
import goodInfo from './views/goodInfo.vue'

Vue.use(Router)

export default new Router({
  mode:'history',
  routes: [
    {path:'/',redirect:"/index"},
    {path:'/index',name:'index',component:index},
    {path:'/index/news',component:news},
    {path:'/msg',component:msg},
    {path:'/cart',component:cart},
    {path:'/setting',component:setting},
    {path:'/index/news/newsDetail/:id',component:newsDetail},
    {path:'/index/goodList',component:goodList},
    {path:'/index/goodList/goodInfo/:id',component:goodInfo,name:"goodInfo"}
  ],linkActiveClass:'mui-active'
})
