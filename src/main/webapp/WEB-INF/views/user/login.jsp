<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
      <link rel="stylesheet" href="../assets/css/main.css" />
      <link rel="stylesheet" href="../user_boot/css/user.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> 

</head>
<body>
   <c:import url="/WEB-INF/views/include/top_menu.jsp" />
   <div class="wrap">
   <c:if test="${fail==true}">
				<script>
				alert('아이디와 비밀번호를 확인해주세요')
				</script>
					</c:if>
<form:form action="${root }user/login_pro" method="post" modelAttribute="tempLoginUserBean" class="signUp" id="signupForm">

   <h1 class="signUpTitle">WINE EASY 로그인</h1>
             <div class="social-icons">
                    <a href="https://accounts.kakao.com/login?continue=https%3A%2F%2Fcs.kakao.com%2Fhelps%3Fcategory%3D25"><img src="../user_boot/css/image/kk.png" alt="kakao"></a>
                    <a href=https://nid.naver.com/nidlogin.login?mode=form&url=https%3A%2F%2Fwww.naver.com><img src="../user_boot/css/image/na.png" alt="naver"></a>
                    <a href=https://accounts.google.com/ServiceLogin/signinchooser?hl=ko&passive=true&continue=https%3A%2F%2Fwww.google.com%2F%3Fhl%3Dko&ec=GAZAmgQ&flowName=GlifWebSignIn&flowEntry=ServiceLogin><img src="../user_boot/css/image/gl.png" alt="google">
                    </a>    
  </div>
          
    <form:label path="user_id" style='color:white'>아이디</form:label>            
   <form:input path="user_id"  class="signUpInput" />
   <form:errors path="user_id" style='color:red'/>
  
   <form:label path="user_pw" style='color:white'>비밀번호</form:label>
   <form:password path="user_pw"  class="signUpInput"/>
   <form:errors path="user_pw" style='color:red'/>
   
   <form:button class="loginButton">로그인</form:button>
   <button type="button" class="loginButton" onclick="location.href='${root}user/join'">회원가입</button>
</form:form>
  <c:import url="/WEB-INF/views/include/bottom_info.jsp" />
   </div>
 

</body>
</html>