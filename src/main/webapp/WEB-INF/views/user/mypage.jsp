<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var='root' value="${pageContext.request.contextPath }/" />

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>My Page</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		
		<!-- MATERIAL DESIGN ICONIC FONT -->
		<link rel="stylesheet" href="fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">

		<!-- STYLE CSS -->
		<link rel="stylesheet" href="../user_mypage/css/style.css">
		<link rel="stylesheet" href="../assets/css/main.css" />
		
	</head>

	<body>
<c:import url="/WEB-INF/views/include/top_menu.jsp" />
		<div class="wrapper" style="background-image: url('../user_mypage/images/bg-registration-form-1.jpg');">
			<div class="inner">
				<div class="image-holder">
					<img src="../user_mypage/images/registration-form-1.jpg" alt="">
				</div>
				<form:form action="${root }user/modify" method="get" modelAttribute="userMyPage">
					<form:hidden path="user_number"/>
					<h3>My Info</h3>
					<div class="form-group">
					<h6>ID</h6><br />
					<form:input path="user_id" readonly="true" class="form-control"/>
						
					</div>
					<div class="form-wrapper">
						<h6>Name</h6>
					<form:input path="user_name" readonly="true" class="form-control"/>
					</div>
					<div class="form-wrapper">
						<h6>Tel</h6>
					<form:input path="user_tel" readonly="true" class="form-control"/>
					</div>
					<div class="form-wrapper">
						<h6>Address</h6>
					<form:input path="user_address" readonly="true" class="form-control"/>
					</div>
					<div class="form-wrapper">
						<h6>email</h6>
					<form:input path="user_email" readonly="true" class="form-control"/>
					</div>
					<div class="form-wrapper">
						<h6>Grade</h6>
					<form:input path="user_id" readonly="true" class="form-control"/>
					</div>
					<form:button>정보수정
						<i class="zmdi zmdi-arrow-right"></i>
					</form:button>
				</form:form>
			</div>
		</div>
		 <c:import url="/WEB-INF/views/include/bottom_info.jsp" />
	</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>