<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>user_log</title>
</head>
<body>
<div>
	<table>
		<tr>
			<td>NUMBER &nbsp; &nbsp;</td>
			<td>ID &nbsp; &nbsp;</td>
			<td>NAME &nbsp; &nbsp;</td>
			<td>TEL &nbsp; &nbsp;</td>
			<td>ADDRESS &nbsp; &nbsp;</td>
			<td>EMAIL &nbsp; &nbsp;</td>
			<td>CUS_DATE &nbsp; &nbsp;</td>
			<td>WORKED &nbsp; &nbsp;</td>
		</tr>
		<c:forEach var="obj" items="${userLogBean }">
			<tr>
				<td>${obj.user_number } &nbsp; &nbsp;</td>
				<td>${obj.user_id } &nbsp; &nbsp;</td>
				<td>${obj.user_name } &nbsp; &nbsp;</td>
				<td>${obj.user_tel } &nbsp; &nbsp;</td>
				<td>${obj.user_address } &nbsp; &nbsp;</td>
				<td>${obj.user_email } &nbsp; &nbsp;</td>
				<td>${obj.cus_date } &nbsp; &nbsp;</td>
				<td>${obj.worked } &nbsp; &nbsp;</td>
			</tr>		
		</c:forEach>
	</table>
</div>
</body>
</html>