<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Subscribe</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="../assets/css/main.css" />
		<noscript><link rel="stylesheet" href="../assets/css/noscript.css" /></noscript>
		<link rel="stylesheet" href="../assets/css/scroll.css" />
	</head>
	<body class="is-preload">

	<c:import url="/WEB-INF/views/include/top_menu.jsp" />
			
			<div class="wrap">
        <div id="subNav">
            <ul>
                <li><a href="#intro">구독서비스</a></li>
                <li><a href="#one">1</a></li>
                <li><a href="#two">2</a></li>
                <li><a href="#work">3</a></li>
                <li><a href="#contact">구독</a></li>
            </ul>
        </div><!-- #subNav end-->
        </div>
         

		<!-- Intro -->
			<section id="intro" class="main style1 dark fullscreen">
				<div class="content">
					<header>
						<h2>Subscribe</h2>
					</header>
					<h4>구독서비스</h4><br />
					<h5>구독</h5>
					<footer>
						<a href="#one" class="button style2 down">More</a>
					</footer>
				</div>
			</section>

		<!-- One -->
			<section id="one" class="main style2 right dark fullscreen">
				<div class="content box style2">
					<header>
						<h2>1</h2>
					</header>
					<h3>11111111111111111.</h3>
				</div>
				<a href="#two" class="button style2 down anchored">Next</a>
			</section>

		<!-- Two -->
			<section id="two" class="main style2 left dark fullscreen">
				<div class="content box style2">
					<header>
						<h2>2</h2>
					</header>
					
					<h3>
					2222222222222222222222222
					</h3>

				</div>
				<a href="#work" class="button style2 down anchored">Next</a>
			</section>

		<!-- Work -->
			<section id="work" class="main style3 primary">
				<div class="content">
					<header>
						<h2>3</h2>
						<h3>3333333333333333</h3>
					</header>

	<!-- 
						<div class="gallery">
							<article class="from-left">
								<a href="images/fulls/01.jpg" class="image fit"><img src="images/thumbs/01.jpg" title="The Anonymous Red" alt="" /></a>
							</article>
							<article class="from-right">
								<a href="images/fulls/02.jpg" class="image fit"><img src="images/thumbs/02.jpg" title="Airchitecture II" alt="" /></a>
							</article>
							<article class="from-left">
								<a href="images/fulls/03.jpg" class="image fit"><img src="images/thumbs/03.jpg" title="Air Lounge" alt="" /></a>
							</article>
							<article class="from-right">
								<a href="images/fulls/04.jpg" class="image fit"><img src="images/thumbs/04.jpg" title="Carry on" alt="" /></a>
							</article>
							<article class="from-left">
								<a href="images/fulls/05.jpg" class="image fit"><img src="images/thumbs/05.jpg" title="The sparkling shell" alt="" /></a>
							</article>
							<article class="from-right">
								<a href="images/fulls/06.jpg" class="image fit"><img src="images/thumbs/06.jpg" title="Bent IX" alt="" /></a>
							</article>
						</div>
 -->
				</div>
			</section>

		<!-- Contact -->
			<section id="contact" class="main style3 secondary">
				<div class="content">
					<header>
						<h2>구독</h2>
					</header>
					<div class="box">
						<form method="post" action="#">
							<div class="fields">
								<div class="field half"><input type="text" name="name" placeholder="Name" /></div>
								<div class="field half"><input type="email" name="email" placeholder="Email" /></div>
								<div class="field"><textarea name="message" placeholder="Message" rows="6"></textarea></div>
							</div>
							<ul class="actions special">
								<li><input type="submit" value="Send Message" /></li>
							</ul>
						</form>
					</div>
				</div>
			</section>

		<!-- Footer -->
		<c:import url="/WEB-INF/views/include/bottom_info.jsp" />

		<!-- Scripts -->
			<script src="../assets/js/jquery.min.js"></script>
			<script src="../assets/js/jquery.poptrox.min.js"></script>
			<script src="../assets/js/jquery.scrolly.min.js"></script>
			<script src="../assets/js/jquery.scrollex.min.js"></script>
			<script src="../assets/js/browser.min.js"></script>
			<script src="../assets/js/breakpoints.min.js"></script>
			<script src="../assets/js/util.js"></script>
			<script src="../assets/js/main.js"></script>
			<script src="../assets/js/scroll.js"></script>
			
			
			

	</body>
</html>