<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var='root' value="${pageContext.request.contextPath }/" />


<script>
	alert('������ �Ϸ�ƽ��ϴ�')
	location.href='${root}product/cart'
</script>