<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SUBSCRIBE</title>
</head>
<body>
<div>
	<table>
		<tr>
			<td>SUBSCRIBE_NUMBER &nbsp; &nbsp;</td>
			<td>GRADE &nbsp; &nbsp;</td>
			<td>SOMMLIER &nbsp; &nbsp;</td>
			<td>DATE &nbsp; &nbsp;</td>
			<td>ENDDATE &nbsp; &nbsp;</td>
			<td>USER_ID &nbsp; &nbsp;</td>
			<td>USER_NUMBER &nbsp; &nbsp;</td>
		</tr>
		<c:forEach var="obj" items="${subscribeBean }">
			<tr>
				<td>${obj.subscribe_number } &nbsp; &nbsp;</td>
				<td>${obj.subscribe_grade } &nbsp; &nbsp;</td>
				<td>${obj.subscribe_sommliernumber } &nbsp; &nbsp;</td>
				<td>${obj.subscribe_date } &nbsp; &nbsp;</td>
				<td>${obj.subscribe_enddate } &nbsp; &nbsp;</td>
				<td>${obj.user_id } &nbsp; &nbsp;</td>
				<td>${obj.user_number } &nbsp; &nbsp;</td>
			</tr>		
		</c:forEach>
	</table>
</div>
</body>
</html>