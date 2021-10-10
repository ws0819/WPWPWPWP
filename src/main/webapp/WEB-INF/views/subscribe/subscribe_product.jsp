<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
   content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.88.1">
<title>Pricing example · Bootstrap v5.1</title>

<!-- 내꺼 부트스트랩 링크 -->
<link
   href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css"
   rel="stylesheet"
   integrity="sha384-uWxY/CJNBR+1zjPWmfnSnVxwRheevXITnMqoEIeG1LJrdI0GlVs/9cVSyPYXdcSF"
   crossorigin="anonymous">
   
<link rel="canonical"
   href="https://getbootstrap.com/docs/5.1/examples/pricing/">

<!-- 탑메뉴 -->
<link rel="stylesheet" href="../assets/css/main.css" />
<link rel="stylesheet" href="../assets/css/noscript.css" />
<link rel="stylesheet" href="../assets/css/scroll.css" />

</head>

<!-- 내꺼 부트스트랩 링크 -->
<link rel="stylesheet" href="../subscribe_product_bot/css/mystyle.css"/>
   
   
</head>
<body>

   <body>

   <svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
  <symbol id="check" viewBox="0 0 16 16">
    <title>Check</title>
    <path
         d="M13.854 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L6.5 10.293l6.646-6.647a.5.5 0 0 1 .708 0z" />
  </symbol>
</svg>

   <div class="container py-3">
      <header>

         <div class="pricing-header p-3 pb-md-4 mx-auto text-center">
            <h1 class="display-4 fw-normal">상품을 선택해주세요</h1>
            <h2></h2>
            <p class="fs-5 text-muted">ORANGE, VLOLET, BLACK 서비스에는 소믈리에 레슨이 포함되어
               있습니다.</p>
            
         </div>
      </header>

      <main>

         <div class="accordion" id="accordionExample">
            <div class="accordion-item">
               <h2 class="accordion-header" id="headingOne">
                  <button class="accordion-button " type="button"
                     data-bs-toggle="collapse" data-bs-target="#collapseOne"
                     aria-controls="collapseOne">E A S Y B O X</button>
               </h2>
               <div id="collapseOne" class="accordion-collapse collapse "
                  aria-labelledby="headingOne" data-bs-parent="#accordionExample">


                  <div class="text-center">
                     <div class=" mt-3 mb-5">
                        <img
                           src="../bootstrap-5.0.2-dist/css/images/fulls/random.jpg"
                           class="mx-auto" style="width: 400px;">
                           ￦ 50,000원
                     </div>
<body onload="init();">
<script language="JavaScript">
<!--
var sell_price;
var amount;

function init () {
   sell_price = document.form.sell_price.value;
   amount = document.form.amount.value;
   document.form.sum.value = sell_price;
   change();
}

function add () {
   hm = document.form.amount;
   sum = document.form.sum;
   hm.value ++ ;

   sum.value = parseInt(hm.value) * sell_price;
}

function del () {
   hm = document.form.amount;
   sum = document.form.sum;
      if (hm.value > 1) {
         hm.value -- ;
         sum.value = parseInt(hm.value) * sell_price;
      }
}

function change () {
   hm = document.form.amount;
   sum = document.form.sum;

      if (hm.value < 0) {
         hm.value = 0;
      }
   sum.value = parseInt(hm.value) * sell_price;
}  
//-->
</script>
<div class="text-muted">
<form name="form" method="get">

수량 : <input type=hidden name="sell_price" value="50000">
<input type="text" name="amount" value="1" size="3" onchange="change();">
<input type="button" value=" + " onclick="add();"><input type="button" value=" - " onclick="del();"><br>

금액 : <input type="text" name="sum" size="11" readonly>
</form>
</div>
</body>

                     <button type="button" class="btn btn-outline-success mb-2">구매하기</button>
                  </div>
               </div>
            </div>
            <p class="mb-5">
         </div>

         <div class="row row-cols-1 row-cols-md-3 mb-3 mt-5 text-center">
            <div class="col">
               <div class="card mb-4 rounded-3 shadow-sm">
                  <div class="card-header py-3">
                     <h4 class="my-0 fw-normal ticolor-orange">ORANGE</h4>
                  </div>
                  <div class="card-body">
                     <h1 class="card-title pricing-card-title">
                        ￦ 49,000원<small class="text-muted fw-light"></small>
                     </h1>
                     <ul class="list-unstyled mt-3 mb-4">
                        <li>와인 1병+소믈리에 레슨</li>
                        <p>
                        <p>

                           <button type="button"
                              class="w-100 btn btn-lg btn-outline-warning">Get
                              started</button>
                        <h1 class="card-title pricing-card-title">
                           ￦ 89,000원<small class="text-muted fw-light"></small>
                        </h1>
                        <li>와인 2병+소믈리에 레슨</li>

                     </ul>
                     <button type="button"
                        class="w-100 btn btn-lg btn-outline-warning">Get
                        started</button>
                  </div>
               </div>
            </div>

            <div class="col">
               <div class="card mb-4 rounded-3 shadow-sm">
                  <div class="card-header py-3">
                     <h4 class="my-0 fw-normal ticolor-purple">VLOLET</h4>
                  </div>
                  <div class="card-body">
                     <h1 class="card-title pricing-card-title">
                        ￦ 98,000원<small class="text-muted fw-light"></small>
                     </h1>
                     <ul class="list-unstyled mt-3 mb-4">
                        <li>와인 1병+소믈리에 레슨</li>

                     </ul>
                     <button type="button" class="w-100 btn btn-lg btn-outline-purple">Get
                        started</button>
                  </div>
               </div>
            </div>

            <div class="col">
               <div class="card mb-4 rounded-3 shadow-sm">
                  <div class="card-header py-3">
                     <h4 class="my-0 fw-normal">BLACK</h4>
                  </div>
                  <div class="card-body">
                     <h1 class="card-title pricing-card-title">
                        ￦ 800,000원<small class="text-muted fw-light"></small>
                     </h1>
                     <ul class="list-unstyled mt-3 mb-4">
                        <li>소믈리에 상담후 개수 결정</li>

                     </ul>
                     <button type="button" class="w-100 btn btn-lg btn-outline-dark">Get
                        started</button>
                  </div>
               </div>
            </div>
         </div>

<!--          <div class="text-center">
            <h2>
               총 결제액 : 원
               <button type="button" class="btn btn-outline-success mb-2 w-30">결제하기</button>
            </h2>
            <div> -->
      </main>

   </div>
         <!-- Footer -->
      <c:import url="/WEB-INF/views/include/bottom_info.jsp" />

      <!-- Scripts -->
         <script src="../subscribe_bot/js/jquery.min.js"></script>
         <script src="../subscribe_bot/js/jquery.poptrox.min.js"></script>
         <script src="../subscribe_bot/js/jquery.scrolly.min.js"></script>
         <script src="../subscribe_bot/js/jquery.scrollex.min.js"></script>
         <script src="../subscribe_bot/js/browser.min.js"></script>
         <script src="../subscribe_bot/js/breakpoints.min.js"></script>
         <script src="../subscribe_bot/js/util.js"></script>
         <script src="../subscribe_bot/js/main.js"></script>
         <script src="../subscribe_bot/js/scroll.js"></script>

   <!-- 내꺼 부트스트랩 js -->
   <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kQtW33rZJAHjgefvhyyzcGF3C5TFyBQBA13V1RKPf4uH+bwyzQxZ6CmMZHmNBEfJ"
      crossorigin="anonymous"></script>
</body>
</html>