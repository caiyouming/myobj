<template>
  <div class="app-commen">
    <header class="header">header</header>


    <footer class="footer">footer</footer>
    <router-view></router-view>
  </div>
</template>
<style>
  .header{
    width:100%;
    height:100px;
    border: 1px solid red;
  }
  .footer{
    width:100%;
    height:80px;
    border: 1px solid blue;
  }
</style>