<%@ page language="java" contentType="text/html; charset=UTF8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>home</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</head>
<style>
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
<body>
<div id="app">
  <div class="container text-center"  style="position: absolute; left:680px">
    <div class="row row-cols-1 row-cols-sm-2 row-cols-md-4" >
      <div class="col"></div>
      <div class="col"></div>
      <div class="col"></div>
      <div class="col">
      <img src="./images/user.png" width="25px" height="25px" style="margin:5px;" onclick="window.open('login.jsp')">
      <img src="./images/shopping-cart.png" width="25px" height="25px" style="margin:5px;">
      <img src="./images/search.png" width="25px" height="25px" style="margin:5px;"></div>
      </div>
    </div>
    <img src="./images/logo.png" width="100px" height="100px" style="display:block;margin:auto;">
    <ul class="nav justify-content-center">
        <li class="nav-item">
            <a class="nav-link " href="index.jsp">首頁</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">新品上市</a>
        </li>
        <li class="nav-item">
            <a class="nav-link " href="bagel.html">厚餡貝果</a>
        </li>
        <li class="nav-item">
            <a class="nav-link " href="#">門市</a>
        </li>
        <li class="nav-item">
            <a class="nav-link " href="#">品牌理念</a>
        </li>
    </ul>

</div>
<div id="carouselExample" class="carousel slide">
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img src="./images/bread.png" class="d-block w-100" width="720px" height="1024px">
      </div>
      <div class="carousel-item">
        <img src="./images/bread2.jpg" class="d-block w-100" width="720px" height="1024px">
      </div>
      <div class="carousel-item">
        <img src="./images/bread3.jpg" class="d-block w-100" width="720px" height="1024px">
      </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Next</span>
    </button>
  </div>
</body>
</html>