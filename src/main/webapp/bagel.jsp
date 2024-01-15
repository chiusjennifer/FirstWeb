<%@ page language="java" contentType="text/html; charset=UTF8"
    pageEncoding="UTF8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
<style>
.card-body{
    display: flex;
    justify-content: center;
    
    }
#commodity{
    display: flex;
    flex-wrap: wrap;
    justify-content: stretch;
    padding: 2px;
    
}
.card{
    margin-bottom: 20px; 
    margin-right: 15px;
    
}
#navbarNav{
    background-color: #ffffff;
    display: flex;
    justify-content: space-around;
}
.nav-link{
    font-size: 20px;
    margin: 20px;
    color: #100f0f;
}
</style>
</head>
<body>
    <div id="app">
       <div class="container text-center"  style="position: absolute; left:680px">
    <div class="row row-cols-1 row-cols-sm-2 row-cols-md-4" >
      <div class="col"></div>
      <div class="col"></div>
      <div class="col"></div>
      <div class="col">
      <img src="./images/user.png" width="25px" height="25px" style="margin:5px;">
      <img src="./images/shopping-cart.png" width="25px" height="25px" style="margin:5px;">
      <img src="./images/search.png" width="25px" height="25px" style="margin:5px;"></div>
      </div>
    </div>
        <img src="./images/logo.png" width="100px" height="100px" style="display:block;margin:auto;" alt="">
        <ul class="nav justify-content-center">
            <li class="nav-item">
                <a class="nav-link " href="index.jsp">首頁</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">新品上市</a>
            </li>
            <li class="nav-item">
                <a class="nav-link " href="bagel.jsp">厚餡貝果</a>
            </li>
            <li class="nav-item">
                <a class="nav-link " href="#">門市</a>
            </li>
            <li class="nav-item">
                <a class="nav-link " href="#">品牌理念</a>
            </li>
        </ul>
 <div id="commodity">
    <card-item></card-item>
    <card-item></card-item>
    <card-item></card-item>
    <card-item></card-item>
    <card-item></card-item>
    <card-item></card-item>
    <card-item></card-item>
    
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/vue@2.7.16"></script>
<script>
    Vue.component('card-item',{
        data:function(){
            return {
            }
        },
        template:`<div class="card" style="width: 18rem;" >
            <img src="./images/bagel.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <a href="#" class="card-link">原味貝果</a>
            </div>
            <div class="card-body">
              <p class="card-text">$60</p>
            </div>
          </div>`
    });
    new Vue({
        el:"#app",
    });
</script>
</body>
</html>