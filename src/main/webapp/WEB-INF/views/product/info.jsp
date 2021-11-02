<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var='root' value="${pageContext.request.contextPath }/" />


<!DOCTYPE HTML>

<html lang="en">
	<head>
		<title>Product Info</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no, shrink-to-fit=no" />
		<meta http-equiv="imagetoolbar" content="no">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="viewport" content="width=1200">
<meta name="description" content="" >
<link rel="shortcut icon" href="/favicon.png">


 



<!--  상단 -->

<link rel="stylesheet" href="https://www.naracellar.com:443/css/default.css?ver=0520">
<link rel="stylesheet" href="https://www.naracellar.com:443/skin/board/faq/style.css?ver=0520">

<link rel="stylesheet" href="//fonts.googleapis.com/earlyaccess/notosanskr.css">
<link rel="stylesheet" href="//fonts.googleapis.com/css2?family=Sulphur+Point:wght@300;400;700&display=swap">
<link
	href="https://fonts.googleapis.com/css?family=Poppins:300,300i,400,400i,500,500i,600,600i,700,700i&display=swap"
	rel="stylesheet">
	
<link rel="stylesheet" href="https://www.naracellar.com:443/css/xeicon.css">

<link rel="stylesheet" href="https://www.naracellar.com:443/css/swiper.min.css">
<script type="text/javascript" src="https://www.naracellar.com:443/js/swiper.js"></script>





<!-- 리뷰 -->
    <link rel="stylesheet" type="text/css" href="//static.msscdn.net/skin/musinsa/css/magazine_common.css?202102031711" />
  

    <link rel="stylesheet" type="text/css" href="//static.msscdn.net/skin/musinsa/css/store_common.css?202012081147" />
    


<link rel="stylesheet" type="text/css" href="//static.msscdn.net/skin/musinsa/css/style.min.css?202110261421">   
 <link rel="stylesheet" type="text/css" href="//static.msscdn.net/skin/musinsa/css/sub.css?202110261522" />



<script type="text/javascript" src="//static.msscdn.net/mfile_outsrc/js/vendor/jquery-1.11.1.min.js?20160201"></script>
<script type="text/javascript" src="//static.msscdn.net/mfile_outsrc/js/common/base.js?20160201"></script>
<script type="text/javascript" src="//static.msscdn.net/mfile_outsrc/js/common/common.js?202105041500"></script>
<script type="text/javascript" src="//static.msscdn.net/mfile_outsrc/js/vendor/jquery.easing.js?20160201"></script>



<link rel="stylesheet" type="text/css" href="//static.msscdn.net/ui/build/pc/css/goods.css?202110261421">
<link type="text/css" rel="stylesheet" href="//static.msscdn.net/skin/musinsa/css/product.min.css?202109131502"/>
<!-- 리뷰 -->


    
    
<!-- 메인 -->
<link rel="stylesheet" href="https://www.naracellar.com:443/css/flexslider.css" type="text/css" media="screen" />
<link rel="stylesheet" href="../productinfo/assets/css/main.css" />
		<noscript><link rel="stylesheet" href="../productinfo/assets/css/noscript.css" /></noscript>

<!-- 상품평 등록 -->
  <link rel="stylesheet" href="../productinfo/css2/css/bootstrap.min.css">
  <link rel="stylesheet" href="../productinfo/css4/wine.css">




 <style type="text/css">
 
 .review-evaluation-button__item02::before {
    display: inline-block;
    width: 18
px
;
    height: 16
px
;
    margin-right: 5
px
;
    background-image: url(0); 
    background-repeat: no-repeat;
    background-size: 18
px
 16
px
;
    content: '';
}


.review-evaluation-button__wrap {
    display: flex;
    float: right;
}

.review-evaluation-button__item02 {
    display: flex;
    box-sizing: border-box;
    min-width: 90px;
    height: 30px;
    padding: 1px 8px 0 5px;
border: 0px solid #ccc;
 
 
border-radius: 20px;
    font-size: 12px;
    line-height: normal;
    cursor: pointer;
    align-items: center;
    
}


.cs-info-block .cs-cont .cont-info .n-info-txt {
    text-align: left;
    padding-bottom: 15
px
;
}


.fa-copy:before, .fa-files-o:before {
    content: none;
}

.fa-code:before {
    content: none;
}

.section_curating_detail {
    width: none;
    padding-top: 15px;
    line-height: 20px;
}


.wineDetail .wineDb ul li .dbDetail {
    margin-left: 30px;
    font-size: 20px;
    
}

.right_contents {
border-bottom: 0px solid #ddd;
}


.review-profile__image {
    position: absolute;
    top: 50%;
    left: 0;
    width: 110px;
    transform: translateY(-50%);
}
 
 </style>



