import Vue from 'vue'
import Router from 'vue-router'
import HomeContainer from './components/tabbar/HomeContainer.vue'
import NewsContainer from './components/news/NewsContainer.vue'
import setting from './components/setting/setting.vue'
import msg from './components/msg/msg.vue'
import cart from './components/cart/cart.vue'
import newsListCon from './components/newlistcontainer/newslistcontainer.vue'
import goodList from './components/goods/goodList.vue'
import goodInfo from './components/goods/goodInfo/goodInfo'

Vue.use(Router)

export default new Router({
  routes: [
    {path:'/',redirect:"/home"},
    {path:'/home',component:HomeContainer},
    {path:'/home/newslist',component:NewsContainer},
    {path:'/msg',component:msg},
    {path:'/cart',component:cart},
    {path:'/setting',component:setting},
    {path:'/home/newslist/newsListCon/:id',component:newsListCon},
    {path:'/home/goodList',component:goodList},
    {path:'/home/goodList/goodInfo/:id',component:goodInfo,name:"goodInfo"}
  ],linkActiveClass:'mui-active'
})
