import Vue from 'vue'
import Router from 'vue-router'
import index from './views/index.vue'
import company from './views/company.vue'
import detail from './views/detail.vue'
import detailJob from './views/detail-job.vue'

import  Text  from './views/text.vue'

Vue.use(Router)

export default new Router({
  mode:'history',
  routes: [
    {path:'/',redirect:"/index"},
    {path:'/index',name:'index',component:index},
    {path:'/company',name:'company',component:company},
    {path:'/detail',name:'detail',component:detail},
    {path:'/detailJob',name:'detailJob',component:detailJob},
    {path:'/Text',name:'Text',component:Text}
  ]
})


/*vue-router用法：
    1.引入插件
    2.指定容器 <view-router>
    3.使用  use
    4.

*/