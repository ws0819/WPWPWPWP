<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ORDER</title>
</head>
<body>
<div>
	<table>
		<tr>
			<td>ORDER_NUMBER &nbsp; &nbsp;</td>
			<td>ORDER_ID &nbsp; &nbsp;</td>
			<td>ORDER_DATE &nbsp; &nbsp;</td>
			<td>ORDER_NAME &nbsp; &nbsp;</td>
			<td>ORDER_ADDRESS &nbsp; &nbsp;</td>
			<td>ORDER_EMAIL &nbsp; &nbsp;</td>
			<td>ORDER_MAESSAGE &nbsp; &nbsp;</td>
			<td>ORDER_TEL &nbsp; &nbsp;</td>
		</tr>
		<c:forEach var="obj" items="${productOrderBean }">
			<tr>
				<td>${obj.order_number } &nbsp; &nbsp;</td>
				<td>${obj.order_id } &nbsp; &nbsp;</td>
				<td>${obj.order_date } &nbsp; &nbsp;</td>
				<td>${obj.order_name } &nbsp; &nbsp;</td>
				<td>${obj.postcode } ${obj.roadAddress } ${obj.jibunaddress }&nbsp; &nbsp;</td>
				<td>${obj.order_email } &nbsp; &nbsp;</td>
				<td>${obj.order_message } &nbsp; &nbsp;</td>
				<td>${obj.order_tel } &nbsp; &nbsp;</td>
			</tr>		
		</c:forEach>
	</table>
</div>
</body>
</html>