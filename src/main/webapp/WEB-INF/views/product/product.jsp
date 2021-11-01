<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var='root' value="${pageContext.request.contextPath }/" />

<!DOCTYPE html>
<html lang="en">
<head>
<title>Product Product</title>
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

<link rel="stylesheet" href="../liquorstore_master/css/searchBar.css">


</head>
<body>

	<c:import url="/WEB-INF/views/product/top_menu.jsp" />



	<!-- END nav -->
	<section class="hero-wrap hero-wrap-2"
		style="background-image: url('../liquorstore_master/images/top_bg.jpg');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text align-items-end justify-content-center">
				<div class="col-md-9 ftco-animate mb-5 text-center">
					<p class="breadcrumbs mb-0">
						<span class="mr-2"><a href="${root }product/home">Home <i class="fa fa-chevron-right"></i></a></span> 
						<span>Products <i class="fa fa-chevron-right"></i></span>
					</p>
					<h2 class="mb-0 bread">Products</h2>
				</div>
			</div>
		</div>
	</section>

	<p />
	
	<div class="search_form_wrap">
		<form:form method="get" action="${root }product/product" class="sy_form" modelAttribute="SearchWienBean">
			<div class="select_wrap">
				<form:select id="sch" class="winery_select" path="wine_nation">
					<option value="">����</option>
					<option value="USA">�̱�</option>
					<option value="France">������</option>
					<option value="Italy">���¸�</option>
					<option value="Spain">������</option>
					<option value="Chile">ĥ��</option>
					<option value="New Zealand">��������</option>
					<option value="Australia">ȣ��</option>
				</form:select>


				<!-- <select name="winetype" id="winetype" class="winery_select"> -->
				<form:select path="wine_type" class="winery_select">
					<option value="">Ÿ��</option>
					<option value="Red">����</option>
					<option value="White">ȭ��Ʈ</option>
					<option value="Rose">����</option>
					<option value="Fortified">����Ʈ</option>
					<option value="Sparkling">����Ŭ��</option>
				</form:select> 
				<form:select path="wine_sweet" id="sugar1" class="winery_select short">
					<option value="">�絵</option>
					<option value="SWEET1">�絵1</option>
					<option value="SWEET2">�絵2</option>
					<option value="SWEET3">�絵3</option>
					<option value="SWEET4">�絵4</option>
					<option value="SWEET5">�絵5</option>
				</form:select> 
				<form:select path="wine_acidity" id="sugar2" class="winery_select short">

					<option value="">�굵</option>
					<option value="ACIDITY1">�굵1</option>
					<option value="ACIDITY2">�굵2</option>
					<option value="ACIDITY3">�굵3</option>
					<option value="ACIDITY4">�굵4</option>
					<option value="ACIDITY5">�굵5</option>
				</form:select> 
				<form:select path="wine_body" id="sugar3" class="winery_select short">
					<option value="">�ٵ�</option>
					<option value="BODY1">�ٵ�1</option>
					<option value="BODY2">�ٵ�2</option>
					<option value="BODY3">�ٵ�3</option>
					<option value="BODY4">�ٵ�4</option>
					<option value="BODY5">�ٵ�5</option>
				</form:select> 
				<form:select path="wine_tannin" id="sugar3" class="winery_select short">
					<option value="">ź��</option>
					<option value="TANNIN1">ź��1</option>
					<option value="TANNIN2">ź��2</option>
					<option value="TANNIN3">ź��3</option>
					<option value="TANNIN4">ź��4</option>
					<option value="TANNIN5">ź��5</option>
				</form:select>


			</div>
			<div class="keyword_tab">
				<form:input path="wine_name" placeholder="���� �̸�" /> 
				<form:button type="submit" class="btn_search_large" value="�˻�"
					style="background-image: url('../liquorstore_master/images/searchLogo.jpg');">
				</form:button>	
			</div>
		</form:form>
	</div>
	
	<section class="ftco-section">
		<div class="container">
			<div class="row">
				<div class="col-md-9">
					<div class="row mb-4">
						<div
							class="col-md-12 d-flex justify-content-between align-items-center">
							<h4 class="product-select">Select Types of Products</h4>

						</div>
					</div>
					<div class="row">
						<c:forEach var="obj" items="${wineProductBean }">
						<div class="col-md-4 d-flex">
							<div class="product ftco-animate">
								<div
									class="img d-flex align-items-center justify-content-center"
									style="background-image: url(../liquorstore_master/images/${obj.wine_img});">
									<div class="desc">
										<p class="meta-prod d-flex">
											<a href="${root }product/cart_pro?wine_idx=${obj.wine_idx}" class="d-flex align-items-center justify-content-center">
											<span class="flaticon-shopping-bag"></span></a> 
											<a href="${root }product/cart" class="d-flex align-items-center justify-content-center">
											<span class="flaticon-shopping-bag"></span></a> 
											<a href="${root }product/info" class="d-flex align-items-center justify-content-center">
											<span class="flaticon-visibility"></span></a>
										</p>
									</div>
								</div>
								<div class="text text-center">
									<span class="category">${obj.wine_type }</span>
									<h2>${obj.wine_name }</h2>
									<p class="mb-0">
										 <span class="price">${obj.wine_price }</span>
									</p>
								</div>
							</div>
						</div>
						</c:forEach>
					</div>
					<div class="row mt-5">
						<!-- ����¡ ó���ؾ��� �κ� -->
					
					<c:choose>
						<c:when test="${param.wine_nation eq null }">
						<div class="col text-center">
							<div class="block-27">
								<ul>
								<c:choose>
									<c:when test="${pageBean.prevPage <= 0 }">
									<li><a class="page-link" href="javascript:void(0)" style="color:gray;">&lt;</a></li>
									</c:when>
									
									<c:otherwise>
									<li>
									<a href="${root }product/product?page=${pageBean.prevPage}">&lt;
									</a>
									</li>
									</c:otherwise>
								</c:choose>
								<c:forEach var="idx" begin="${pageBean.min }" end="${pageBean.max }">
									<c:choose>
										<c:when test="${idx == pageBean.currentPage }">
											<li >
	    										<a class="page-link " 
	    										href="${root }product/product?page=${idx}">
	    										${idx }</a>
	    									</li>
										</c:when>
									<c:otherwise>
											<li >
	    										<a class="page-link" 
	    										href="${root }product/product?page=${idx}">${idx }</a>
	    									</li>
									</c:otherwise>
									</c:choose>
									</c:forEach>
									<c:choose>
									<c:when test="${pageBean.max >= pageBean.pageCnt }">
										<li><a class="page-link" href="javascript:void(0)" style="color:gray;">&gt;</a></li>
									</c:when>
									<c:otherwise>
										<li><a href="${root }product/product?page=${pageBean.nextPage}">&gt;</a></li>
									</c:otherwise>
								</c:choose>
								</ul>
							</div>
						</div>
						</c:when>
						
						
						<c:otherwise>
						<div class="col text-center">
							<div class="block-27">
								<ul>
								<c:choose>
									<c:when test="${pageBean.prevPage <= 0 }">
									<li><a class="page-link" href="javascript:void(0)" style="color:gray;">&lt;</a></li>
									</c:when>
									
									<c:otherwise>
									<li>
									<a href="${root }product/product?page=${pageBean.prevPage}&wine_nation=${SearchWienBean.wine_nation}&wine_type=${SearchWienBean.wine_type}&wine_sweet=${SearchWienBean.wine_sweet}&
									wine_acidity=${SearchWienBean.wine_acidity}&wine_body=${SearchWienBean.wine_body}&wine_tannin=${SearchWienBean.wine_tannin}&wine_name=">&lt;
									</a>
									</li>
									</c:otherwise>
								</c:choose>
								<c:forEach var="idx" begin="${pageBean.min }" end="${pageBean.max }">
									<c:choose>
										<c:when test="${idx == pageBean.currentPage }">
											<li >
	    										<a class="page-link " 
	    										href="${root }product/product?page=${idx}&wine_nation=${SearchWienBean.wine_nation}&wine_type=${SearchWienBean.wine_type}&wine_sweet=${SearchWienBean.wine_sweet}&
									wine_acidity=${SearchWienBean.wine_acidity}&wine_body=${SearchWienBean.wine_body}&wine_tannin=${SearchWienBean.wine_tannin}&wine_name=">
	    										${idx }</a>
	    									</li>
										</c:when>
									<c:otherwise>
											<li >
	    										<a class="page-link" 
	    										href="${root }product/product?page=${idx}&wine_nation=${SearchWienBean.wine_nation}&wine_type=${SearchWienBean.wine_type}&wine_sweet=${SearchWienBean.wine_sweet}&
									wine_acidity=${SearchWienBean.wine_acidity}&wine_body=${SearchWienBean.wine_body}&wine_tannin=${SearchWienBean.wine_tannin}&wine_name=">${idx }</a>
	    									</li>
									</c:otherwise>
									</c:choose>
									</c:forEach>
									<c:choose>
									<c:when test="${pageBean.max >= pageBean.pageCnt }">
										<li><a class="page-link" href="javascript:void(0)" style="color:gray;">&gt;</a></li>
									</c:when>
									<c:otherwise>
										<li><a href="${root }product/product?page=${pageBean.nextPage}&wine_nation=${SearchWienBean.wine_nation}&wine_type=${SearchWienBean.wine_type}&wine_sweet=${SearchWienBean.wine_sweet}&
									wine_acidity=${SearchWienBean.wine_acidity}&wine_body=${SearchWienBean.wine_body}&wine_tannin=${SearchWienBean.wine_tannin}&wine_name=">&gt;</a></li>
									</c:otherwise>
								</c:choose>
								</ul>
							</div>
						</div>
						</c:otherwise>
						</c:choose>
					</div>
				</div>
				
				<div class="col-md-3">
					<div class="sidebar-box ftco-animate"></div>

					<div class="sidebar-box ftco-animate">
						 <h3>Recent Blog</h3>
              <div class="block-21 mb-4 d-flex">
                <a class="blog-img mr-4" style="background-image: url(../liquorstore_master/images/blog.jpg);"></a>
                <div class="text">
                  <h3 class="heading"><a href="https://blog.naver.com/e101gram/222499252993" target="blank">���Ŀ� �´�<br/>���� ����</a></h3>
                  <div class="meta">
                    <div><a href="#"><span class="fa fa-calendar"></span> Oct. 28, 2021</a></div>
                    <div><a href="#"><span class="fa fa-comment"></span> 20</a></div>
                  </div>
                </div>
              </div>
              <div class="block-21 mb-4 d-flex">
                <a class="blog-img mr-4" style="background-image: url(../liquorstore_master/images/inst.jpg);"></a>
                <div class="text">
                  <h3 class="heading"><a href="https://www.instagram.com/wine.asy/" target="blank">WINE EASY's pick</a></h3>
                  <div class="meta">
                    <div><a href="#"><span class="fa fa-calendar"></span> Nov. 01, 2021</a></div>
                    <div><a href="#"><span class="fa fa-comment"></span> 100</a></div>
                  </div>
                </div>
              </div>
              <div class="block-21 mb-4 d-flex">
                <a class="blog-img mr-4" style="background-image: url(../liquorstore_master/images/youtube.jpg);"></a>
                <div class="text">
                  <h3 class="heading"><a href="https://www.youtube.com/watch?v=MhDTMn7hbD0" target="blank">���μ����� WINEEASY </a></h3>
                  <div class="meta">
                    <div><a href="#"><span class="fa fa-calendar"></span> Apr. 18, 2021</a></div>
                    <div><a href="#"><span class="fa fa-comment"></span> 19</a></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- �ϴ��� main css �����ϰ��� �ٲ���� -->
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
	<script src="https://www.naracellar.com:443/js/jquery-1.8.3.min.js"></script>
	<script src="https://www.naracellar.com:443/js/jquery.menu.js?ver=0315"></script>
	<script src="https://www.naracellar.com:443/js/common.js?ver=0315"></script>
	<script src="https://www.naracellar.com:443/js/wrest.js?ver=0315"></script>
</body>
</html>
