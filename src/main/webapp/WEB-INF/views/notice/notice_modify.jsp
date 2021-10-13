<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var='root' value="${pageContext.request.contextPath }/"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>notice_modify</title>
</head>
<body>
<h3>notice_modify</h3>
<body>
	<div>
		<form:form action="${root }notice/notice_modify_pro" modelAttribute="noticeContentBean" method="post">
		<form:hidden path="notice_number"/>
			<div>
			<div>
				<form:label path="notice_date">작성날짜</form:label>
				<form:input path="notice_date" readmonly="disabled"/>
			</div>
				<form:label path="notice_title">제목</form:label>
				<form:input path="notice_title"/>
			</div>
			<div>
				<form:label path="notice_content">내용</form:label>
				<form:textarea path="notice_content" row="10" sytle="resize:none"/>
			</div>
			<div>
				<form:button>수정하기</form:button><br />
				<a href="${root }admin/admin_main"></a>
			</div>
		</form:form>
	</div>
</body>
</html>