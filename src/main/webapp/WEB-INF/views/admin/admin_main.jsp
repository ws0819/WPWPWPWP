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
<a href="${root }notice/notice_modify">공지사항 글수정</a><br />
<a href="${root }notice/notice_delete">공지사항 글삭제</a>

</body>
</html>