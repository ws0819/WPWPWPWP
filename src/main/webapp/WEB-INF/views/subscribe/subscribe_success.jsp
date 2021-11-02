<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath }/"/>

<script>
   alert('리뷰가 등록되었습니다 올라갔습니다')
   location.href="${root}subscribe/subscribe_review"
</script>