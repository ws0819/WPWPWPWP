<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var='root' value="${pageContext.request.contextPath }/" />

<script>
	alert('이미 구독권이 장바구니에 있습니다')
	history.go(-1)
</script>