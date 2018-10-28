<template>
  <div>
    <div class="c-job container">
      <p class="title">
        <span>职位</span>
        <a href="">全部</a>
        <a href="">技术</a>
        </p>
      <ul class="job-con">
        <li class="jname">Web前端开发工程师 [ 成都 ]</li>
        <li class="jtime">2018-10-22 发布</li>
        <li class="jsalery">10k-20k</li>
        <li class="jneed">经验3-5年 / 本科 / 全职</li>
      </ul>
    </div>
  </div>
</template>
<script>
export default {
  data(){
    return {

    }
  },
  methods:{

  },
  mounted(){

  }
}
</script>
<style scoped>
  .c-job .title{
    margin-top: 20px;
    width: 900px;
    padding: 10px 0;
    background: #EDEDED;
  }
  .c-job .title span,.c-job .title a{
    padding: 0 20px;
  }
  .c-job .job-con{
    width: 900px;
    display: flex;
    justify-content: left;
    flex-wrap: wrap;
    border: 1px solid #EDEDED;
    border-left: 4px solid #00AE82;
    margin: 20px 0;
    transition: all 0.4s;
  }
  .c-job .job-con:hover{
    box-shadow: 0 0 20px rgb(218, 216, 216);
  }
  .c-job .job-con .jname{
    width: 80%;
    padding: 10px 0 0 30px;
    font-size: 18px;
    color: #00AE82;
  }
  .c-job .job-con .jtime{
    width: 20%;
    padding: 10px;
  }
  .c-job .job-con .jsalery{
    width: 15%;
    padding: 10px 0 0 30px;
    color: red;
    font-size: 20px;
  }
  .c-job .job-con .jneed{
    width: 30%;
    padding: 10px;
  }
</style>

