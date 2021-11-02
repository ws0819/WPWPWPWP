<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <c:set var='root' value="${pageContext.request.contextPath }/" />
<style>
.a:naverIdLogin_loginButton{
style=width:100%; display: block;
    
    background: #fff;}
    </style>
<!doctype html>
<html lang="en">
  <head>
  	<title>WINE EASY</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="../user_login/css/style.css">

	</head>
	<body class="img js-fullheight" style="background-image: url(../user_boot/css/image/w2.jpeg);">
	<c:if test="${fail==true}">
				<script>
				alert('아이디와 비밀번호를 확인해주세요')
				</script>
					</c:if>
		<form:form action="${root }user/login_pro" method="post" modelAttribute="tempLoginUserBean">
		<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section">WINE EASY LOGIN</h2>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-6 col-lg-4">
					<div class="login-wrap p-0">
		      	<h3 class="mb-4 text-center">품격있는 와인서비스</h3>
		      	<div class="signin-form">
		      		<div class="form-group">
		      	<form:input  path="user_id" class="form-control" placeholder="Username"/>
		      	<form:errors path="user_id" style="color:red; font-size:15px;"/>
		      		</div>
	            <div class="form-group">
	              <form:password id="password-field" path="user_pw" class="form-control" placeholder="Password"/>
	             <span toggle="#password-field" class="fa fa-fw fa-eye field-icon toggle-password"></span>
	            <form:errors path="user_pw" style="color:red; font-size:15px;"/>
	            </div>
	            <div class="form-group">
	            	<form:button  class="form-control btn btn-primary submit px-3">LOGIN</form:button>
	            </div>
	            <div class="form-group d-md-flex">
	            	 <div class="w-50">
		            	<label class="checkbox-wrap checkbox-primary">Remember Me
									  <input type="checkbox" checked>
									  <span class="checkmark"></span>
									</label>
								</div> 
								<div class="w-50 text-md-right">
									<a href="${root}user/join" style="color: #fff">회원가입</a>
								</div>
	            </div>
	       </div>
	          <p class="w-100 text-center">&mdash; Social Login &mdash;</p>
	          <div class="social d-flex text-center">
	          	<a href="javascript:void(0)" id="GgCustomLogin" class="px-2 py-2 mr-md-1 rounded"><span class="ion-logo-facebook mr-2"></span>Google</a>
	          	<a href="javascript:void(0)" id="naverIdLogin_loginButton" class="px-2 py-2 ml-md-1 rounded"><span class="ion-logo-twitter mr-2"></span>Naver</a>
	          </div>
		      </div>
				</div>
			</div>
		</div>
	</section>
</form:form>
	<script src="js/jquery.min.js"></script>
  <script src="js/popper.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/main.js"></script>
  
<head>
<!-- content에 자신의 OAuth2.0 클라이언트ID를 넣습니다. -->
<meta name ="google-signin-client_id" content="769899836589-o5pjvv5fcpmduio27rs2jd22lguudfpc.apps.googleusercontent.com">
</head>
<body>

<script>

//처음 실행하는 함수
function init() {
	gapi.load('auth2', function() {
		gapi.auth2.init();
		options = new gapi.auth2.SigninOptionsBuilder();
		options.setPrompt('select_account');
        // 추가는 Oauth 승인 권한 추가 후 띄어쓰기 기준으로 추가
		options.setScope('email profile openid https://www.googleapis.com/auth/user.birthday.read');
        // 인스턴스의 함수 호출 - element에 로그인 기능 추가
        // GgCustomLogin은 li태그안에 있는 ID, 위에 설정한 options와 아래 성공,실패시 실행하는 함수들
		gapi.auth2.getAuthInstance().attachClickHandler('GgCustomLogin', options, onSignIn, onSignInFailure);
	})
}

function onSignIn(googleUser) {
	var access_token = googleUser.getAuthResponse().access_token
	$.ajax({
    	// people api를 이용하여 프로필 및 생년월일에 대한 선택동의후 가져온다.
		url: 'https://people.googleapis.com/v1/people/me'
        // key에 자신의 API 키를 넣습니다.
		, data: {personFields:'birthdays', key:'AIzaSyDQVJ9EQOjDoLv-8qjUDiGJrTolrvrvjaQ', 'access_token': access_token}
		, method:'GET'
	})
	.done(function(e){
        //프로필을 가져온다.
		var profile = googleUser.getBasicProfile();
		console.log(profile)
	})
	.fail(function(e){
		console.log(e);
	})
}
function onSignInFailure(t){		
	console.log(t);
}
</script>

<script src="https://apis.google.com/js/platform.js?onload=init" async defer></script>


<!-- 네이버 스크립트 -->
<script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>

<script>

var naverLogin = new naver.LoginWithNaverId(
		{
			clientId: "8t2hpm4MyXGmfAPWZnBJ", //내 애플리케이션 정보에 cliendId를 입력해줍니다.
			callbackUrl: "http://localhost:9150/WineProject/main", // 내 애플리케이션 API설정의 Callback URL 을 입력해줍니다.
			isPopup: false,
			callbackHandle: true
		}
	);	

naverLogin.init();

window.addEventListener('load', function () {
	naverLogin.getLoginStatus(function (status) {
		if (status) {
			var email = naverLogin.user.getEmail(); // 필수로 설정할것을 받아와 아래처럼 조건문을 줍니다.
    		
			console.log(naverLogin.user); 
    		
            if( email == undefined || email == null) {
				alert("이메일은 필수정보입니다. 정보제공을 동의해주세요.");
				naverLogin.reprompt();
				return;
			}
		} else {
			console.log("callback 처리에 실패하였습니다.");
		}
	});
});


var testPopUp;
function openPopUp() {
    testPopUp= window.open("https://nid.naver.com/nidlogin.logout", "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,width=1,height=1");
}
function closePopUp(){
    testPopUp.close();
}

function naverLogout() {
	openPopUp();
	setTimeout(function() {
		closePopUp();
		}, 1000);
	
	
}
</script>

	</body>
</html>

