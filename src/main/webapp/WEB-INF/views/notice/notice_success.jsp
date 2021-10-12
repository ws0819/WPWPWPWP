<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath }/"/>

<script>
	alert('공지사항이 성공적으로 올라갔습니다')
	location.href="${root}notice/notice_board_read"
</script>