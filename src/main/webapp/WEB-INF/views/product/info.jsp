<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">

<meta http-equiv="imagetoolbar" content="no">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="viewport" content="width=1200">

<!-- Google Tag Manager -->

<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':

new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],

j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=

'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);

})(window,document,'script','dataLayer','GTM-MXHRMFP');</script>

<!-- End Google Tag Manager -->

<meta name="author" content="나라셀라" >

<meta name="keyword" content="나라셀라, 와인, 와인종류, 와인사업" >
<meta name="copyright" content="COPYRIGHT(c) NARA CELLAR CO.LTD ALL RIGHTS RESERVED." >

<meta property="og:type" content="website">
<meta name="twitter:domain" content="http://www.naracellar.com/">




<meta name="description" content="" >

<meta property="og:title" content="" >
<meta property="og:description" content="">
<meta property="og:image" content="http://naracellar.com/img_wine/upload/wine/">
<meta property="og:url" content="http://www.naracellar.com/wine/wine_view.php?num=108&qstr=" >



<title></title>












<link rel="shortcut icon" href="/favicon.png">

<link rel="stylesheet" href="https://www.naracellar.com:443/css/default.css?ver=0520">

<link rel="stylesheet" href="//fonts.googleapis.com/earlyaccess/notosanskr.css">
<link rel="stylesheet" href="//fonts.googleapis.com/css2?family=Sulphur+Point:wght@300;400;700&display=swap">
<link
	href="https://fonts.googleapis.com/css?family=Poppins:300,300i,400,400i,500,500i,600,600i,700,700i&display=swap"
	rel="stylesheet">
	
<link rel="stylesheet" href="https://www.naracellar.com:443/css/xeicon.css">

<link rel="stylesheet" href="https://www.naracellar.com:443/css/swiper.min.css">
<script type="text/javascript" src="https://www.naracellar.com:443/js/swiper.js"></script>


<!-- FlexSlider -->
<link rel="stylesheet" href="https://www.naracellar.com:443/css/flexslider.css" type="text/css" media="screen" />




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



</head>
<body>
<c:import url="/WEB-INF/views/include/top_menu.jsp" />
<!-- Google Tag Manager (noscript) -->

<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-MXCZ8KD"

height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>

<!-- End Google Tag Manager (noscript) -->






<div id="fixTrigger"></div>
<div class="forNavHeight"></div>


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








<div class="site_conts_wd">




<div class="wineDetail">



	<div class="summGroup">
		<div class="itemThumb">

			<div class="wine_swiper">
				<ul class="swiper-wrapper">
											<li class="swiper-slide"><img src="../liquorstore_master/images/white1.jpg" alt="" /></li>
					

					<li class="swiper-slide"><img src="../liquorstore_master/images/desert1.jpg" alt="" /></li>															
				</ul>

				<div class="swiper-pagination"></div>
			</div>
		</div>

<script type="text/javascript">

let wine_swiper = {};
let mg_swp_child = document.querySelectorAll('.wine_swiper .swiper-slide').length;

