<template>
  <div class="app_goodlist_goodinfo">
    <h2>xiangq</h2>
  </div>
</template>
<script>
  export default({
    data(){
      return {
        inFo:{},
        num:1,

      }
    },
    methods:{
      getParams(){
        console.log(this.$route.params.id)
      },
      addCart(){
        this.$store.commit('addNum')
      }
    },
    created(){
     this.getParams();
    }
  })
</script>
<style lang="">
  
</style>