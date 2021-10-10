<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var='root' value="${pageContext.request.contextPath }/"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>admin_login</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="../subscribe_bot/css/main.css" />
		<noscript><link rel="stylesheet" href="../subscribe_bot/css/noscript.css" /></noscript>
		<link rel="stylesheet" href="../subscribe_bot/css/scroll.css" />
</head>
<body>
<div align="center"><h3>admin_login</h3></div>
		<c:import url="/WEB-INF/views/include/top_menu.jsp" />
	<div align="center">
		<form:form action="${root }admin/admin_pro" modelAttribute="temploginAdminBean" method="post">
			<div class="form-group">
				<form:label path="admin_id">아이디</form:label>
				<form:input path="admin_id" class="form-control" />
			</div>
			<div class="form-group">
				<form:label path="admin_pw">비밀번호</form:label>
				<form:password path="admin_pw" class="form-control" />
			</div>
			<div class="form-group text-right">
				<form:button class="btn btn-primary">로그인</form:button>
			</div>
		</form:form>
	</div>

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