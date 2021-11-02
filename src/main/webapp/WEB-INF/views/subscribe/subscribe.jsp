<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath }/"/>   
<!DOCTYPE html>
<html>
	<head>
		<title>Subscribe</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="../subscribe_bot/css/main.css" />
		<noscript><link rel="stylesheet" href="../subscribe_bot/css/noscript.css" /></noscript>
		<link rel="stylesheet" href="../subscribe_bot/css/scroll.css" />
	</head>
	<body class="is-preload">

	<c:import url="/WEB-INF/views/include/top_menu.jsp" />
			
			<div class="wrap">
        <div id="subNav">
            <ul>
                <li><a href="#intro">일단사진</a></li>
                <li><a href="#one">와인정기구독서비스</a></li>
                <li><a href="#two">이지박스</a></li>
                <li><a href="#work">이지박스 사진</a></li>
                <li><a href="#contact">구독</a></li>
            </ul>
        </div><!-- #subNav end-->
        </div>
         

		<!-- Intro -->
			<section id="intro" class="main style1 dark fullscreen">
				<div class="content">
					
<!-- 						<h2>Subscribe</h2>
					</header>
					<h4>구독서비스</h4><br />
					<h5>구독</h5> -->
					
						<a href="#one" class="button style2 down">More</a>
					
				</div>
			</section>

		<!-- One -->
			<section id="one" class="main style2 right dark fullscreen">

				<a href="#two" class="button style2 down anchored">Next</a>
			</section>

		<!-- Two -->
			<section id="two" class="main style2 left dark fullscreen">
				<div class="content box style2">
					<header>
						<h2>EasyBox</h2>
					</header>
					<h3>소믈리에가 선택한 이달의 와인<br />
					 다양한 가격의 와인을 50,000원 </h3>
				</div>
				<a href="#work" class="button style2 down anchored">Next</a>
			</section>

		<!-- Work -->
			<section id="work" class="main style3 primary">
				<div class="content">
					<header>
						<h2>EasyBox</h2>
						<h3></h3>
					</header>
					<div class="gallery">
							<article class="from-left">
								<a href="images/fulls/1.jpg" class="image fit"><img src="../subscribe_bot/css/images/fulls/1.jpg" title="The Anonymous Red" alt="" /></a>
							</article>
							<article class="from-right">
								<a href="images/fulls/2.jpg" class="image fit"><img src="../subscribe_bot/css/images/fulls/2.jpg" title="Airchitecture II" alt="" /></a>
							</article>
							<article class="from-left">
								<a href="images/fulls/3.jpg" class="image fit"><img src="../subscribe_bot/css/images/fulls/3.jpg" title="Air Lounge" alt="" /></a>
							</article>
							<article class="from-right">
								<a href="images/fulls/4.jpg" class="image fit"><img src="../subscribe_bot/css/images/fulls/4.jpg" title="Carry on" alt="" /></a>
							</article>
							<article class="from-left">
								<a href="images/fulls/5.jpg" class="image fit"><img src="../subscribe_bot/css/images/fulls/5.jpg" title="The sparkling shell" alt="" /></a>
							</article>
							<article class="from-right">
								<a href="images/fulls/6.jpg" class="image fit"><img src="../subscribe_bot/css/images/fulls/6.jpg" title="Bent IX" alt="" /></a>
							</article>
						</div>
				</div>
			</section>

		<!-- Contact -->
			<section id="contact" class="main style3 secondary">
				<div class="content">
					<header>
						<!-- <h2>구독</h2> -->
					</header>
					<div class="box">
						<form method="post" action="#">
							<div class="fields">
								<!-- <div class="field half">나만의 인생술! 찾을 준비 되셨나요?</div> -->
								<div class="field">나만의 인생술! <br /> 찾을 준비 되셨나요?</div>
							</div>
							<ul class="actions special">
								<li><input type="button" value="구독" onclick='location.href="${root}/subscribe/subscribe_product"'/></li>	
							</ul>
						</form>
					</div>
				</div>
			</section>
			<%-- <a href="${root}subscribe_product">구독</a --%>

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
	</body>
</html>