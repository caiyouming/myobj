1、拉钩项目(pc端) 通过vue/cli来搭建的，采用vue-router搭建页面的路由(使用history模式)，axios请求数据，使用mint-ul，mui，swiper，vue-baidu-map组件来实现页面ui效果，其中轮播图使用到自己封装的插件，详情页使用keep-alive来切换组件，keep-alive可以保留组件状态，来回切换时不需要重复渲染DOM树；
后台数据使用node.js搭建的，使用express插件，跨域问题使用cors插件解决的。

2、kugou项目(移动端) 通过vue/cli来搭建的，采用mint-ul实现ui效果，vuex集中管理数据，axios请求数据，采用vue-router搭建页面的路由(使用hash模式)

3、maoyan项目(微信小程序) 通关官方API文档，模仿猫眼，实现了主页面，影院，详情页和地点定位，主页面实现的功能有轮播图，下拉加载更多，父子组件间传递参数；


