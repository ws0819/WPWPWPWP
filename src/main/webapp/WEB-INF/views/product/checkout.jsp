<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />

<!DOCTYPE html>
<html lang="en">
<head>
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
<title>checkout</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css2?family=Spectral:ital,wght@0,200;0,300;0,400;0,500;0,700;0,800;1,200;1,300;1,400;1,500;1,700&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="../liquorstore_master/css/animate.css">
<link rel="stylesheet"
	href="../liquorstore_master/css/owl.carousel.min.css">
<link rel="stylesheet"
	href="../liquorstore_master/css/owl.theme.default.min.css">
<link rel="stylesheet"
	href="../liquorstore_master/css/magnific-popup.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/css/bootstrap-select.min.css">
<link rel="stylesheet" href="../liquorstore_master/css/flaticon.css">
<link rel="stylesheet" href="../liquorstore_master/css/style.css">
</head>
<body>

	<c:import url="/WEB-INF/views/product/top_menu.jsp" />

	<!-- END nav -->

	<section class="hero-wrap hero-wrap-2"
		style="background-image: url('images/bg_2.jpg');" data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text align-items-end justify-content-center">
				<div class="col-md-9 ftco-animate mb-5 text-center">
					<p class="breadcrumbs mb-0">
						<span class="mr-2"><a href="${root }product/home">Home <i class="fa fa-chevron-right"></i></a></span> 
						<span>Checkout<i class="fa fa-chevron-right"></i></span>
					</p>
					<h2 class="mb-0 bread">Checkout</h2>
				</div>
			</div>
		</div>
	</section>

	<section class="ftco-section">
       <div class="container">
          <div class="row justify-content-center">
          <div class="col-xl-10 ftco-animate">
                  <form:form method="get" action="${root }product/checkout_pro" class="billing-form" modelAttribute="OrderBean">
                     <h3 class="mb-4 billing-heading">Order Details</h3>
                <div class="row align-items-end">
                   <div class="col-md-6">
                   <div class="form-group">
                      <label for="firstname">받으시는 분 </label>
                      <form:input path="order_name" class="form-control" placeholder="" text-align="center"/>
                   </div>
                 </div>
                 <!-- <div class="col-md-6">
                   <div class="form-group">
                      <label for="lastname">이름</label>
                     <input type="text" class="form-control" placeholder="">
                   </div>
                </div> -->
                <div class="w-100"></div>
                  <div class="col-md-12">
                     <div class="form-group">
                        <label for="country">배송지 주소</label>
                        <br />
                        <c:import url="/WEB-INF/views/product/address.jsp" />
                        <input type="text" id="sample4_postcode" placeholder="우편번호">
						<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
						<input type="text" id="sample4_roadAddress" placeholder="도로명주소">
						<input type="text" id="sample4_jibunAddress" placeholder="지번주소">
						<span id="guide" style="color:#999;display:none"></span>
						<input type="text" id="sample4_detailAddress" placeholder="상세주소">
                        <div class="select-wrap">
                        
                        <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                      
                      </div>
                     </div>
                  </div>
                  <div class="w-100"></div>
                  <div class="col-md-6">
                     <div class="form-group">
                      <label for="streetaddress">Street Address</label>
                     <input type="text" class="form-control" placeholder="House number and street name">
                   </div>
                  </div>
                  <div class="col-md-6">
                     <div class="form-group">
                     <input type="text" class="form-control" placeholder="Appartment, suite, unit etc: (optional)">
                   </div>
                  </div>
                  <div class="w-100"></div>
                  <div class="col-md-6">
                     <div class="form-group">
                      <label for="towncity">Town / City</label>
                     <input type="text" class="form-control" placeholder="">
                   </div>
                  </div>
                  <div class="col-md-6">
                     <div class="form-group">
                        <label for="postcodezip">Postcode / ZIP *</label>
                     <input type="text" class="form-control" placeholder="">
                   </div>
                  </div>
                  <div class="w-100"></div>
                  <div class="col-md-6">
                   <div class="form-group">
                      <label for="phone">전화번호</label>
                     <input type="text" class="form-control" placeholder="">
                   </div>
                 </div>
                 <div class="col-md-6">
                   <div class="form-group">
                      <label for="emailaddress">이메일</label>
                     <input type="text" class="form-control" placeholder="">
                   </div>
                </div>
                <div class="w-100"></div>
                <div class="col-md-12">
                   <div class="form-group mt-4">
                              <div class="radio">
                                <label class="mr-3"><input type="radio" name="optradio"> Create an Account? </label>
                                <label><input type="radio" name="optradio"> Ship to different address</label>
                              </div>
                           </div>
                </div>
               </div>
             </form:form><!-- END -->



             <div class="row mt-5 pt-3 d-flex">
                <div class="col-md-6 d-flex">
                   <div class="cart-detail cart-total p-3 p-md-4">
                      <h3 class="billing-heading mb-4">결제 예정 금액</h3>
                      <p class="d-flex">
                            <span>Subtotal</span>
                            <span>$20.60</span>
                         </p>
                         <p class="d-flex">
                            <span>Delivery</span>
                            <span>$0.00</span>
                         </p>
                         <p class="d-flex">
                            <span>Discount</span>
                            <span>$3.00</span>
                         </p>
                         <hr>
                         <p class="d-flex total-price">
                            <span>Total</span>
                            <span>$17.60</span>
                         </p>
                        </div>
                </div>
                <div class="col-md-6">
                   <div class="cart-detail p-3 p-md-4">
                      <h3 class="billing-heading mb-4">결제 수단</h3>
                           <div class="form-group">
                              <div class="col-md-12">
                                 <div class="radio">
                                    <label><input type="radio" name="optradio" class="mr-2">무통장 입금</label>
                                 </div>
                              </div>
                           </div>
                           <div class="form-group">
                              <div class="col-md-12">
                                 <div class="radio">
                                    <label><input type="radio" name="optradio" class="mr-2">카드 결제</label>
                                 </div>
                              </div>
                           </div>
                           <div class="form-group">
                              <div class="col-md-12">
                                 <div class="radio">
                                    <label><input type="radio" name="optradio" class="mr-2">휴대폰 결제</label>
                                 </div>
                              </div>
                           </div>
                           <div class="form-group">
                              <div class="col-md-12">
                                 <div class="checkbox">
                                    <label><input type="checkbox" value="" class="mr-2"> 결제정보를 확인했으며, 구매진행에 동의 합니다.</label>
                                 </div>
                              </div>
                           </div>
                           <p><a href="#"class="btn btn-primary py-3 px-4">Place an order</a></p>
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
			<circle class="path-bg" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke="#eeeeee" />
			<circle class="path" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
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
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="../liquorstore_master/js/google-map.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/js/bootstrap-select.min.js"></script>
	<script src="../liquorstore_master/js/main.js"></script>

</body>

</html>