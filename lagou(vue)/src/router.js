import Vue from 'vue'
import Router from 'vue-router'
import index from './views/index.vue'
import company from './views/company.vue'
import detail from './views/detail.vue'

Vue.use(Router)

export default new Router({
  mode:'history',
  routes: [
    {path:'/',redirect:"/index"},
    {path:'/index',name:'index',component:index},
    {path:'/company',name:'company',component:company},
    {path:'/detail',name:'detail',component:detail},
  ]
})
