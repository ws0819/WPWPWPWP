<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath }/"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>admin_main</title>
</head>
<body>
<h3>admin_main</h3>
<a href="${root }notice/notice_write">공지사항 글쓰기</a><br />
<a href="${root }notice/notice_board_read">공지사항</a><br />
<a href="${root }faq/faq_write">FAQ 글쓰기</a><br />
<a href="${root }faq/faq_board">FAQ 글목록</a><br />

</body>
</html>