<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>

<html lang="en">
  <head>
    <title>cart</title>
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
	  
   
    
    <section class="hero-wrap hero-wrap-2" style="background-image: url('../liquorstore_master/images/top_bg.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-center">
          <div class="col-md-9 ftco-animate mb-5 text-center">
          	<p class="breadcrumbs mb-0"><span class="mr-2"><a href="${root}">Home <i class="fa fa-chevron-right"></i></a></span> <span>Cart <i class="fa fa-chevron-right"></i></span></p>
            <h2 class="mb-0 bread">My Cart</h2>
          </div>
        </div>
      </div>
    </section>

    <section class="ftco-section">
    	<div class="container">
    		<div class="row">
    			<div class="table-wrap">
						<table class="table">
						  <thead class="thead-primary">
						    <tr>
						    	<th>no&nbsp;</th>
						    	<th>&nbsp;</th>
						    	<th>Product</th>
						      <th>Price</th>
						      <th>Quantity</th>
						      <th>total</th>
						      <th>&nbsp;</th>
						    </tr>
						  </thead>
						  <tbody>
						    
						    <c:forEach var="obj" items="${cartBean }" >
						    <tr class="alert" role="alert">
						    	<!-- 와인 idx or number 넣을것 -->
						    	<td>
						    		<label class="checkbox-wrap checkbox-primary">
										 ${obj.cart_number }
									</label>
						    	</td>
						    	<!-- 와인 이미지 -->
						    	<td>
						    		<div class="img" style="background-image: url(../liquorstore_master/images/${obj.wine_img});"></div>
						    	</td>
						      <!-- 와인 이름과 생산지 -->
						      <td>
						      	<div class="email">
						      		<span>${obj.wine_name }</span>
						      		<span>${obj.wine_producer }</span>
						      	</div>
						      </td>
						      <!-- 와인 개별가격 -->
						      <td>${obj.wine_price }</td>
						      <!-- 와인 수량 -->
						      <td class="quantity">
					        	<div class="input-group">
				             	<form:form action="cartBean_pro" method="get" modelAttribute="updateCartBean">
				             	<form:hidden path="product_number" value="${obj.product_number }"/>
				             	<form:input path="cart_amount" class="quantity form-control input-number" value="${obj.cart_amount }" />
				             	<form:button type="submit" 
				             	style="height:30px; width:78.75px; font-size:10px; margin: 0; padding: 0.5rem 1rem;
				             	font-weight:400; text-decoration:none; display:inline-block; border:none; border-radius: 4px;  ">변경
				             	</form:button>
				             	</form:form>
				          		</div>
				          	  </td>
				          <!-- 와인 토탈가격 -->
				          <td>${obj.wine_price * obj.cart_amount }</td>
						    <!-- 삭제 버튼 -->
						    <td>
						      	<button type="button" class="close" data-dismiss="alert" aria-label="Close" onclick="location.href='cart_delete?product_number=${obj.product_number}'" >
				            	<span aria-hidden="true"><i class="fa fa-close"></i></span>
				          		</button>
				        	</td>
						    </tr>
							</c:forEach>
							
						    
						  </tbody>
						</table>
					</div>
    		</div>
    		<div class="row justify-content-end">
    			<div class="col col-lg-5 col-md-6 mt-5 cart-wrap ftco-animate">
    				<div class="cart-total mb-3">
    					<h3>Cart Totals</h3>
    					<hr>
    					<p class="d-flex total-price">
    						<span>Total</span>
    						<span>
    						${total_price }
    						
    						</span>
    					</p>
    					
    				</div>
    				<p class="text-center"><a href="${root }product/checkout" class="btn btn-primary py-3 px-4">주문하기</a></p>
    			</div>
    		</div>
    	</div>
    </section>

    <c:import url="/WEB-INF/views/product/bottom_info.jsp" />
    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


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