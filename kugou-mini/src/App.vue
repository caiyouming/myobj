<template>
  <div id="app">
    <head-main ></head-main>
    <div class="main">
      <keep-alive>
        <router-view></router-view>
      </keep-alive>
    </div>
    <Player />
	  <DetailPlayer />
	</div>
</template>

<script>
  import HeadMain from './components/header/Head'
  import Player from './components/Player'
  import DetailPlayer from './components/DetailPlayer'
  export default {
    components: {
      HeadMain, Player, DetailPlayer
    }
  }
</script>

