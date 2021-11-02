<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var='root' value="${pageContext.request.contextPath }/" />

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>MODIFY</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		
		<!-- MATERIAL DESIGN ICONIC FONT -->
		<link rel="stylesheet" href="fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">

		<!-- STYLE CSS -->
		<link rel="stylesheet" href="../user_mypage/css/style.css">
		<link rel="stylesheet" href="../assets/css/main.css" />
		
	</head>

	<body>
<c:import url="/WEB-INF/views/include/top_menu.jsp" />
<div class="bback">
		<div class="wrapper" style="background-image: url('../user_mypage/images/bg-registration-form-1.jpg');">
			<div class="inner">
				<div class="image-holder">
					<img src="../user_mypage/images/registration-form-1.jpg" alt="">
				</div>
				<form:form action="${root }user/modify_pro" method="post" modelAttribute="userModify">
					<form:hidden path="user_number"/>
					<h3>MODIFY</h3>
					<div class="form-wrapper">
					<h6>ID</h6><br />
					<form:input path="user_id" readonly="true" class="form-control"/>	
					</div>
					<div class="form-wrapper">
						<h6>Name</h6>
					<form:input path="user_name" readonly="true" class="form-control"/>
					</div>
					<div class="form-wrapper">
						
						<form:label path="user_pw">ModifyPW</form:label>
					<form:password path="user_pw" class="form-control"/>
					<form:errors path="user_pw" style='color:red'/>
					</div>
					<div class="form-wrapper">
						
						<form:label path="user_pw2">ModifyPW2</form:label>
					<form:password path="user_pw2" class="form-control"/>
					<form:errors path="user_pw2" style='color:red'/>
					</div>
					<div class="form-wrapper">
						<form:label path="user_tel">Tel</form:label>
					<form:input path="user_tel"  class="form-control"/>
					</div>
					<div>
					<form:label path="user_address">Address</form:label>
					<form:input path="user_address"  id="sample6_postcode" class="form-control"/>
					<form:label path="user_address2"/>
					<form:input path="user_address2"  id="sample6_address" class="form-control"/>
					<form:label path="user_address3"/>
					<form:input path="user_address3"  id="sample6_detailAddress" class="form-control"/>
					<form:label path="user_address4"/>
					<form:input path="user_address4"  id="sample6_extraAddress" class="form-control"/>
			
				
				
					</div>
					<div class="form-wrapper">
						<form:label path="user_email">Email</form:label>
					<form:input path="user_email" class="form-control"/>
					</div>
				
					<form:button>수정완료
						<i class="zmdi zmdi-arrow-right"></i>
					</form:button>
				</form:form>
			</div>
		</div>
		 <c:import url="/WEB-INF/views/include/bottom_info.jsp" />
	</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>