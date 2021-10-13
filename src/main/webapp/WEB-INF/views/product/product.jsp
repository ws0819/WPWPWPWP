<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
						<span class="mr-2"><a href="index.html">Home <i
								class="fa fa-chevron-right"></i></a></span> <span>Products <i
							class="fa fa-chevron-right"></i></span>
					</p>
					<h2 class="mb-0 bread">Products</h2>
				</div>
			</div>
		</div>
	</section>

	<p />

	<div class="search_form_wrap">
		<form method="get" name="frm_wine" action="${root }product/product"
			class="sy_form">
			<div class="select_wrap">
				<select id="sch" class="winery_select" name="sch">
					<option value="">국가</option>
					<option value="american">미국</option>
					<option value="france">프랑스</option>
					<option value="itary">이태리</option>
					<option value="spain">스페인</option>
					<option value="prt">포르투갈</option>
				</select>


				<!-- <select name="winetype" id="winetype" class="winery_select"> -->
				<select name="winetype" id="winetype" class="winery_select">

					<option value="">타입</option>
					<option value="red">레드</option>
					<option value="white">화이트</option>
					<option value="rose">로제</option>
					<option value="desert">디저트</option>
					<option value="sparkling">스파클링</option>
				</select> <select name="sugar1" id="sugar1" class="winery_select short">
					<option value="">당도</option>
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
				</select> <select name="sugar2" id="sugar2" class="winery_select short">

					<option value="">산도</option>
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
				</select> <select name="sugar3" id="sugar3" class="winery_select short">
					<option value="">바디</option>
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
				</select> <select name="price" id="sugar3" class="winery_select short">
					<option value="">가격대</option>
					<option value="1">~100000</option>
					<option value="2">100000~200000</option>
					<option value="3">200000~300000</option>
					<option value="4">300000~500000</option>
					<option value="5">500000~</option>
				</select>


			</div>
			<div class="keyword_tab">
				<input type="text" name="wnames" placeholder="와인 이름" value="" /> <input
					type="submit" class="btn_search_large" value="검색"
					style="background-image: url('../liquorstore_master/images/searchLogo.png');">
			</div>
		</form>
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
						<div class="col-md-4 d-flex">
							<div class="product ftco-animate">
								<div
									class="img d-flex align-items-center justify-content-center"
									style="background-image: url(../liquorstore_master/images/desert2.png);">
									<div class="desc">
										<p class="meta-prod d-flex">
											<a href="#"
												class="d-flex align-items-center justify-content-center"><span
												class="flaticon-shopping-bag"></span></a> <a
												href="${root }product/info"
												class="d-flex align-items-center justify-content-center"><span
												class="flaticon-visibility"></span></a>
										</p>
									</div>
								</div>
								<div class="text text-center">
									<span class="sale">Sale</span> <span class="category">DESERT</span>
									<h2>DESERT2</h2>
									<p class="mb-0">
										<span class="price price-sale">900,000</span> <span
											class="price">780,000</span>
									</p>
								</div>
							</div>
						</div>
						<div class="col-md-4 d-flex">
							<div class="product ftco-animate">
								<div
									class="img d-flex align-items-center justify-content-center"
									style="background-image: url(../liquorstore_master/images/desert3.jpg);">
									<div class="desc">
										<p class="meta-prod d-flex">
											<a href="#"
												class="d-flex align-items-center justify-content-center"><span
												class="flaticon-shopping-bag"></span></a> <a href="#"
												class="d-flex align-items-center justify-content-center"><span
												class="flaticon-heart"></span></a> <a href="#"
												class="d-flex align-items-center justify-content-center"><span
												class="flaticon-visibility"></span></a>
										</p>
									</div>
								</div>
								<div class="text text-center">
									<span class="seller">Best Seller</span> <span class="category">Gin</span>
									<h2>Jim Beam Kentucky Straight</h2>
									<span class="price">$69.00</span>
								</div>
							</div>
						</div>
						<div class="col-md-4 d-flex">
							<div class="product ftco-animate">
								<div
									class="img d-flex align-items-center justify-content-center"
									style="background-image: url(../liquorstore_master/images/white2.png);">
									<div class="desc">
										<p class="meta-prod d-flex">
											<a href="#"
												class="d-flex align-items-center justify-content-center"><span
												class="flaticon-shopping-bag"></span></a> <a href="#"
												class="d-flex align-items-center justify-content-center"><span
												class="flaticon-heart"></span></a> <a href="#"
												class="d-flex align-items-center justify-content-center"><span
												class="flaticon-visibility"></span></a>
										</p>
									</div>
								</div>
								<div class="text text-center">
									<span class="new">New Arrival</span> <span class="category">Rum</span>
									<h2>Citadelle</h2>
									<span class="price">$69.00</span>
								</div>
							</div>
						</div>
						<div class="col-md-4 d-flex">
							<div class="product ftco-animate">
								<div
									class="img d-flex align-items-center justify-content-center"
									style="background-image: url(../liquorstore_master/images/white1.jpg);">
									<div class="desc">
										<p class="meta-prod d-flex">
											<a href="#"
												class="d-flex align-items-center justify-content-center"><span
												class="flaticon-shopping-bag"></span></a> <a href="#"
												class="d-flex align-items-center justify-content-center"><span
												class="flaticon-heart"></span></a> <a href="#"
												class="d-flex align-items-center justify-content-center"><span
												class="flaticon-visibility"></span></a>
										</p>
									</div>
								</div>
								<div class="text text-center">
									<span class="category">Rum</span>
									<h2>The Glenlivet</h2>
									<span class="price">$69.00</span>
								</div>
							</div>
						</div>

						<div class="col-md-4 d-flex">
							<div class="product ftco-animate">
								<div
									class="img d-flex align-items-center justify-content-center"
									style="background-image: url(../liquorstore_master/images/red1.jpg);">
									<div class="desc">
										<p class="meta-prod d-flex">
											<a href="#"
												class="d-flex align-items-center justify-content-center"><span
												class="flaticon-shopping-bag"></span></a> <a href="#"
												class="d-flex align-items-center justify-content-center"><span
												class="flaticon-heart"></span></a> <a href="#"
												class="d-flex align-items-center justify-content-center"><span
												class="flaticon-visibility"></span></a>
										</p>
									</div>
								</div>
								<div class="text text-center">
									<span class="category">Whiskey</span>
									<h2>Black Label</h2>
									<span class="price">$69.00</span>
								</div>
							</div>
						</div>
						<div class="col-md-4 d-flex">
							<div class="product ftco-animate">
								<div
									class="img d-flex align-items-center justify-content-center"
									style="background-image: url(../liquorstore_master/images/red2.jpg);">
									<div class="desc">
										<p class="meta-prod d-flex">
											<a href="#"
												class="d-flex align-items-center justify-content-center"><span
												class="flaticon-shopping-bag"></span></a> <a href="#"
												class="d-flex align-items-center justify-content-center"><span
												class="flaticon-heart"></span></a> <a href="#"
												class="d-flex align-items-center justify-content-center"><span
												class="flaticon-visibility"></span></a>
										</p>
									</div>
								</div>
								<div class="text text-center">
									<span class="category">Tequila</span>
									<h2>Macallan</h2>
									<span class="price">$69.00</span>
								</div>
							</div>
						</div>

					</div>
					<div class="row mt-5">
						<!-- 페이징 처리해야할 부분 -->
						<div class="col text-center">
							<div class="block-27">
								<ul>
									<li><a href="#">&lt;</a></li>
									<li class="active"><span>1</span></li>
									<li><a href="#">2</a></li>
									<li><a href="#">3</a></li>
									<li><a href="#">4</a></li>
									<li><a href="#">5</a></li>
									<li><a href="#">&gt;</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>

				<div class="col-md-3">
					<div class="sidebar-box ftco-animate"></div>

					<div class="sidebar-box ftco-animate">
						<h3>Recent Blog</h3>
						<div class="block-21 mb-4 d-flex">
							<a class="blog-img mr-4"
								style="background-image: url(../liquorstore_master/images/blog.jpg);"></a>
							<div class="text">
								<h3 class="heading">
									<a href="https://blog.naver.com/e101gram/222499252993">음식에
										맞는 와인 고르기</a>
								</h3>
								<div class="meta">
									<div>
										<a href="#"><span class="fa fa-calendar"></span> Apr. 18,
											2020</a>
									</div>
									<div>
										<a href="#"><span class="fa fa-comment"></span> 19</a>
									</div>
								</div>
							</div>
						</div>
						<div class="block-21 mb-4 d-flex">
							<a class="blog-img mr-4"
								style="background-image: url(../liquorstore_master/images/inst.jpg);"></a>
							<div class="text">
								<h3 class="heading">
									<a href="#">Even the all-powerful Pointing has no control
										about the blind texts</a>
								</h3>
								<div class="meta">
									<div>
										<a href="#"><span class="fa fa-calendar"></span> Apr. 18,
											2020</a>
									</div>
									<div>
										<a href="#"><span class="fa fa-comment"></span> 19</a>
									</div>
								</div>
							</div>
						</div>
						<div class="block-21 mb-4 d-flex">
							<a class="blog-img mr-4"
								style="background-image: url(../liquorstore_master/images/youtube.jpg);"></a>
							<div class="text">
								<h3 class="heading">
									<a href="#">Even the all-powerful Pointing has no control
										about the blind texts</a>
								</h3>
								<div class="meta">
									<div>
										<a href="#"><span class="fa fa-calendar"></span> Apr. 18,
											2020</a>
									</div>
									<div>
										<a href="#"><span class="fa fa-comment"></span> 19</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- 하단은 main css 수정하고나서 바꿔야함 -->
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