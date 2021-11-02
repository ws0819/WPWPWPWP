<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var='root' value="${pageContext.request.contextPath }/"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>notice_write</title>
</head>
<body>
<h3>notice_write</h3>
	<div>
		<form:form action="${root }notice/notice_write_pro" modelAttribute="noticeContentBean" method="post">
		<form:hidden path="notice_number"/>
			<div>
				<form:label path="notice_title">제목</form:label>
				<form:input path="notice_title"/>
			</div>
			<div>
				<form:label path="notice_content">내용</form:label>
				<form:textarea path="notice_content" row="50" sytle="resize:none"/>
			</div>
			<div>
				<form:button>작성하기</form:button>
			</div>
		</form:form>
	</div>
</body>
</html>