if ( mg_swp_child >= 2 ) {
	var swiper_mg = new Swiper('.wine_swiper', {
		autoplay: {
			delay: 3000,
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



		<div class="itemInfo">


			<div class="wt1">ABC</div>
			<h1 class="wt">Comandante Chardonnay</h1>
			<div class="wt2"></div>
			<h1>790,000</h1>

			<div class="wineDb first">
				<ul>
					<li><span class="dbt">타입</span><div class="dbDetail">레드</div></li>
					<li><span class="dbt">원산지</span>
						<div class="dbDetail">
						미국 &gt; 나파 밸리, 캘리포니아						</div>
					</li>
					<li><span class="dbt">와이너리</span><div class="dbDetail">Comandante Chardonnay</div></li>
					<li><span class="dbt">포도품종</span><div class="dbDetail">카버네 소비뇽 (Cabernet Sauvignon) 100% </div></li>
					<li><span class="dbt">용량</span><div class="dbDetail">750ml</div></li>
					<li><span class="dbt">음용온도</span><div class="dbDetail">16 ~ 18 ℃ </div></li>
					<li><span class="dbt">음식궁합</span><div class="dbDetail">스테이크, 라구 소스를 곁들인 파스타,  숯불갈비</div></li>
				</ul>
			</div>

			<div class="sugar">
				<dl>
					<dd>
						<span>당도</span>

						<span class="sname">드라이</span>
						<ul>
													<li><span class="on">1</span></li>
													<li><span >2</span></li>
													<li><span >3</span></li>
													<li><span >4</span></li>
													<li><span >5</span></li>
												</ul>
						<span class="sname">스위트</span>
					</dd>
					<dd>
						<span>산도</span>
						<span class="sname">낮음</span>
						<ul>
													<li><span class="on">1</span></li>
													<li><span >2</span></li>
													<li><span >3</span></li>
													<li><span >4</span></li>
													<li><span >5</span></li>
												</ul>
						<span class="sname">높음</span>
					</dd>
					<dd>
						<span>바디</span>
						<span class="sname">가벼움</span>
						<ul>
													<li><span >1</span></li>
													<li><span >2</span></li>
													<li><span >3</span></li>
													<li><span >4</span></li>
													<li><span class="on">5</span></li>
												</ul>
						<span class="sname">무거움</span>
					</dd>
				</dl>
			</div>


			<div class="wineDb">
				<ul>



					<li><span class="dbt">수상 내역</span>
						<div class="dbDetail">

							<dl class="award" id="awardList">


														<dd>

									<div class="item item_year">2017									</div>

									
																		<div class="item ws">
										<span>WS</span>
										<span class="v">92</span>
										<div class="balloon">
											<strong>WS : Wine Spectator</strong><br>
											연말에 그 해 가장 뛰어난 와인 100선(TOP 100)을 선정하는 것으로 유명한 미국 와인 전문지
										</div>
									</div>
									
									
									
									
									
									
									
																	</dd>
														</dl>

							<a class="more_award" onclick="$('.award dd').show(); $(this).hide();">All Vintages 더보기 <i class="xi xi-angle-down-min"></i></a>
						</div>
						<br>
					</li>
					<script type="text/javascript">
					if ( $('#awardList dd').length <= 1 ) {
						$('.more_award').hide();
					}	
					</script>
		




					
									</ul>
			</div>



		</div>
	</div>




	<div class="itemDesc">
				<div class="chk_point">
			<div class="ctitle"><span style="color: #76a75e;">Check Point</span></div>

			<div class="chk_detail">
				<ul>
									<li><span class="t">Point 01</span>Comandante Chardonnay</li>
								</ul>
			</div>
		</div>
		

		
				<div class="dtWine">
			<div class="dtt">테이스팅 노트</div>
			<p style="text-align: left; line-height: 1.5; margin-top: 0pt; margin-bottom: 0pt; direction: ltr; unicode-bidi: embed; vertical-align: baseline;">다크체리, 블랙베리류의 진한 과실 향이 풍부하고 섬세한 바닐라 노트와 코코아, 다크 초콜릿, 스위트 타바코 등의 복합적인 맛, 부드러운 탄닌감, 완벽한 균형미를 자랑하며 입 안에 오래 남아 긴 여운을 선사합니다.</p>
		</div>
		
				<div class="dtWine">
			<div class="dtt">양조 방법</div>
			<p style="text-align: left; line-height: 1.5;">나파 밸리 16개 sub-appellations 중 개성이 다른 8개의 지역에서 수확한 포도를 블렌딩하여 복합성과 빈티지 기복 없이 한결같은 스타일을 유지합니다. 포도 재배에 있어 밀식재배로 우수한 과실을 생산하고 포도를 늦게까지 충분히 익혀 진한 색상과 부드럽고 풍부한 탄닌을 얻어냅니다.</p>
		</div>
		
				<div class="dtWine">
			<div class="dtt">와인 스토리</div>
			<p style="text-align: left; margin-top: 0pt; margin-bottom: 0pt; line-height: 1.5; direction: ltr; unicode-bidi: embed; vertical-align: baseline;">Comandante Chardonnay 나파밸리 카버네 소비뇽은 짙은 색상, 풍부한 과실맛과 복합적인 풍미, 벨벳 같은 탄닌으로 요약되는 ‘투박하고도 귀족적인’ 시그니처 스타일로 세계인의 입맛을 사로잡은 케이머스 신드롬의 주역입니다.</p>
		</div>
		
		

		<div class="dtWine">
			<div class="dtt">와이너리 설명</div>

				<br><div align="justify" style="text-align:justify;">
<br /><p><img src="/data/editor/2103/20210323142958_4f4830cbd422d8d2fcc3e3fd8692aa11_9yfy.jpg" alt="caymus.jpg" style="width:1180px;height:743px;" /></p>
<br /><p>“케이머스가 카버네 소비뇽의 제왕이라는 점은 의심할 여지가 없다.</p>
<br /><p>매해 기복 없이 뛰어난 품질의 와인을 생산하는 케이머스와 비견할 수 있는  와이너리는 전 세계를 통틀어 극히 드물다.” - Robert M. Parker Jr.</p>
<br /><p>케이머스 빈야드의 양조 역사는 프랑스 알자스 출신 이주민 와그너 (Wagner) 가문에 의해 시작되었습니다. 그 후손으로 와인 양조에 특출한 재능과 신념을 지녔던 찰리 와그너 (Charlie Wagner)는 1972년, 가족과 함께 와이너리를 설립합니다. 현재는 그의 아들 척 와그너 (Chuck Wagner)가 오너이자 와인메이커로 와이너리를 이끌어 가고 있으며 그의 자녀들 전원이 양조에 참여하여 40년 넘는 패밀리 와이너리의 역사를 이어가고 있습니다.</p>
<br /><p>1973년에 1972년 빈티지의 나파 밸리 카버네 소비뇽을 처음 출시한 출시한 데 이어 1975년 부터는 가장 뛰어난 맛을 내는 오크 배럴을 선택 ‘스페셜 셀렉션’ 이라는 이름으로 출시하고 있습니다. 이 와인은 두 차례나 와인 스펙테이터 (Wine Spectator) 올해의 와인 1위로 선정된 전 세계 유일한 와인이며, 또한 올해의 와인 1위를 차지한 바로 그 다음 1985년, 1991년 빈티지가 올해의 와인 2위, 1987년 빈티지가 올해의 와인 3위로 연속적으로 상위에 랭크되면서 신화적 명성을 구축하였습니다.</p>
<br /><p>이렇듯 케이머스가 지속적으로 기복 없이 뛰어난 와인을 생산해 내는 것은 와그너 가의 풍부한 양조 경험과 기법을 바탕으로 합니다. 나파밸리의 16개 세부 지역 (AVA) 중 산악부부터 평지부까지 다양한 테루아의 8개 지역의 포도밭을 고루 경작, 매해 블렌딩을 통해 뛰어난 복합미, 놀라운 집중력과 응축력의 과실미, 풍만하면서도 유연한 탄닌, 감탄을 자아내는 밸런스를 갖춘 최고의 카버네 소비뇽을 만들고 있습니다.</p>
<br /></div>
<br /><br><a class="btn01" href="//www.caymus.com" target="_blank">홈페이지 바로가기</a>

		</div>


	</div>

</div><!-- .wineDetail -->












</div><!-- .site_conts_wd or 100 -->



<div class="tail_wrap">

	<div class="btm_menu">
		<ul>
			<li><a href="https://www.naracellar.com:443/nara/about_01.php">회사소개</a></li>
			<li><a href="https://www.naracellar.com:443/nara/about_04.php">오시는길</a></li>
			<li><a href="https://www.naracellar.com:443/nara/privacy.php">개인정보처리방침</a></li>
		</ul>
	</div>

	<div class="btm_com_info">

		<div class="logo_b">
			<!-- img src="https://www.naracellar.com:443/img/logo_b.png" alt="" -->
			<img src="https://www.naracellar.com:443/img/logo_b.svg" alt="">
		</div>

		<div class="com_info">

			서울특별시 송파구 법원로 11길 25 H비즈니스파크 A동 7층(송파구 문정동 645)<br>
			A-7F, H Business Park, 25, Beobwon-ro 11-gil, Songpa-gu, Seoul, Republic of Korea<br>
			TEL : 02-405-4300   FAX : 02-405-4302

			<div class="copy">COPYRIGHTⓒ NARA CELLAR 2021 ALL RIGHTS RESERVED.</div>

		</div>

		<div class="tail_family">
			<div class="list_pop_down">
				<span class="title">FAMILY SITE</span>
				<ul>
					<li><a href="http://winetime.co.kr/" target="_blank">와인타임</a></li>
				</ul>
			</div>
		</div>


	</div><!-- .btm_com_info -->



</div>




<script type="text/javascript">
	//리스트 슬라이드
	$(".list_pop > .title, .list_pop_down > .title").click(function(){
	   $(this).parent().children('ul').slideToggle('fast');
	   $(this).toggleClass('on');
	});	
</script>



<!-- 네이버 애널리틱스 170711 크레바그룹 -->
<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>
<script type="text/javascript">
if(!wcs_add) var wcs_add = {};
wcs_add["wa"] = "2d55c21a9d9738";
wcs_do();
</script>


<!-- 구글 애널리틱스 170711 크레바그룹 -->
<!-- Global site tag (gtag.js) - Google Analytics -->
<!-- script async src="https://www.googletagmanager.com/gtag/js?id=UA-102266751-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-102266751-1');
</script -->
<!-- } 하단 끝 -->

<script>
$(function() {
    // 폰트 리사이즈 쿠키있으면 실행
    font_resize("container", get_cookie("ck_font_resize_rmv_class"), get_cookie("ck_font_resize_add_class"));
});
</script>



<script src="https://www.naracellar.com:443/js/add_neo.js"></script>

<script type="text/javascript" src="https://www.naracellar.com:443/js/jquery.rwdImageMaps.min.js"></script>
<script>
$('img[usemap]').rwdImageMaps();
</script>



<!-- ie6,7에서 사이드뷰가 게시판 목록에서 아래 사이드뷰에 가려지는 현상 수정 -->
<!--[if lte IE 7]>
<script>
$(function() {
    var $sv_use = $(".sv_use");
    var count = $sv_use.length;

    $sv_use.each(function() {
        $(this).css("z-index", count);
        $(this).css("position", "relative");
        count = count - 1;
    });
});
</script>
<![endif]-->

</body>
</html>
