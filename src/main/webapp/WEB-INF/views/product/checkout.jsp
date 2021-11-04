<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html lang="en">
<head>
<title>order</title>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">
   function apibtn() {
      $.ajax({
         url:'kakaopay/' ,
         dataType:'json' ,
         success:function(data) {
            var box = data.next_redirect_pc_url;
            window.open(box);
         } ,
         error:function(error) {
            alert(error)
         }
      })
   }
</script>
<script>
    function sample4_execDaumPostcode() {
           new daum.Postcode({
               oncomplete: function(data) {
                   // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                   // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                   // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                   var roadAddr = data.roadAddress; // 도로명 주소 변수
                   var extraRoadAddr = ''; // 참고 항목 변수

                   // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                   // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                   if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                       extraRoadAddr += data.bname;
                   }
                   // 건물명이 있고, 공동주택일 경우 추가한다.
                   if(data.buildingName !== '' && data.apartment === 'Y'){
                      extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                   }
                   // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                   if(extraRoadAddr !== ''){
                       extraRoadAddr = ' (' + extraRoadAddr + ')';
                   }

                   // 우편번호와 주소 정보를 해당 필드에 넣는다.
                   document.getElementById('sample4_postcode').value = data.zonecode;
                   document.getElementById("sample4_roadAddress").value = roadAddr;
                   document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                   
                                 var guideTextBox = document.getElementById("guide");
                   // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                   if(data.autoRoadAddress) {
                       var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                       guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                       guideTextBox.style.display = 'block';

                   } else if(data.autoJibunAddress) {
                       var expJibunAddr = data.autoJibunAddress;
                       guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                       guideTextBox.style.display = 'block';
                   } else {
                       guideTextBox.innerHTML = '';
                       guideTextBox.style.display = 'none';
                   }
               }
           }).open();
       }
    </script>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link href="https://fonts.googleapis.com/css2?family=Spectral:ital,wght@0,200;0,300;0,400;0,500;0,700;0,800;1,200;1,300;1,400;1,500;1,700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="../liquorstore_master/css/animate.css">
