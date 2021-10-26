<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var='root' value="${pageContext.request.contextPath }/"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>notice_write</title>
</head>
<body>
<h3>notice_write</h3>
	<div>

 <%-- <form:form action="${root }faq/faq_write_pro" modelAttribute="faqContentBean" method="post" >
 		<form:hidden path="faq_number"/>
                     <div class="fields">
                        <div class="field half">
                           <form:input path="faq_username" placeholder="Name" />
                        </div>
                        <div class="field half">
                           <form:input path="faq_email" placeholder="Email" />
                        </div>
                        <div class="field">
                           <form:textarea path="faq_message" placeholder="Message" rows="6"></form:textarea>
                        </div>
                     </div>
                     <ul class="actions special">
                        <li><form:button>send</form:button></li>
                        
                     </ul>
                  </form:form>  --%>
                  
	</div>
</body>
</html>