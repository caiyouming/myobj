<template>
 <div class="app-container">
    <mt-header fixed title="Vue 学子商城"></mt-header>
    <div>
        <nav class="mui-bar mui-bar-tab">
            <router-link class="mui-tab-item" to="/home">
            <span class="mui-icon mui-icon-home"></span>
            <span class="mui-tab-label">首页</span>
            </router-link>
            <router-link to="/msg" class="mui-tab-item">
            <span class="mui-icon mui-icon-email"><span class="mui-badge">9</span></span>
            <span class="mui-tab-label">消息</span>
            </router-link>
            <router-link to="/cart" class="mui-tab-item">
            <span class="mui-icon mui-icon-extra mui-icon-extra-cart"><span class="mui-badge">5</span></span>
            <span class="mui-tab-label">购物车</span>
            </router-link>
            <router-link to="/setting" class="mui-tab-item">
            <span class="mui-icon mui-icon-gear"></span>
            <span class="mui-tab-label">设置</span>
            </router-link>
        </nav>
    </div>
    <router-view></router-view>
 </div>
</template>

<style>
   .app-container{
     padding-top:40px;
     padding-bottom:50px;
     overflow-x:hidden;
   }

 .mui-bar-tab .mui-tab-item-tao.mui-active {
    color: #007aff;
 }
.mui-bar-tab .mui-tab-item-tao {
    display: table-cell;
    overflow: hidden;
    width: 1%;
    height: 50px;
    text-align: center;
    vertical-align: middle;
    white-space: nowrap;
    text-overflow: ellipsis;
    color: #929292;
}
.mui-bar-tab .mui-tab-item-tao .mui-icon {
    top: 3px;
    width: 24px;
    height: 24px;
    padding-top: 0;
    padding-bottom: 0;
}

.mui-bar-tab .mui-tab-item-tao .mui-icon~.mui-tab-label {
   font-size:11px;
   display:block;
   overflow:hidden;
   text-overflow:ellipsis;

}
</style>
