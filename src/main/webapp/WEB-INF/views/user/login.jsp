<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <c:set var='root' value="${pageContext.request.contextPath }/" />

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
	          	<a href="#" class="px-2 py-2 mr-md-1 rounded"><span class="ion-logo-facebook mr-2"></span>Kakao</a>
	          	<a href="#" class="px-2 py-2 ml-md-1 rounded"><span class="ion-logo-twitter mr-2"></span>Google</a>
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


	</body>
</html>