<!--[if lte IE 8]>
<script src="https://www.naracellar.com:443/js/html5.js"></script>
<![endif]-->
<script>
// 자바스크립트에서 사용하는 전역변수 선언
var g5_url       = "https://www.naracellar.com:443";
var g5_bbs_url   = "https://www.naracellar.com:443/bbs";
var g5_is_member = "";
var g5_is_admin  = "";
var g5_is_mobile = "";
var g5_bo_table  = "";
var g5_sca       = "";
var g5_editor    = "";
var g5_cookie_domain = "";
</script>
<script src="https://www.naracellar.com:443/js/jquery-1.8.3.min.js"></script>
<script src="https://www.naracellar.com:443/js/jquery.menu.js?ver=0315"></script>
<script src="https://www.naracellar.com:443/js/common.js?ver=0315"></script>
<script src="https://www.naracellar.com:443/js/wrest.js?ver=0315"></script>




<!-- FlexSlider -->
<script type="text/javascript" src="https://www.naracellar.com:443/js/jquery.flexslider.js"></script>



<!-- YouTube Responsive -->
<script type="text/javascript">  $(window).resize(function(){resizeYoutube();});  $(function(){resizeYoutube();});  function resizeYoutube(){ $("iframe").each(function(){ if( /^https?:\/\/www.youtube.com\/embed\//g.test($(this).attr("src")) ){ $(this).css("width","100%"); $(this).css("height",Math.ceil( parseInt($(this).css("width")) * 480 / 854 ) + "px");} }); }</script>

		
		
		

<!-- 스토어, 매거진 공통 스크립트 -->
<script type="text/javascript" src="//static.msscdn.net/mfile_outsrc/js/vendor/jquery-1.11.1.min.js?20160201"></script>
<script type="text/javascript" src="//static.msscdn.net/mfile_outsrc/js/common/base.js?20160201"></script>
<script type="text/javascript" src="//static.msscdn.net/mfile_outsrc/js/common/common.js?202105041500"></script>
<script type="text/javascript" src="//static.msscdn.net/mfile_outsrc/js/vendor/jquery.easing.js?20160201"></script>
<!--// 스토어, 매거진 공통 스크립트 -->






<script type="text/javascript" src="//static.msscdn.net/skin/musinsa/js/jslib.js?20200601"></script>
<script type="text/javascript" src="//static.msscdn.net/skin/musinsa/js/jquery.bxslider.js?20180503"></script>

   





    
		
		
		
	</head>
	<body>
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-MXCZ8KD"

height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>

<!-- End Google Tag Manager (noscript) -->








<script type="text/javascript">
$(window).load(function() {
	//pc 전체 메뉴
	var $nav_exp = $('.nav').clone();
	var nav_clone = $('.nav_clone');
	nav_clone.append($nav_exp);

	$("#nav .hv").mouseenter(function(){
		$(".nav_clone").show();
		if (!$("#nav_wrap").hasClass('fixed') )
		{
			$(".navBody_bg").show();
		}
		
	});
	$(".nav_clone").mouseleave(function(){
		$(".nav_clone, .navBody_bg").hide();
	});

	var navLength = $(".nav_body .nav > li").length;
	var liWidth = new Array;
	for (var i = 0; i < navLength; i++) {
		var k = i + 1;
		liWidth[i] = $(".nav_body .nav > li").eq(i).width();
		var padWdith = liWidth[i] + 50;
		$(".nav_clone .nav > li").eq(i).css({"width": padWdith+'px'});
	}
});


$(window).bind( 'scroll', function(){
	var srlTop  = $( this ).scrollTop();
	var trigTop = $('#fixTrigger').offset().top;
  if( srlTop > trigTop ) {
		$('#nav_wrap').addClass('fixed');
	}else{
		$('#nav_wrap').removeClass('fixed');
	}


});


</script>

		
			

				<!-- 와인 상단 -->
			
				
					<header id="header" class="alt">
					<div class="site_conts_wd">




<div class="wineDetail" >



		<div class="summGroup" >
		<div class="itemThumb" >

			<div class="wine_swiper">
				<ul class="swiper-wrapper">
											<li class="swiper-slide"><img src="../liquorstore_master/images/${wineProductBean.wine_img }" alt="" /></li><!-- #1 -->
					

					<li class="swiper-slide"><img src="../liquorstore_master/images/${wineProductBean.wine_img }" alt="" /></li><!-- #2 -->															
				</ul>
		</div>
		
		<div class="sugar" style="text-align:center; 
		border: 10px solid #cccccc; ">

			<br>
				<dl>
				
					<dd>
						<span style="font-weight:800; font-family:'Noto Sans Korean';">당도<!-- #3 --></span>
						
						<span class="sname">드라이</span>
						<ul>
						<c:choose>
						<c:when test="${wineProductBean.wine_sweet eq 'SWEET1'}">
													<li><span class="on">1</span></li>
													<li><span >2</span></li>
													<li><span >3</span></li>
													<li><span >4</span></li>
													<li><span >5</span></li>
						</c:when>
						<c:when test="${wineProductBean.wine_sweet eq 'SWEET2' }">
													<li><span >1</span></li>
													<li><span class="on">2</span></li>
													<li><span >3</span></li>
													<li><span >4</span></li>
													<li><span >5</span></li>
						</c:when>
						<c:when test="${wineProductBean.wine_sweet eq 'SWEET3' }">
													<li><span >1</span></li>
													<li><span >2</span></li>
													<li><span class="on">3</span></li>
													<li><span >4</span></li>
													<li><span >5</span></li>
						</c:when>
						<c:when test="${wineProductBean.wine_sweet eq 'SWEET4' }">
													<li><span >1</span></li>
													<li><span >2</span></li>
													<li><span >3</span></li>
													<li><span class="on">4</span></li>
													<li><span >5</span></li>
						</c:when>
						<c:when test="${wineProductBean.wine_sweet eq 'SWEET5' }">
													<li><span >1</span></li>
													<li><span >2</span></li>
													<li><span >3</span></li>
													<li><span >4</span></li>
													<li><span class="on">5</span></li>
						</c:when>
						</c:choose>
						</ul>
						<span class="sname">스위트</span>
					</dd>
					<dd>
						<span style="font-weight:800; font-family:'Noto Sans Korean';">산도<!-- #4 --></span>
						<span class="sname">낮음</span>
						<ul>
						<c:choose>
						<c:when test="${wineProductBean.wine_acidity eq 'ACIDITY1'}">
													<li><span class="on">1</span></li>
													<li><span >2</span></li>
													<li><span >3</span></li>
													<li><span >4</span></li>
													<li><span >5</span></li>
						</c:when>
						<c:when test="${wineProductBean.wine_acidity eq 'ACIDITY2' }">
													<li><span >1</span></li>
													<li><span class="on">2</span></li>
													<li><span >3</span></li>
													<li><span >4</span></li>
													<li><span >5</span></li>
						</c:when>
						<c:when test="${wineProductBean.wine_acidity eq 'ACIDITY3' }">
													<li><span >1</span></li>
													<li><span >2</span></li>
													<li><span class="on">3</span></li>
													<li><span >4</span></li>
													<li><span >5</span></li>
						</c:when>
						<c:when test="${wineProductBean.wine_acidity eq 'ACIDITY4' }">
													<li><span >1</span></li>
													<li><span >2</span></li>
													<li><span >3</span></li>
													<li><span class="on">4</span></li>
													<li><span >5</span></li>
						</c:when>
						<c:when test="${wineProductBean.wine_acidity eq 'ACIDITY5' }">
													<li><span >1</span></li>
													<li><span >2</span></li>
													<li><span >3</span></li>
													<li><span >4</span></li>
													<li><span class="on">5</span></li>
						</c:when>
						</c:choose>
						</ul>
						<span class="sname">높음</span>
					</dd>
					<dd>
						<span style="font-weight:800; font-family:'Noto Sans Korean';">바디<!-- #5 --></span>
						<span class="sname">가벼움</span>
						<ul>
													<c:choose>
						<c:when test="${wineProductBean.wine_body eq 'BODY1'}">
													<li><span class="on">1</span></li>
													<li><span >2</span></li>
													<li><span >3</span></li>
													<li><span >4</span></li>
													<li><span >5</span></li>
						</c:when>
						<c:when test="${wineProductBean.wine_body eq 'BODY2' }">
													<li><span >1</span></li>
													<li><span class="on">2</span></li>
													<li><span >3</span></li>
													<li><span >4</span></li>
													<li><span >5</span></li>
						</c:when>
						<c:when test="${wineProductBean.wine_body eq 'BODY3' }">
													<li><span >1</span></li>
													<li><span >2</span></li>
													<li><span class="on">3</span></li>
													<li><span >4</span></li>
													<li><span >5</span></li>
						</c:when>
						<c:when test="${wineProductBean.wine_body eq 'BODY4' }">
													<li><span >1</span></li>
													<li><span >2</span></li>
													<li><span >3</span></li>
													<li><span class="on">4</span></li>
													<li><span >5</span></li>
						</c:when>
						<c:when test="${wineProductBean.wine_body eq 'BODY5' }">
													<li><span >1</span></li>
													<li><span >2</span></li>
													<li><span >3</span></li>
													<li><span >4</span></li>
													<li><span class="on">5</span></li>
						</c:when>
						</c:choose>
												</ul>
						<span class="sname">무거움</span>
					</dd>
				</dl>
			</div>
	
		
		</div>

<script type="text/javascript">

let wine_swiper = {};
let mg_swp_child = document.querySelectorAll('.wine_swiper .swiper-slide').length;

if ( mg_swp_child >= 2 ) {
	var swiper_mg = new Swiper('.wine_swiper', {
		autoplay: {
			delay: 1000000,
		},
		loop: true,
		pagination: {
			el: '.wine_swiper .swiper-pagination',
			clickable: true
		},
	});
} else {
	wine_swiper = {
		init: false
	}

	var swiper_mg = new Swiper('.msld', wine_swiper);
}
</script>



		<div class="itemInfo" style="padding: 0 0 0 250px; ">


			<div class="wt1">${wineProductBean.wine_type }&nbsp;<!-- #6 --></div>
			<h1 class="wt" style="text-align:left;">${wineProductBean.wine_name}<!-- #7 --></h1>
			<br>
			<div class="wt2"></div>
			<h1 style="text-align:right;">${wineProductBean.wine_price}&#8361;<!-- #8 --></h1>

			<div class="wineDb first" style="padding:0;">
				<div class="sugar" style="width:100%;    padding:0;">
			
			</div>
				<ul style="list-style: none;">
					<li><span class="dbt">타입</span><div class="dbDetail">${wineProductBean.wine_type}<!-- #9 --></div></li>
					<li><span class="dbt">원산지</span>
						<div class="dbDetail">${wineProductBean.wine_nation}&nbsp; ${wineProductBean.wine_local } <!-- #11 --></div>
					</li>
					<li><span class="dbt">와이너리</span><div class="dbDetail">${wineProductBean.wine_producer}<!-- #12 --></div></li>
					<li><span class="dbt">포도품종</span><div class="dbDetail">${wineProductBean.wine_variety}<!-- #13 --></div></li>
					<li><span class="dbt">용량</span><div class="dbDetail">${wineProductBean.wine_ml}<!-- #14 --></div></li>
					<li><span class="dbt">음식궁합</span><div class="dbDetail">스테이크, 라구 소스를 곁들인 파스타,  숯불갈비<!-- #16 --></div></li>
				</ul>
			</div>

		<div class="sugar" style="width:100%;   padding:0;">
			
			</div>

			

				<div class="btnWine" >
						<button onclick="location.href='${root}product/cart_pro?wine_idx=${wineProductBean.wine_idx }'" class="btn_add_wish btnWineStyle gray">장바구니추가<!-- #17 --></button>
                        <button onclick="location.href='${root}product/cart'" class="btn_add_order btnWineStyle">장바구니<!-- #18 --></button>
                        <button onclick="location.href='${root}product/product'" class="btn_add_order btnWineStyle">목록으로<!-- #19 --></button>
                </div>					
			</div>
		</div>
	</div>
			</div>
			
			
			
					</header>

 <div class="wine1 background_content">
                <h1><br>
                </h1>
             </div>
				<!-- Nav -->
					<nav id="nav" style="position:center; width:100%; ">
						<ul>
							<li><a href="#intro" class="active">상품 정보</a></li>
						
							<li><a href="#second">결제 관련</a></li>
							<li><a href="#cta">반품/교환 정보</a></li>
						</ul>
					</nav>

				<!-- Main -->
					<div id="main">

						<!-- 상품 정보 -->
							<section id="intro" class="main">
							
							<div class="bground" style="font-size:40px; font-family:'Noto Sans Korean'; ">
							<br>
							<br>
							<br>
							 <div class="cs-info-tit" style="font-size: 24px;
    font-weight: bold;">
            <div style="margin-bottom: 16px;"><span class="txt-info">와인이지의 모든제품</span>은 정품으로 안심하시고 구매하셔도 됩니다.</div>
            
        </div>
							<br>
							<br>
							<br>
							<br>
							
								<span style="font-size:50px; color:#610B0B; font-weight:700; ">다크체리, 블랙베리류<!-- #21 --></span>의 진한 과실 향의 풍부함<!-- #22 -->
								<br>
								<br>
							
								
							</div>
								<div class="spotlight">
								
								<span class="image"><img src="../productinfo/images/red01.jpeg" width="600" height="400"  alt=""/></span><!-- #23 -->
				
								
									<div class="content">
									
										<header class="major">
											<h2>테이스팅</h2>
										</header>
										
										
										<p>다크체리, 블랙베리류의 진한 과실 향이 풍부하고 섬세한 바닐라 노트와 코코아, 다크 초콜릿, 스위트 타바코 등의 복합적인 맛, 부드러운 탄닌감, 완벽한 균형미를 자랑하며 입 안에 오래 남아 긴 여운을 선사합니다.</p>
										<!-- #24 -->
										
										
										
										</div>
										</div>
										
										<div class="bground" style="font-size:30px; font-family:'Noto Sans Korean'; ">
							<br>
							<br>
						
							
							
								<span style="font-size:40px; color:#2E2E2E; font-weight:600; margin-left:10px;">100% 프렌치 오크(French Oak)<!-- #25 --></span>에서 10개월동안 숙성하였습니다.<!-- #25 -->
								<br>
								<br>
								<img src="../productinfo/images/oak01.jpg" style="width:1000px; margin-left:10px; margin-right:10px;"><!-- #26 -->
								<br>
								<br>
								<br>
								<br>
								<br>
								
							</div>
										
										
								
							
	
									
									
							

						<!-- 핸들링 -->
						<div class="content" style="border:20px solid #F2F2F2; border-bottom: 150px solid #F2F2F2;
		border-radius: 4px;">
								<header class="major" style="margin-top:3em;">
									<h2>핸들링</h2>
								</header>
								<ul class="features" >
									<li style="text-align:center;">
										<span class="icon solid major style1 fa-code" style="width: 250px;
  height: 250px;
  object-fit: cover;
		
			 background: url('../productinfo/images/handling/style01.jpg');"></span>
										<h3 style="font-weight: 1000;">적정온도</h3>
										<p style="font-size:35px; color:#A4A4A4;">18-20°C<!-- #27 --></p>
									</li>
									<li style="text-align:center;">
										<span class="icon major style2 fa-copy" style="width: 250px;
  height: 250px;
  object-fit: cover;
		
			 background: url('../productinfo/images/handling/style02.png');"></span>
										<h3 style="font-weight: 1000;">와인잔</h3>
										<p style="font-size:35px; color:#A4A4A4;">아로마 콜렉터<!-- #28 --></p>
									</li>
									<li style="text-align:center;">
										<span class="icon major style3 fa-gem" style="width: 250px;
  height: 250px;
  object-fit: cover;
		
			 background: url('../productinfo/images/handling/style03.jpg');"></span>
										<h3 style="font-weight: 1000;">디캔팅</h3>
										<p style="font-size:35px; color:#A4A4A4;">30분<!-- #29 --></p>
									</li>
									<li style="text-align:center;">
										<span class="icon major style4 fa-gem" style="width: 250px;
  height: 250px;
  object-fit: cover;
		
			 background: url('../productinfo/images/handling/style04.jpg');"></span>
										<h3 style="font-weight: 1000;">적정시기</h3>
										<p style="font-size:35px; color:#A4A4A4;">2021-2025<!-- #30 --></p>
									</li>
								</ul>
								<header class="major">
											<h2></h2>
										</header>
								</div>
								
								
									<div class="content" style="border:20px solid #F2F2F2; border-bottom: 150px solid #F2F2F2;
		border-radius: 4px; text-align:center;">
								<header class="major" style="margin-top:4em; margin: 0.7em 0 0.5em 0;">
 
 
 										<!-- 페어링 -->
									<h2>페어링</h2>
								</header>
											
										<span class="image" ><img src="../productinfo/images/pair/steak01.jpg" alt="" /></span><!-- #31 -->
										<span class="image" ><img src="../productinfo/images/pair/ragu01.jpg" alt="" /></span><!-- #32 -->
										
										<br>
										<header class="major">
											<h2></h2>
										</header>
										</div>
										
										<div class="content" style="border:20px solid #F2F2F2; border-bottom: 150px solid #F2F2F2;
		border-radius: 4px; text-align:center;">
								</div>
							</section>
						<!-- 리뷰 -->
						
						<header class="major">
											<h3></h3>
										</header>

    <script>
  var Ridi = Ridi || {};
  Ridi.Auth = false;
  Ridi.Platform = 'pc';
  Ridi.globals = {
    isLoggedIn: false,
    userId: '',
    userIdx: undefined,
    userEmail: '',
    ruid: 'e2d8c170-ruid-41e4-9cb7-bab3a51d6f44',
    isPc: true,
    isTablet: false,
    isMobile: false,
    isAndroid: false,
    isIos: false,
    isPaper: false,
    isPaperPro: false,
    isRidiApp: false,
    ridiAppTheme: '',
    ridiAppVersion: null,
    isNotUseNotificationCenter: false,     apiUrl: 'https://api.ridibooks.com',
    notificationApiUrl: 'https://notification-api.ridibooks.com/notification',
    apiToken: '',
    sslHostLink: 'https://ridibooks.com',
    staticUrl: 'https://static.ridicdn.net',
    miscUrl: '//img.ridicdn.net',
    welcomeMessage: '',
    readingDataApiBaseUrl: 'https://reading-data-api.ridibooks.com',
    bookApiUrl: 'https://book-api.ridibooks.com',
    accountApiUrl: 'https://account.ridibooks.com',
    oauth2_client_id: 'ePgbKKRyPvdAFzTvFg2DvrS7GenfstHdkQ2uvFNd',
    webViewerUrl: '//view.ridibooks.com/books/',
    isHomeRenewal: 'false',
    recommendApiV2Url: 'https://recommend-api-v2.ridibooks.com'
  };
</script>
						
  <script src="https://static.ridicdn.net/books/dist/polyfill.min.js?20211014145628"></script>
  <script src="https://static.ridicdn.net/books/dist/vendors.webpack.min.js?20211014150230"></script>
  <script src="https://static.ridicdn.net/books/dist/vendors.common.min.js?20211014150230"></script>
  <script src="https://static.ridicdn.net/books/dist/vendors.common2.min.js?20211014150230"></script>
  <script src="https://static.ridicdn.net/books/dist/vendors.pc.min.js?20211014150230"></script>
  <script src="https://static.ridicdn.net/store/dist/manifest.min.js?20211014150103"></script>
  <script src="https://static.ridicdn.net/store/dist/common.min.js?20211014150103"></script>
  <script src="https://static.ridicdn.net/store/dist/vendor.min.js?20211014150103"></script>
  <script src="https://static.ridicdn.net/books/dist/rui.min.js?20211014145445"></script>
  <script src="https://static.ridicdn.net/books/dist/ridi.common.min.js?20211014150230"></script>
  <script src="https://static.ridicdn.net/books/dist/ridi.common2.min.js?20211014150230"></script>
  <script src="https://static.ridicdn.net/books/dist/ridi.pc.min.js?20211014150230"></script>
						
						
						
						



						<!-- 결제 관련 -->
							<section id="second" class="main special" style="border-bottom:3px solid #F2F2F2;" ">
							
							 
             
							
						<div class="cs-info-tit">
            <div><span class="txt-info">와인이지의 모든제품</span>은 정품으로 안심하시고 구매하셔도 됩니다.</div>
            <p>구매를 결정하시기 전 교환 및 환불 규정을 꼭 숙지하신 후 구매하시기 바랍니다.</p>
        </div>	
                           
            <div class="cs-info-block">
                <div class="block-tit"><strong>결제</strong>관련<span>각 상품은 현금, 카드 결제가 가능합니다. </span></div>
                <div class="cs-cont">
                    <div class="cont-label">카드결제</div>
                    <div class="cont-info"><strong>전체 카드사 사용가능</strong> (일부 카드사 무이자 할부)</div>
                </div>
                <div class="cs-cont">
                    <div class="cont-label">가상계좌<br />(무통장 입금)</div>
                    <div class="cont-info">주문 시마다 새로운 계좌번호를 발급하는 방식으로 해당 계좌에 입금 즉시 입금확인이 되는 방식 입니다.<br />단, 1원 단위까지 정확히 입금하셔야만 입금이 정상적으로 처리됩니다.</div>
                </div>
               
                <div class="cs-cont">
                    <div class="cont-label">해외카드결제</div>
                    <div class="cont-info">대한민국 외에서 발급 된 해외 카드로도 결제가 가능합니다.<br />(VISA, MasterCard, JCB, 은련)</div>
                </div>
            </div>
            
            
            <div class="cs-info-block dlv-info-block">
                <div class="block-tit"><strong>배송</strong>관련</div>
	              <div class="cs-cont">
		              <div class="cont-label cont-tit">택배배송</div>
                  <div class="cont-info">
                    <ul>
                                            <li>1. 와인이지는 <strong>전 제품 100% 무료배송</strong>입니다.</li>
                        <li>2. 브랜드 및 제품에 따라 입점 업체(브랜드) 배송과 와인이지 자체 배송으로 나뉩니다.</li>
                        <li>3. 결제확인 후 <strong>1~3일 정도 소요</strong>됩니다. (예약상품, 해외배송 상품은 배송기간이 다를 수 있습니다.)</li>
                                    </ul>
                  </div>
                </div>
                            </div>
					


							</section>

						<!-- 반품/교환 관련 -->
							<section id="cta" class="main special" >
							
								
								<div class="cs-info-block">
                <div class="block-tit"><strong>교환/환불</strong></div>
                <div class="cs-cont">
	                  <div class="cont-tit"></div>
	                  	                      <div class="cont-label"><strong>자동회수 택배사</strong></div>
	                      <div class="cont-info">OO택배</div>
	                  	                  <div class="cont-label"><strong>배송비</strong></div>
                    <div class="cont-info">왕복 5,000원 (교환/환불 요청 상품의 수량에 따라서 상이, 구매자 책임 사유일 경우에만 발생)</div>
	                  <div class="cont-label"><strong>보내실 곳</strong></div>
	                  <div class="cont-info">
	                      17384&nbsp;경기도 OO시 아울렛로 00-00&nbsp;OOOO
	                     
	                  </div>
	                  <div class="cont-label">교환/환불 시<br>주의 사항</div>
	                  <div class="cont-info">
	                      <ul class="n-info-txt">
	                          <li>상품 수령 후 7일 이내 교환/환불을 요청해야 합니다.</li>
	                          <li>동일 업체일 경우라도 상품별로 반품비용이 상이하게 발생할 수 있습니다.</li>
	                          <li>교환/환불 시 반품비용은 선결제함으로 동봉하지 마시고, 동봉하여 발송하신 경우 확인 후 반품비 환불 처리됩니다.</li>
	                          <li>자동회수 접수 시 영업일 기준 2~3일 내에 택배기사님 연락 후 방문하여 회수 진행됩니다.</li>
	                          <li>자동회수 미지원 업체 및 직접발송의 경우 수령하신 택배사로 착불(신용)로 반품 접수하여 발송 부탁드리겠습니다.</li>
                            <li>수령하신 택배사가 아닌 다른 택배사로 발송하시는 경우(신규 택배 접수 포함) 추가 비용이 발생 할 수 있습니다.</li>
	                          <li>반품 주소지는 브랜드(업체)마다 다르므로 확인 후 각각 보내셔야 합니다.</li>
                            <li>상품의 내용이 표시, 광고 내용과 다르거나 계약 내용이 다를 경우 상품을 공급받은 날부터 3개월 이내,<br> 그 사실을 안 날 또는 알 수 있었던 날부터 30일 내 청약 철회를 할 수 있습니다.</li>
                            <li>상품을 반환받은 날로부터 영업일 기준 3일 내 지급받은 대금을 환급합니다.</li>
                            <li>미성년자가 체결한 계약은 법정대리인이 동의하지 않는 경우 본인 또는 법정대리인이 취소할 수 있습니다.</li>
                            <li>도서산간 지역의 경우 결제하신 기본 교환/환불 배송비 외에 편도 기준 최대 8천원(왕복 기준 최대 16천원)까지 <br>추가 비용이 발생할 수 있습니다. 택배사, 판매업체, 지역별로 도서산간 발생 금액이 상이해 구매 시점에서는 정확한 금액 안내가 어렵습니다.</li>
	                      </ul>
	                  </div>
	                  <div class="cont-label">교환/환불이<br>불가능한 경우</div>
	                  <div class="cont-info">
	                      <ul class="n-info-txt">
	                          <li>사용 흔적이 있거나 훼손, 오염된 경우</li>
	                          <li>상품의 택(Tag)을 분실, 훼손한 경우</li>
	                          <li>사은품을 사용, 분실한 경우</li>
	                          <li>신발 박스가 없거나 훼손(테이핑)된 경우</li>
	                          <li>반품요청 기간(수령 후 7일 이내)이 초과된 경우</li>
	                          <li>맞춤 주문제작, 착용 상품인 경우</li>
                            <li>개봉 후 가치가 현저히 감소한 경우</li>
	                      </ul>
	                      
	                  </div>
                </div>
                            </div>
            <div class="cs-info-block">
                <div class="block-tit"><strong>고객센터</strong></div>
                <div class="cs-cont">
                    <div class="cont-label font-mss">0000-0000</div>
                    <div class="cont-info">
                        <div class="cs-connect">1번 배송 / 교환 / 환불관련<br>2번 결제 / 회원 관련</div>
                        <div>상품 문의 > 각 상품 Q&A 이용<br>평일 09:00~18:00 / 토,일,공휴일 휴무</div>
                    </div>
                </div>
            </div>
								
							
            <div class="right_contents">
            
            <div class="section_curating_detail">
             
                                    
                                <p class="txt_contents" style="text-align:center;">
                    저희 와인이지는 최고의 명품 와인부터 부담없는 데일리 와인까지
와인의 수입부터 도매, 소매, 그리고 교육과 외식부문까지 와인 관련사업에서의 전 부문을
아우르는 네트워크를 구축하여 보다 성숙하고 행복한 와인 문화를 향해 나아가고 있습니다.
                </p>
                <p class="box_img">
                                            <img src="../productinfo/images/qr/qr01.jpg" alt="">
                                            <img src="../productinfo/images/qr/qr02.jpg" alt="">
                                            <img src="../productinfo/images/qr/qr03.jpg" alt="">
                                            <img src="../productinfo/images/qr/qr04.jpg" alt="">
                                    </p>
            </div>
        </div>
 
							</section>

					
				
			<!-- 하단 -->
	



</div>

		<!-- Scripts -->
			<script src="../productinfo/assets/js/jquery.min.js"></script>
			<script src="../productinfo/assets/js/jquery.scrollex.min.js"></script>
			<script src="../productinfo/assets/js/jquery.scrolly.min.js"></script>
			<script src="../productinfo/assets/js/browser.min.js"></script>
			<script src="../productinfo/assets/js/breakpoints.min.js"></script>
			<script src="../productinfo/assets/js/util.js"></script>
			<script src="../productinfo/assets/js/main.js"></script>
			
			<script src="https://www.naracellar.com:443/js/add_neo.js"></script>

<script type="text/javascript" src="https://www.naracellar.com:443/js/jquery.rwdImageMaps.min.js"></script>
			
			 <script src="../productinfo/css2/js/jquery.min.js"></script>



    <script src="../productinfo/css2/js/popper.min.js"></script>

   

    <script src="css2/js/bootstrap.min.js"></script>
    
    
      <script type="text/javascript" src="css3/js/jquery-1.10.2.min.js"> </script>
        <script type="text/javascript" src="css3/js/bootstrap.min.js" ></script>
        <script type="text/javascript" src="css3/js/jquery-1.10.2.js"></script>     
        <script type="text/javascript" src="css3/js/jquery.mixitup.min.js" ></script>
        <script type="text/javascript" src="css3/js/main.js" ></script>
        <script src="//static.msscdn.net/skin/musinsa/js/gift_suggestion.js?202003171511"></script>
<script src="//static.msscdn.net/skin/musinsa/js/image_zoom.js?20160119"></script>

<script src="//static.msscdn.net/skin/musinsa/js/reviews.comments.js?20210720184000"></script>


        
			
		
  <script id="__NEXT_DATA__" type="application/json" nonce="">{"props":{"initialProps":{"pageProps":{"is_login":"false","pathname":"/books/"},"theme":"","stage":"","query":{"is_login":"false","pathname":"/books/"}},"initialState":{"books":{"items":{},"isAvailableSelect":{},"desc":{}},"categories":{"items":{}}}},"page":"/partials/gnb","query":{"is_login":"false","pathname":"/books/"},"buildId":"4Z_I-9ppfYCiQTQRCWOZ-","assetPrefix":"https://books.ridicdn.net","isFallback":false,"customServer":true,"gip":true,"appGip":true,"ids":[]}</script><script nonce="" nomodule="" src="https://books.ridicdn.net/_next/static/runtime/polyfills-0a77ede13633b1bb76af.js"></script><script async="" data-next-page="/partials/gnb" src="https://books.ridicdn.net/_next/static/4Z_I-9ppfYCiQTQRCWOZ-/pages/partials/gnb.js" nonce=""></script><script async="" data-next-page="/_app" src="https://books.ridicdn.net/_next/static/4Z_I-9ppfYCiQTQRCWOZ-/pages/_app.js" nonce=""></script><script src="https://books.ridicdn.net/_next/static/runtime/webpack-bc518a019c6923cc0550.js" nonce="" async=""></script><script src="https://books.ridicdn.net/_next/static/chunks/framework.5a6fd18fd7776ae00af7.js" nonce="" async=""></script><script src="https://books.ridicdn.net/_next/static/chunks/28d15158.de3b99af1f0bbbf2eb46.js" nonce="" async=""></script><script src="https://books.ridicdn.net/_next/static/chunks/8fc4b86d.5cd9acd47ffc8a428205.js" nonce="" async=""></script><script src="https://books.ridicdn.net/_next/static/chunks/32bd1e1c.c9ec05151a472a9ee847.js" nonce="" async=""></script><script src="https://books.ridicdn.net/_next/static/chunks/2f8d33e8.0c44e5b1595dca45886f.js" nonce="" async=""></script><script src="https://books.ridicdn.net/_next/static/chunks/af8940d5.42c46582cc137d1fe19b.js" nonce="" async=""></script><script src="https://books.ridicdn.net/_next/static/chunks/commons.0a0fa3ad468fd642729e.js" nonce="" async=""></script><script src="https://books.ridicdn.net/_next/static/chunks/a7c4d5bd4778deeaac88c6ef07ebe6bd59e4e2e1.205e19e71300c8a20489.js" nonce="" async=""></script><script src="https://books.ridicdn.net/_next/static/chunks/4554e542472f36b3e2cdf800be856f6022f1f5e6.806064afd307266f54cd.js" nonce="" async=""></script><script src="https://books.ridicdn.net/_next/static/chunks/e7200ed05daf705dcd93c5847f0bc737c3a2b9a3.9e4b9da89d176b25bf88.js" nonce="" async=""></script><script src="https://books.ridicdn.net/_next/static/chunks/7627fd2a5794ac2aafb1d04b7d5c4c5ba7d429a6.276ce6147a391094693d.js" nonce="" async=""></script><script src="https://books.ridicdn.net/_next/static/chunks/8ab979833f4dd9b8c7d096443cb88c74249c1e45.d822dc5b8a148dc895d8.js" nonce="" async=""></script><script src="https://books.ridicdn.net/_next/static/chunks/f183d1fe7f802c10c0ba6226fc91c4f87849a851.8aaac64e70ef75cce20c.js" nonce="" async=""></script><script src="https://books.ridicdn.net/_next/static/chunks/91b25e3842f92ce63430c1166a8e4d5e7926a3d6.c4a7425a595baaee997f.js" nonce="" async=""></script><script src="https://books.ridicdn.net/_next/static/runtime/main-7d7df9a3bf320c43362e.js" nonce="" async=""></script><script src="https://books.ridicdn.net/_next/static/4Z_I-9ppfYCiQTQRCWOZ-/_buildManifest.js" nonce="" async=""></script><script src="https://books.ridicdn.net/_next/static/4Z_I-9ppfYCiQTQRCWOZ-/_ssgManifest.js" nonce="" async=""></script>
</body>
</html>