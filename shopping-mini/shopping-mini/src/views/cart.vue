<template>
  <div class="app_cart">
    <h4 class="cart-title">购物车</h4>
    <div class="cart-obj"> 
      <div class="cart-con">
        <span>小辣椒</span><img src="" alt="">
      </div>
      <div class="cart-console">
        <button @click="setCount">-</button><input type="number" v-model="count" id="cart-input"><button @click="setCount">+</button>
      </div>
    </div>
    <div>小计￥</div> 
  </div>
</template>
<script> 
  import {Toast} from 'mint-ui';
  export default({
    data(){
      return {
        list:[],
        count:1
      }
    },
    methods:{
      getCartList(){
        /*this.$http.get('cartlist/list').then(result=>{
          this.list=result.body.msg;
        })*/
      },
      setCount(e){
        if(e.target.innerText=='-') this.count>1?this.count--:Toast('数量不能小于1');
        else this.count<99?this.count++:Toast('数量不能大于99');
      }
      /*setAdd(id){
        for(var item of this.list){
          item.id==id?item.count++:item.count
        }
      },
      //通过函数传参的方式，来匹配，正确就改值
      setCut(id){
        for(var item of this.list){
          if(item.count>1){
            item.id==id?item.count++:item.count
          }else{
            Toast('数量不能大于99');
          }
        }
      }*/
    },
    created(){
      
    },
    computed:{
      /*getSubtotal(){
        var sum=0;
        for(var item of this.list){
          sum+=item.count*item.price
        };
        return sum
      }*/
    }
  })
</script>
<style>
  .app_cart{
    width:95%;
    margin:0px auto;
    border:1px solid rgb(255,200,110);
    background:white;
  }
  .app_cart>h4{
    padding:5px 0;
    text-align:center;
    border-bottom:1px solid rgb(100,100,100);
  }
  .app_cart>div{
    padding:15px 0;
    display:flex;
    justify-content:space-between;
    font-size:14px;
    
  }
  .app_cart .cart-obj .cart-console{
    width:30%;
  }
  .app_cart .cart-obj .cart-console button,input{
    width:30px;
    height:30px;
    text-align:center;    
  }
  #cart-input{
    width:30px;
    height:30px;
    padding:0px;
    margin:0px 5px;
  }
</style>