<link rel="stylesheet" href="../liquorstore_master/css/owl.carousel.min.css">
<link rel="stylesheet" href="../liquorstore_master/css/owl.theme.default.min.css">
<link rel="stylesheet" href="../liquorstore_master/css/magnific-popup.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/css/bootstrap-select.min.css">
<link rel="stylesheet" href="../liquorstore_master/css/flaticon.css">
<link rel="stylesheet" href="../liquorstore_master/css/style.css">
</head>
<body>

   <c:import url="/WEB-INF/views/product/top_menu.jsp" />

   <!-- END nav -->

   <section class="hero-wrap hero-wrap-2" style="background-image: url('../liquorstore_master/images/top_bg.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
         <div class="row no-gutters slider-text align-items-end justify-content-center">
            <div class="col-md-9 ftco-animate mb-5 text-center">
               <p class="breadcrumbs mb-0">
                  <span class="mr-2">
                     <a href="${root }product/home">Home<i class="fa fa-chevron-right"></i></a></span> 
                     <span>Order <i class="fa fa-chevron-right"></i>
                     
                  </span>
               </p>
               <h2 class="mb-0 bread">Order</h2>
            </div>
         </div>
      </div>
   </section>


   <section class="ftco-section ">
      <div class="container " >
         <div class="row justify-content-center">
            <div class="col-xl-10 ftco-animate">
               <form:form method="get" action="${root }product/checkout_pro" class="billing-form" modelAttribute="OrderBean" acceptCharset="UTF-8">
               <form:hidden path="" value=""/>
                  <h3 class="mb-4 billing-heading">주문상세정보</h3>
                  <div class="row align-items-end">
                  <div class="w-100"></div>
                     <div class="col-md-6">
                        <div class="form-group">
                           <label for="firstname">받으시는 분 </label> &nbsp;
                              <form:input path="order_name" class="" placeholder="" />
                        </div>
                     </div>
                   
                     <div class="w-100"></div>
                     <div class="col-md-12">
                        <div class="form-group">
                           <label for="country">배송지 주소</label><br />
                           <form:input path="postcode" id="sample4_postcode" placeholder="우편번호"/>
                     <input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"/><br>
                     <form:input path="roadAddress" id="sample4_roadAddress" placeholder="도로명주소"/>
                     <form:input path="jibunaddress" id="sample4_jibunAddress" placeholder="지번주소"/>
                     <span id="guide" style="color:#999;display:none"></span>
                     <br />
                           <div class="select-wrap">

                              <div class="icon">
                                 <span class="ion-ios-arrow-down"></span>
                              </div>

                           </div>
                        </div>
                     </div>
                     <div class="w-100"></div>
                     <div class="col-md-6">
                        <div class="form-group" >
                           <label for="phone">전화번호</label>&nbsp;&nbsp; 
                     <form:input path="order_tel" id="phone3" maxlength="11" size="11"  placeholder=""/> 
                        </div>
                     </div>
               <div class="w-100"></div>
                     <div class="col-md-6">
                        <div class="form-group">
                           <label for="order_email">이메일</label>&nbsp;
                           <form:input type="email" path="order_email"  placeholder=""  size="50"/>
                           <form:errors path="order_email"/>
                        </div>
                     </div>
                     <div class="w-100"></div>
                     <div class="col-md-6">
                        <div class="form-group">
                        <label for="message">배송메세지</label> 
                        <form:input name="order_message" path="order_message" id="배송메세지" placeholder="경비실에 맡겨 주세요" size="50"/>
                        </div>
                     </div>
               </div>
               
               <form:button type="submit" value="입력완료">주소입력완료</form:button>
               </form:form>
               <!-- END -->

               <div class="row mt-5 pt-8 ">
                  <div class="col-md-6 " style="width:1000px">
                     <div class="cart-detail cart-total p-3 p-md-4">
                        <h3 class="billing-heading mb-4">결제 예정 금액</h3>
                      <p class="d-flex"> 
                           <span>총 주문금액</span> <span>${total_price }원</span>
                        <!-- </p> -->
                        <hr>
                        <p class="d-flex total-price">
                           <span>총 결제예정 금액</span> <span>${total_price }원</span>
                        </p>
                     </div>
                  </div>
                  <br>
                  <br>
                   <br>
                 <div class="col-md-6"> 
                    <div class="cart-detail p-3 p-md-4">
                        <c:if test="${write eq 'on' }">
                        <h3 class="billing-heading mb-4">결제 수단</h3>
                        <div class="form-group">
                           <div class="col-md-12">
                              <div class="radio">
                                 <label>
                                    <input type="radio" name="" class="mr-2" style="margin:0px 3px 1px 0px; width:13px; height:13px">
                                    <img src="../liquorstore_master/images/kakao.png" width="60px">
                                 </label>
                              </div>
                           </div>
                        </div>
                        <p>
                           <a href="javascript:void(0)" class="btn btn-primary py-3 px-4"  onclick="apibtn();">결제하기</a>
                        </p>
                         </c:if> 
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </section>

   <c:import url="/WEB-INF/views/product/bottom_info.jsp" />

   <!-- loader -->
   <div id="ftco-loader" class="show fullscreen">
      <svg class="circular" width="48px" height="48px">
         <circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee" />
         <circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" />
      </svg>
   </div>


   <script src="../liquorstore_master/js/jquery.min.js"></script>
   <script src="../liquorstore_master/js/jquery-migrate-3.0.1.min.js"></script>
   <script src="../liquorstore_master/js/popper.min.js"></script>
   <script src="../liquorstore_master/js/bootstrap.min.js"></script>
   <script src="../liquorstore_master/js/jquery.easing.1.3.js"></script>
   <script src="../liquorstore_master/js/jquery.waypoints.min.js"></script>
   <script src="../liquorstore_master/js/jquery.stellar.min.js"></script>
   <script src="../liquorstore_master/js/owl.carousel.min.js"></script>
   <script src="../liquorstore_master/js/jquery.magnific-popup.min.js"></script>
   <script src="../liquorstore_master/js/jquery.animateNumber.min.js"></script>
   <script src="../liquorstore_master/js/scrollax.min.js"></script>
   <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
   <script src="../liquorstore_master/js/google-map.js"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/js/bootstrap-select.min.js"></script>
   <script src="../liquorstore_master/js/main.js"></script>

</body>
</html>